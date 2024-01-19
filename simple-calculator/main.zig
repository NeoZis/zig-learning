const std = @import("std");

pub fn main() !void {
    var firstArgument: [5]u8 = undefined;
    var secondArgument: [5]u8 = undefined;
    const stdin = std.io.getStdIn().reader();
    const stdout = std.io.getStdOut().writer();

    try stdout.print("Please enter first number:", .{});
    _ = try stdin.readUntilDelimiter(&firstArgument, '\n');
    try stdout.print("Please enter second number:", .{});
    _ = try stdin.readUntilDelimiter(&secondArgument, '\n');
    const firstNumber = try std.fmt.parseInt(i32, firstArgument, 10);
    const secondNumber = try std.fmt.parseInt(i32, secondArgument, 10);

    try stdout.print("The user entered: {s} and {s} \n", .{ firstNumber, secondNumber });
    try stdout.print("The sum is: {s} \n", .{firstNumber + secondNumber});
}
