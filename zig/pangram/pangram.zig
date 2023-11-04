const std = @import("std");
const ascii = std.ascii;

pub fn isPangram(str: []const u8) bool {
    const ordinala = 97; // 'a'
    const ordinalz = 122; // 'z'
    const ordinalA = 65; // 'A'
    const ordinalZ = 90; // 'Z'

    var alphabetList = [_]bool{false} ** 26;

    for (str) |value| {
        if (value >= ordinala and value <= ordinalz or value >= ordinalA and value <= ordinalZ) {
            alphabetList[ascii.toLower(value) - ordinala] = true;
        }
    }

    for (alphabetList) |value| {
        if (value == false) return false;
    }
    return true;
}
