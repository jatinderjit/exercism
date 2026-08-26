const std = @import("std");
const mem = std.mem;

pub fn abbreviate(allocator: mem.Allocator, words: []const u8) mem.Allocator.Error![]u8 {
    var list: std.ArrayList(u8) = .empty;

    var new = true;
    for (words) |c| {
        if (c == ' ' or c == '-') {
            new = true;
            continue;
        }
        const ch = std.ascii.toUpper(c);
        if (new and ch >= 'A' and ch <= 'Z') {
            try list.append(allocator, ch);
            new = false;
        }
    }
    return list.toOwnedSlice(allocator);
}
