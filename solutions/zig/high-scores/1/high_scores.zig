const std = @import("std");

var buffer: [4]i32 = undefined;

pub const HighScores = struct {
    scores: std.ArrayList(i32) = std.ArrayList(i32).initBuffer(&buffer),
    last: ?i32 = null,

    pub fn init(scores: []const i32) HighScores {
        var hs: HighScores = .{};
        for (scores) |score| {
            hs.scores.appendAssumeCapacity(score);
            std.mem.sort(i32, hs.scores.items, {}, std.sort.desc(i32));
            if (hs.scores.items.len == 4) {
                _ = hs.scores.pop();
            }
            hs.last = score;
        }
        return hs;
    }

    pub fn latest(self: *const HighScores) ?i32 {
        return self.last;
    }

    pub fn personalBest(self: *const HighScores) ?i32 {
        return if (self.scores.items.len == 0) null else self.scores.items[0];
    }

    pub fn personalTopThree(self: *const HighScores) []const i32 {
        return self.scores.items;
    }
};
