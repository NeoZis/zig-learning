const std = @import("std");

pub fn main() !void {
    const stdin = std.io.getStdIn();
    const stdout = std.io.getStdOut().writer();

    var lol: [20]u8 = undefined;

    try stdout.print("Please enter first number:\n", .{});
    const amt = try stdin.reader().readUntilDelimiter(&lol, '\n');

    const number = try std.fmt.parseInt(u8, amt, 10);

    try stdout.print("Please enter second number:\n", .{});
    const amt2 = try stdin.reader().readUntilDelimiter(&lol, '\n');

    const number2 = try std.fmt.parseInt(u8, amt2, 10);
    try stdout.print("You entered {d} and {d}\n", .{ number, number2 });

    try stdout.print("Please enter operation: +, -, / or *:\n", .{});

    var operation: [10]u8 = undefined;
    const operation_buf = try stdin.reader().readUntilDelimiter(&operation, '\n');

    try stdout.print("You entered operation {s}\n", .{operation_buf});
}
