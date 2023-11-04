const std = @import("std");

pub fn isLeapYear(year: u32) bool {
    var result: bool = false;
    if (mod(year, 400) == 0) {
        result = true;
    } else if (mod(year, 4) == 0 and mod(year, 100) != 0) {
        result = true;
    }
    return result;
}

fn mod(numerator: u32, denominator: u32) u32 {
    return @rem(numerator, denominator);
}
