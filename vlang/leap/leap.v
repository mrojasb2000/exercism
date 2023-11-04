module main

// is_leap_year returns true if the given year is a leap year in the Gregorian calendar
fn is_leap_year(year int) bool {
	return if year % 400 == 0 { true } else if  year % 4 == 0 && year % 100 != 0 { true } else { false }
}