const std = @import("std");
const fmt = std.fmt;

pub fn convert(buffer: []u8, n: u32) []const u8 {
    var writer = std.Io.Writer.fixed(buffer);
    if (n % 3 == 0) writer.writeAll("Pling") catch unreachable;
    if (n % 5 == 0) writer.writeAll("Plang") catch unreachable;
    if (n % 7 == 0) writer.writeAll("Plong") catch unreachable;
    if (writer.end == 0) writer.print("{}", .{n}) catch unreachable;
    return writer.buffered();
}
