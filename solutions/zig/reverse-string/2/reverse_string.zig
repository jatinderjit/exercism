pub fn reverse(buffer: []u8, s: []const u8) []u8 {
    const n = s.len;
    for (1.., s) |i, c| buffer[n - i] = c;
    return buffer[0..n];
}
