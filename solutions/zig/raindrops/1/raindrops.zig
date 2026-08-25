const std = @import("std");
const fmt = std.fmt;

pub fn convert(buffer: []u8, n: u32) []const u8 {
    var i: usize = 0;

    if (n % 3 == 0) {
        @memcpy(buffer[0..5], "Pling");
        i = 5;
    }

    if (n % 5 == 0) {
        @memcpy(buffer[i .. i + 5], "Plang");
        i += 5;
    }

    if (n % 7 == 0) {
        @memcpy(buffer[i .. i + 5], "Plong");
        i += 5;
    }

    if (i == 0) {
        return fmt.bufPrint(buffer, "{}", .{n}) catch "";
    }

    return buffer[0..i];
}
