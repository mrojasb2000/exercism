const std = @import("std");

pub fn main() !void {
    std.debug.print("{}\n", .{@divTrunc(1, 2)});
}
