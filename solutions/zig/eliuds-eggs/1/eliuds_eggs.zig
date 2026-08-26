pub fn eggCount(number: usize) usize {
    var bits: usize = 0;
    var n = number;
    while (n > 0): (n >>= 1) {
        if (n & 1 == 1) {
            bits += 1;
        }
    }
    return bits;
}
