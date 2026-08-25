pub fn isPangram(str: []const u8) bool {
    var flags: u32 = 0;
    for (str) |c| {
        const u = if (c >= 'a' and c <= 'z') c - 32 else c;
        if (u >= 'A' and u <= 'Z') {
            flags |= @as(u32, 1) << @intCast(u - 'A');
        }
    }
    return flags == ((1 << 26) - 1);
}
