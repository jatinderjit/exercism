const std = @import("std");

pub const ColorBand = enum(usize) {
    black,
    brown,
    red,
    orange,
    yellow,
    green,
    blue,
    violet,
    grey,
    white,
};

pub fn colorCode(colors: [2]ColorBand) usize {
    return 10 * @intFromEnum(colors[0]) + @intFromEnum(colors[1]);
}
