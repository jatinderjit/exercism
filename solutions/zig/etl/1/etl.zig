const std = @import("std");
const mem = std.mem;

pub fn transform(allocator: mem.Allocator, legacy: std.AutoHashMap(i5, []const u8)) mem.Allocator.Error!std.AutoHashMap(u8, i5) {
    var out = std.AutoHashMap(u8, i5).init(allocator);
    var it = legacy.iterator();
    while (it.next()) |entry| {
        const points = entry.key_ptr.*;
        const chars = entry.value_ptr.*;
        for (chars) |c| try out.put(std.ascii.toLower(c), points);
    }
    return out;
}
