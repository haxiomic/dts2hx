package js.html;
extern typedef PeriodicWaveOptions = PeriodicWaveConstraints & { @:optional
	var imag : haxe.extern.EitherType<js.lib.Float32Array, std.Array<Float>>; @:optional
	var real : haxe.extern.EitherType<js.lib.Float32Array, std.Array<Float>>; };