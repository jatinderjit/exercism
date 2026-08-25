const std = @import("std");

pub fn reverse(buffer: []u8, s: []const u8) []u8 {
    var writer = std.Io.Writer.fixed(buffer);
    var i = s.len;
    while (i > 0): (i -= 1) {
        writer.writeByte(s[i - 1]) catch unreachable;
    }
    return writer.buffered();
}
