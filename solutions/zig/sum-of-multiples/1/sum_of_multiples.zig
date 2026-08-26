const std = @import("std");
const mem = std.mem;

pub fn sum(allocator: mem.Allocator, factors: []const u32, limit: u32) !u64 {
    var map = std.AutoHashMap(u32, void).init(allocator);
    defer map.deinit();

    for (factors) |f| {
        if (f == 0) continue;

        var s = f;
        while (s < limit) : (s += f) {
            try map.put(s, {});
        }
    }
    var score: u64 = 0;
    var it = map.keyIterator();
    while (it.next()) |s| score += s.*;
    return score;
}
