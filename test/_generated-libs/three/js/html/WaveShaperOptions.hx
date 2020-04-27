package js.html;
extern typedef WaveShaperOptions = AudioNodeOptions & { @:optional
	var curve : haxe.extern.EitherType<js.lib.Float32Array, std.Array<Float>>; @:optional
	var oversample : String; };