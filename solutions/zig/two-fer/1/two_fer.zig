pub fn twoFer(buffer: []u8, name: ?[]const u8) ![]u8 {
    const ref = name orelse "you";
    @memcpy(buffer[0..8], "One for ");
    @memcpy(buffer[8..(8 + ref.len)], ref);
    @memcpy(buffer[(8 + ref.len)..(21 + ref.len)], ", one for me.");
    return buffer[0..(21 + ref.len)];
}
