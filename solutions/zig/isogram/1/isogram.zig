pub fn isIsogram(str: []const u8) bool {
    var seen = [_]bool{false} ** 256;
    for (str) |ch| {
        if (ch == ' ' or ch == '-') continue;

        const upper = if (ch >= 'a' and ch <= 'z') ch - 32 else ch;
        if (seen[upper]) {
            return false;
        }
        seen[upper] = true;
    }
    return true;
}
