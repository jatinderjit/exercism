pub const ChessboardError = error{IndexOutOfBounds};

var memo: [65]?u64 = @splat(null);

pub fn square(index: usize) ChessboardError!u64 {
    if (index == 0 or index > 64) return ChessboardError.IndexOutOfBounds;
    if (index == 1) return 1;
    return memo[index] orelse blk: {
        const val = 2 * (square(index - 1) catch unreachable);
        memo[index] = val;
        break :blk val;
    };
}

pub fn total() u64 {
    var grains: u64 = 0;
    for (1..65) |i| {
        grains += square(i) catch unreachable;
    }
    return grains;
}
