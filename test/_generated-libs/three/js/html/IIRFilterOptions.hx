package js.html;
extern interface IIRFilterOptions extends AudioNodeOptions {
	var feedback : std.Array<Float>;
	var feedforward : std.Array<Float>;
}