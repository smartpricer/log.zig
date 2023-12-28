const logz = @import("logz.zig");

pub const Config = struct {
	pool_size: usize = 32,
	max_size: usize = 4096,
	level: logz.Level = .Info,
	prefix: ?[]const u8 = null,
	output: Output = .stdout,
	encoding: Encoding = .logfmt,

	const Output = enum {
		stdout,
		stderr,
	};

	const Encoding = enum {
		json,
		logfmt,
	};
};
