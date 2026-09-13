const std = @import("std");

pub fn isArmstrongNumber(num: u128) bool {
    var digits: [40]u128 = undefined;
    var n = num;
    var i: usize = 0;
    while (n > 0): ({ n /= 10; i += 1; }) {
        digits[i] = n % 10;
    }
    var sum: u128 = 0;
    var j: usize = 0;
    while (j < i): (j += 1) {
        sum += std.math.pow(u128, digits[j], i);
    }
    return sum == num;
}
