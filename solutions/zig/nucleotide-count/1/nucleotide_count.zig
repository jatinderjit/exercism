pub const NucleotideError = error{Invalid};

pub const Counts = struct {
    a: u32,
    c: u32,
    g: u32,
    t: u32,
};

pub fn countNucleotides(s: []const u8) NucleotideError!Counts {
    var counts: Counts = .{.a = 0, .c = 0, .g = 0, .t = 0};
    for (s) |c| {
        if (c == 'A') {
            counts.a += 1;
        } else if (c == 'C') {
            counts.c += 1;
        } else if (c == 'G') {
            counts.g += 1;
        } else if (c == 'T') {
            counts.t += 1;
        } else {
            return NucleotideError.Invalid;
        }
    }
    return counts;
}
