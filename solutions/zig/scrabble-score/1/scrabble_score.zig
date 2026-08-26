const toUpper = @import("std").ascii.toUpper;

const scores = blk: {
    var s: [26]u32 = undefined;
    for ("AEIOULNRST") |c| s[c - 'A'] = 1;
    for ("DG") |c| s[c - 'A'] = 2;
    for ("BCMP") |c| s[c - 'A'] = 3;
    for ("FHVWY") |c| s[c - 'A'] = 4;
    s['K' - 'A'] = 5;
    for ("JX") |c| s[c - 'A'] = 8;
    for ("QZ") |c| s[c - 'A'] = 10;
    break :blk s;
};

pub fn score(s: []const u8) u32 {
    var total: u32 = 0;
    for (s) |c| total += scores[toUpper(c) - 'A'];
    return total;
}
