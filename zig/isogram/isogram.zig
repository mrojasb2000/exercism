const std = @import("std");

pub fn isIsogram(str: []const u8) bool {
    const ordinala = 97; // 'a'
    const ordinalz = 122; // 'z'
    const ordinalA = 65; // 'A'
    const ordinalZ = 90; // 'Z'

    var alphabetList = [_]bool{false} ** 26;

    for (str) |value| {
        if (value >= ordinala and value <= ordinalz or value >= ordinalA and value <= ordinalZ) {
            var pos = std.ascii.toLower(value) - ordinala;

            if (alphabetList[pos] == false) {
                alphabetList[pos] = true;
            } else {
                return false;
            }
        }
    }
    return true;
}
