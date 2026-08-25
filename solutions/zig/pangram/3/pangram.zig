const std = @import("std");

pub fn isPangram(str: []const u8) bool {
    var bits = std.StaticBitSet(26).initEmpty();
    for (str) |c| {
        if (!std.ascii.isAlphabetic(c)) continue;
        bits.set(std.ascii.toUpper(c) - 'A');
    }
    return bits.count() == 26;
}
