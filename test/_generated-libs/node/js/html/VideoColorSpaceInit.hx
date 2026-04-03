package js.html;

typedef VideoColorSpaceInit = {
	@:optional
	var fullRange : Bool;
	@:optional
	var matrix : VideoMatrixCoefficients;
	@:optional
	var primaries : VideoColorPrimaries;
	@:optional
	var transfer : VideoTransferCharacteristics;
};