const std = @import("std");

pub fn hello() []const u8 {
    return "Hello, World!";
}

pub fn main() void {
    std.debug.print(hello() ++ "\n", .{});
}
