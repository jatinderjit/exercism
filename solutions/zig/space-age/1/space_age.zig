pub const Planet = enum {
    mercury,
    venus,
    earth,
    mars,
    jupiter,
    saturn,
    uranus,
    neptune,

    const factors = [_]f64{ 0.2408467, 0.61519726, 1.0, 1.8808158, 11.862615, 29.447498, 84.016846, 164.79132 };

    pub fn age(self: Planet, seconds: usize) f64 {
        const f = factors[@intFromEnum(self)];
        return @as(f64, @floatFromInt(seconds)) / 24 / 3600 / 365.25 / f;
    }
};
