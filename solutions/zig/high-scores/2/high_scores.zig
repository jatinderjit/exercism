const std = @import("std");

pub const HighScores = struct {
    scores: [4]i32 = @splat(std.math.minInt(i32)),
    count: usize = 0,
    last: ?i32 = null,

    pub fn init(scores: []const i32) HighScores {
        var hs: HighScores = .{};
        for (scores) |score| {
            hs.record(score);
        }
        return hs;
    }

    inline fn record(self: *HighScores, score: i32) void {
        self.scores[self.count] = score;
        if (self.count < 3) {
            self.count += 1;
        }
        std.mem.sort(i32, &self.scores, {}, std.sort.desc(i32));
        self.last = score;
    }

    pub fn latest(self: *const HighScores) ?i32 {
        return self.last;
    }

    pub fn personalBest(self: *const HighScores) ?i32 {
        return if (self.count == 0) null else self.scores[0];
    }

    pub fn personalTopThree(self: *const HighScores) []const i32 {
        return self.scores[0..self.count];
    }
};
