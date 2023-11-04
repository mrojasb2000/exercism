const std = @import("std");

pub fn isArmstrongNumber(num: u128) bool {
    const digits = order(num);
    var temp = num;
    var sum1: u128 = 0;

    while (temp != 0) {
        var last = @mod(temp, 10);
        sum1 += std.math.pow(u128, last, digits);
        temp = @divTrunc(temp, 10);
    }

    return (sum1 == num);
}

fn order(num: u128) u128 {
    var digits: u128 = 0;
    var value: u128 = num;
    while (value != 0) {
        digits += 1;
        value = @divTrunc(value, 10);
    }
    return digits;
}
