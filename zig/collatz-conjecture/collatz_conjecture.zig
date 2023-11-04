pub fn steps(number: usize) anyerror!usize {
    if (number == 0) return error.IllegalArgument;
    var count: usize = 0;
    var n: usize = number;
    while (n > 1) {
        if (isEven(n)) {
            n = n / 2;
        } else if (isOdd(n)) {
            n = n * 3 + 1;
        }
        count += 1;
    }
    return count;
}
pub const ComputationError = error{IllegalArgument};

fn mod(numerator: usize, denominator: usize) usize {
    return @rem(numerator, denominator);
}

fn isEven(number: usize) bool {
    return mod(number, 2) == 0;
}

fn isOdd(number: usize) bool {
    return mod(number, 2) != 0;
}
