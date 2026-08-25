pub fn isPangram(str: []const u8) bool {
    var present: [26]bool = @splat(false);
    for (str) |c| {
        const u = if (c >= 'a' and c <= 'z') c - 32 else c;
        if (u >= 'A' and u <= 'Z') {
            present[u - 'A'] = true;
        }
    }
    for (present) |p| {
        if (!p) return false;
    }
    return true;
}
