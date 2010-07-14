//
//    Brainslug is a media center application.
//    Copyright (C) 2009 Benjamin Prucha
//
//    This program is free software: you can redistribute it and/or modify
//    it under the terms of the GNU General Public License as published by
//    the Free Software Foundation, either version 3 of the License, or
//    (at your option) any later version.
//
//    This program is distributed in the hope that it will be useful,
//    but WITHOUT ANY WARRANTY; without even the implied warranty of
//    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//    GNU General Public License for more details.
//
//    You should have received a copy of the GNU General Public License
//    along with this program.  If not, see <http://www.gnu.org/licenses/>.

#import "MenuView.h"
#import <QTKit/QTKit.h>

@interface MenuView ()
- (CALayer *)highlightLayer;
- (CAScrollLayer *)scrollLayer;
- (CALayer *)menuLayer;
- (void)selectItemAt:(NSNumber *)index;
- (NSArray *)menuItemsFromNames:(NSArray *)itemNames;
- (CATextLayer *)textLayerForName:(NSString *)itemName;
@end


@implementation MenuView

@synthesize offset;

- (void)awakeFromNib
{
	offset = 10.0f;
	QCCompositionLayer* layer = [QCCompositionLayer compositionLayerWithFile:[[NSBundle mainBundle] pathForResource:@"Background" ofType:@"qtz"]];
	layer.name = @"root";
	layer.layoutManager = [CAConstraintLayoutManager layoutManager];
	[self setLayer: layer];
	[self setWantsLayer: YES];
	[[self window] makeFirstResponder: self];
}

-(void)reinitializeMenuWithEntries: (NSArray*)entries
{
	_entries = entries;

	for (CALayer *layer in self.layer.sublayers) {
		[layer removeFromSuperlayer];
	};

	[self.layer addSublayer: [self scrollLayer]];
	
	[self performSelectorOnMainThread: @selector(selectItemAt:) 
						   withObject: [NSNumber numberWithInteger: 0] 
						waitUntilDone: NO];	
}

- (CALayer *)highlightLayer
{
	if(nil == highlightLayer) {
		highlightLayer = [CALayer layer];

		highlightLayer.borderWidth = 2.0;
		highlightLayer.borderColor = CGColorCreateGenericRGB(1.0f,1.0f,1.0f,1.0f);
		highlightLayer.cornerRadius = 5;
		highlightLayer.masksToBounds = YES;

		[highlightLayer addConstraint: [CAConstraint constraintWithAttribute: kCAConstraintWidth
																  relativeTo: @"superlayer" 
																   attribute: kCAConstraintWidth]];
		
		[highlightLayer addConstraint: [CAConstraint constraintWithAttribute: kCAConstraintHeight
																  relativeTo: @"superlayer" 
																   attribute: kCAConstraintHeight]];
		
		[highlightLayer addConstraint: [CAConstraint constraintWithAttribute: kCAConstraintMinX
																  relativeTo: @"superlayer" 
																   attribute: kCAConstraintMinX]];
		
		[highlightLayer addConstraint: [CAConstraint constraintWithAttribute: kCAConstraintMinY
																  relativeTo: @"superlayer" 
																   attribute: kCAConstraintMinY]];


		CIFilter *filter = [CIFilter filterWithName:@"CIBloom"];
		[filter setDefaults];
		[filter setValue:[NSNumber numberWithFloat:5.0] forKey:@"inputRadius"];
		[filter setName:@"pulseFilter"];

		[highlightLayer setFilters:[NSArray arrayWithObject:filter]];

		CABasicAnimation* pulseAnimation = [CABasicAnimation animation];
		pulseAnimation.keyPath = @"filters.pulseFilter.inputIntensity";
		pulseAnimation.fromValue = [NSNumber numberWithFloat: 0.0];
		pulseAnimation.toValue = [NSNumber numberWithFloat: 1.5];
		pulseAnimation.duration = 1.0;
		pulseAnimation.repeatCount = 1e100f;
		pulseAnimation.autoreverses = YES;
		pulseAnimation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];

		[highlightLayer addAnimation:pulseAnimation forKey:@"pulseAnimation"];
	}
	
	return highlightLayer;
}

- (void)selectItemAt:(NSNumber *)index
{
	CAScrollLayer *scrollLayer = [[self.layer sublayers] objectAtIndex:0];
	CALayer *menuLayer = [[scrollLayer sublayers] objectAtIndex:0];
	NSInteger value = [index intValue];
	
	if(value < 0) {
		value = [[menuLayer sublayers] count] - 1;
	} else if (value >= [[menuLayer sublayers] count]) {
		value = 0;
	}

	[scrollLayer setValue:[NSNumber numberWithInteger:value] forKey:@"selectedItem"];

	CALayer *itemLayer = [[menuLayer sublayers] objectAtIndex:value];
	
	// make sure its scrolled to visible
	[itemLayer scrollRectToVisible:itemLayer.bounds];
	// add the highlight layer
	[itemLayer insertSublayer: [self highlightLayer] atIndex:0];
}

- (void)selectNext
{
	CAScrollLayer *scrollLayer = [[self.layer sublayers] objectAtIndex:0];
	NSNumber *selectedIndex = [scrollLayer valueForKey:@"selectedItem"];
	[self selectItemAt: [NSNumber numberWithInteger: [selectedIndex intValue] + 1]];
}

- (void)selectPrevious
{
	CAScrollLayer *scrollLayer = [[self.layer sublayers] objectAtIndex:0];
	NSNumber *selectedIndex = [scrollLayer valueForKey:@"selectedItem"];
	[self selectItemAt: [NSNumber numberWithInteger: [selectedIndex intValue] - 1]];
}    

- (CAScrollLayer *)scrollLayer
{
	CAScrollLayer *scrollLayer = [CAScrollLayer layer];
	scrollLayer.name = @"scroll";
	scrollLayer.layoutManager = [CAConstraintLayoutManager layoutManager];
	[scrollLayer addConstraint: [CAConstraint constraintWithAttribute: kCAConstraintMidX 
														   relativeTo: @"superlayer" 
															attribute: kCAConstraintMidX]];
	
	[scrollLayer addConstraint: [CAConstraint constraintWithAttribute: kCAConstraintWidth 
														   relativeTo: @"superlayer" 
															attribute: kCAConstraintWidth
																scale: 0.5
															   offset: 0]];

//	[scrollLayer addConstraint: [CAConstraint constraintWithAttribute: kCAConstraintMaxX 
//														   relativeTo: @"superlayer" 
//															attribute: kCAConstraintMaxX]];
	
	[scrollLayer addConstraint: [CAConstraint constraintWithAttribute: kCAConstraintMinY 
														   relativeTo: @"superlayer" 
															attribute: kCAConstraintMinY
																scale: 1.0
															   offset: 20]];
	
	[scrollLayer addConstraint: [CAConstraint constraintWithAttribute: kCAConstraintMaxY 
														   relativeTo: @"superlayer" 
															attribute: kCAConstraintMaxY
																scale: 1.0
															   offset: -50]];
	
	[scrollLayer addSublayer:[self menuLayer]];
	return scrollLayer;
}

- (CATextLayer *)textLayerForName:(NSString *)itemName
{
	CATextLayer *textLayer = [CATextLayer layer];
	textLayer.string = itemName;
	textLayer.name = itemName;
	textLayer.foregroundColor = CGColorCreateGenericRGB(1.0,1.0,1.0,1.0);
	textLayer.font = @"Lucida-Grande";
	textLayer.alignmentMode = kCAAlignmentLeft;
	[textLayer addConstraint:
	 [CAConstraint constraintWithAttribute:kCAConstraintMidY 
								relativeTo:@"superlayer"
								 attribute:kCAConstraintMidY]];
	[textLayer addConstraint:
	 [CAConstraint constraintWithAttribute:kCAConstraintMinX 
								relativeTo:@"superlayer"
								 attribute:kCAConstraintMinX 
									offset:self.offset/2.0f]];
	return textLayer;
}    

- (NSArray *)menuItemsFromNames:(NSArray *)items
{
	NSMutableArray *menuItems = [NSMutableArray array];
	int counter = 0;
	for(NSManagedObject *item in items) {
		NSString *itemName = [ item valueForKey: @"name" ];
		CATextLayer *textLayer = [self textLayerForName: itemName];
		CALayer *layer = [CALayer layer];
		layer.name = itemName;
		layer.layoutManager = [CAConstraintLayoutManager layoutManager];
		
		CGSize preferredFrameSize = textLayer.preferredFrameSize;
		[layer setValue:[NSValue valueWithSize:*(NSSize*)&preferredFrameSize] 
			 forKeyPath:@"frame.size"];
		[layer addSublayer:textLayer];
		
		[layer addConstraint:
		 [CAConstraint constraintWithAttribute:kCAConstraintMidX 
									relativeTo:@"superlayer"
									 attribute:kCAConstraintMidX]];
		[layer addConstraint:
		 [CAConstraint constraintWithAttribute:kCAConstraintWidth 
									relativeTo:@"superlayer" 
									 attribute:kCAConstraintWidth 
										offset:-2.2 * self.offset]];
		if(counter == 0) {
			[layer addConstraint:
			 [CAConstraint constraintWithAttribute:kCAConstraintMaxY
										relativeTo:@"superlayer" 
										 attribute:kCAConstraintMaxY]];
		} else {
			NSString *previousLayerName = [ [items objectAtIndex:counter - 1] valueForKey: @"name" ];
			[layer addConstraint:
			 [CAConstraint constraintWithAttribute:kCAConstraintMaxY 
										relativeTo:previousLayerName
										 attribute:kCAConstraintMinY 
											offset:-self.offset]];
		}

		[menuItems addObject:layer];
		counter++;
	}
	return menuItems;
}

- (CALayer *)menuLayer
{
	CALayer *menu = [CALayer layer];
	menu.name = @"menu";
	[menu addConstraint:
	 [CAConstraint constraintWithAttribute:kCAConstraintWidth
								relativeTo:@"superlayer" 
								 attribute:kCAConstraintWidth]];
	[menu addConstraint:
	 [CAConstraint constraintWithAttribute:kCAConstraintMidX 
								relativeTo:@"superlayer" 
								 attribute:kCAConstraintMidX]];
	
	menu.layoutManager = [CAConstraintLayoutManager layoutManager];

	NSArray *items = [self menuItemsFromNames: _entries];
	if ([items count])
	{
		CGFloat height = self.offset;
		for(CALayer *itemLayer in items) {
			height += itemLayer.preferredFrameSize.height + self.offset;
		}
		[menu setValue: [NSNumber numberWithFloat: height] 
			forKeyPath: @"frame.size.height"];
		[menu setSublayers: items];		
	}
	return menu;
}    

-(void)moveUp:(id)sender
{
    [self selectPrevious];
}

-(void)moveDown:(id)sender
{
	[self selectNext];
}

-(void)enterFullscreenMode:(id)sender
{
	if (!fullscreen)
		[self enterFullScreenMode: [NSScreen mainScreen] withOptions: [NSDictionary dictionaryWithObjectsAndKeys: [NSNumber numberWithBool: YES], NSFullScreenModeAllScreens, nil]];
	else
		 [self exitFullScreenModeWithOptions: [NSDictionary dictionaryWithObjectsAndKeys: [NSNumber numberWithBool: YES], NSFullScreenModeAllScreens, nil]];
}

-(void)chooseSelectedItem {
	// select this movie. do stuff with it.
	CAScrollLayer *scrollLayer = [[self.layer sublayers] objectAtIndex:0];
	NSNumber *selectedIndex = [scrollLayer valueForKey:@"selectedItem"];
	NSManagedObject *entry = [ _entries objectAtIndex: [ selectedIndex unsignedIntegerValue ] ];
	// open the first file for the selected entry
	NSSet *mediaFiles = [entry mutableSetValueForKey: @"mediaFiles"];
	NSString *filePath = [[[mediaFiles objectEnumerator] nextObject] valueForKey:@"path"];
	NSError *error = nil;
	QTMovie* movie = [ QTMovie movieWithFile: filePath error: &error ];
	if (error) {
		NSLog( @"Error occurred trying to create QtMovie instance from filepath %@: %@", filePath, [error description] );
		return;
	}
	[ _testQtView setMovie: movie ];
	[ _testQtView setControllerVisible: NO ];
	[ _testQtWindow makeKeyAndOrderFront: self ];
	[ movie play ];
}

- (void)keyDown:(NSEvent *)theEvent {
	NSString *chars = [ theEvent characters ];
	if ( [ chars characterAtIndex: 0 ] == ' ' ) {
		[ self chooseSelectedItem ];
		return;
	}
	[ super keyDown: theEvent ];
}

- (BOOL)acceptsFirstResponder
{
    return YES;
}

//-(void)dealloc
//{
//    [super dealloc];
//}

@end
