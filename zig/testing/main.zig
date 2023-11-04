const std = @import("std");

pub fn main() !void {
    std.debug.print("{}\n", .{isArmstrong(153)});
    std.debug.print("{}\n", .{isArmstrong(1253)});
}

fn order(x: u64) u64 {
    var digits: u32 = 0;
    var value: u64 = x;
    while (value != 0) {
        digits += 1;
        value = @divTrunc(value, 10);
    }
    return digits;
}

fn isArmstrong(x: u64) bool {
    const digits = order(x);
    var temp = x;
    var sum1: u64 = 0;

    while (temp != 0) {
        var last = @mod(temp, 10);
        sum1 += std.math.pow(u64, last, digits);
        temp = @divTrunc(temp, 10);
    }

    return (sum1 == x);
}
