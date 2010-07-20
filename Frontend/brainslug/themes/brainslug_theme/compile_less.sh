#!/bin/bash

for i in src/*.less; do
  lessc $i src/`basename $i`;
done;



./chance/chance.rb



for i in src/*.css; do
  rm $i;
done;
