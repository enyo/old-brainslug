// -----------------------------------------------------------------------
// pion-common: a collection of common libraries used by the Pion Platform
// -----------------------------------------------------------------------
// Copyright (C) 2007-2008 Atomic Labs, Inc.  (http://www.atomiclabs.com)
//
// Distributed under the Boost Software License, Version 1.0.
// See http://www.boost.org/LICENSE_1_0.txt
//

#ifndef __PION_PIONDATETIME_HEADER__
#define __PION_PIONDATETIME_HEADER__

#include <string>
#include <istream>
#include <ostream>
#include <sstream>
#include <boost/date_time/posix_time/posix_time.hpp>
#include <boost/date_time/gregorian/greg_date.hpp>
#include <pion/PionConfig.hpp>


namespace pion {	// begin namespace pion

	
/// PionDateTime is a typedef for boost::posix_time::ptime
typedef boost::posix_time::ptime	PionDateTime;




///
/// PionTimeFacet: helper class for PionDateTime I/O
///
class PionTimeFacet
{
public:
	
	// Function that converts a ptime into a time_t
	// Note: this is quick & dirty -- does not handle invalid dates,
	//		other calendars, pre-epoch dates, ...
	static inline boost::uint32_t to_time_t(const PionDateTime& t)
	{
		static const boost::posix_time::ptime start(boost::gregorian::date(1970,1,1));
		return (t-start).total_seconds();
	}


	/// default constructor
	PionTimeFacet(void) {}
	
	/// virtual destructor
	virtual ~PionTimeFacet(void) {}

	/**
	 * constructs a new PionTimeFacet object
	 *
	 * @param format the format to use for input and output (see boost::date_time docs)
	 */
	explicit PionTimeFacet(const std::string& format) {
		setFormat(format);
	}

	/// copy constructor
	PionTimeFacet(const PionTimeFacet& f) {
		setFormat(f.getFormat());
	}
	
	/// assignment operator
	PionTimeFacet& operator=(const PionTimeFacet& f) {
		setFormat(f.getFormat());
		return *this;
	}

	/**
	 * read date_time value from an istream using the defined format
	 *
	 * @param input stream to read the value from
	 * @param t will be set to the value read from the input stream
	 */
	template <class charT, class traits>
	inline void read(std::basic_istream<charT,traits>& input, PionDateTime& t) {
		input.imbue(std::locale(input.getloc(), new boost::posix_time::time_input_facet(m_format.c_str())));
		input >> t;
	}

	/**
	 * write date_time value to an output stream using the defined format
	 *
	 * @param output stream to write the value to
	 * @param t the value to write to the stream
	 */
	template <class charT, class traits>
	inline void write(std::basic_ostream<charT,traits>& output, const PionDateTime& t) {
		output.imbue(std::locale(output.getloc(), new boost::posix_time::time_facet(m_format.c_str())));
		output << t;
	}
	
	/**
	 * read date_time value from a string using the defined format
	 *
	 * @param str string to read the value from
	 * @param t will be set to the date_time value read from the string
	 */
	inline void fromString(const std::string& str, PionDateTime& t) {
		m_input_stream.str(str);
		m_input_stream >> t;
	}

	/**
	 * read date_time value from a string using the defined format
	 *
	 * @param str string to read the value from
	 * @param t will be set to the date_time value read from the string
	 */
	inline void fromString(const char *str, PionDateTime& t) {
		m_input_stream.str(str);
		m_input_stream >> t;
	}
	
	/**
	 * read date_time value from a string using the defined format
	 *
	 * @param str string to read the value from
	 * @return result of the date_time value read from the string
	 */
	inline PionDateTime fromString(const std::string& str) {
		PionDateTime t;
		m_input_stream.str(str);
		m_input_stream >> t;
		return t;
	}
	
	/**
	 * read date_time value from a string using the defined format
	 *
	 * @param str string to read the value from
	 * @return result of the date_time value read from the string
	 */
	inline PionDateTime fromString(const char *str) {
		PionDateTime t;
		m_input_stream.str(str);
		m_input_stream >> t;
		return t;
	}
	
	/**
	 * write date_time value to a string using the defined format
	 *
	 * @param str string to write the value to
	 * @param t the date_time value to write to the string
	 */
	inline void toString(std::string& str, const PionDateTime& t) {
		m_output_stream.str("");
		m_output_stream << t;
		str = m_output_stream.str();
	}

	/**
	 * write date_time value to a string using the defined format
	 *
	 * @param t the date_time value to write to the string
	 * @return the date_time value converted into string format
	 */
	inline std::string toString(const PionDateTime& t) {
		m_output_stream.str("");
		m_output_stream << t;
		return m_output_stream.str();
	}

	/// sets the format used for I/O (see boost::date_time docs)
	inline void setFormat(const std::string& format) {
		m_format = format;
		m_input_stream.imbue(std::locale(m_input_stream.getloc(), new boost::posix_time::time_input_facet(m_format.c_str())));
		m_output_stream.imbue(std::locale(m_output_stream.getloc(), new boost::posix_time::time_facet(m_format.c_str())));
	}

	/// returns the format used for I/O
	inline const std::string& getFormat(void) const { return m_format; }

	
private:

	/// the format used for both input and output of date_time objects
	std::string			m_format;
	
	/// a stream used for reading date_time objects from strings
	std::stringstream	m_input_stream;
	
	/// a stream used for writing date_time objects to strings
	std::stringstream	m_output_stream;
};


}	// end namespace pion

#endif

