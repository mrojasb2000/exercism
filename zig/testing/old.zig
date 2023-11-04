const std = @import("std");
const ascii = std.ascii;

pub fn main() !void {
    var aaaa = [_]u8{ 'A', 'a' };
    //const result = isPangram("abcdefghijklmnopqrstuvwxyz");
    std.debug.print("{}\n", .{aaaa[0]});
    std.debug.print("{}\n", .{ascii.toLower(aaaa[0])});

    //const result = isPangram("The quick brown fox jumps over the little lazy dog");

    //const result = isPangram(" ");
    //std.debug.print("{}\n", .{result});
}

fn isPangram(str: []const u8) bool {
    const emptyChar = 32; // " "
    const ordOfCharA = 97; // 'a'
    const ordOfCharAndescord = 95; // _

    var alphabetList = [_]bool{false} ** 26;

    for (str) |value| {
        if (value >= 97 and value <= 122 and value != emptyChar and value != ordOfCharAndescord) {
            alphabetList[value - ordOfCharA] = true;
        }
        //if (value != ordOfCharAndescord) {
        //    alphabetList[value - ordOfCharAndescord] = true;
        //}
    }

    for (alphabetList) |value| {
        if (value == false) return false;
    }
    return true;
}
