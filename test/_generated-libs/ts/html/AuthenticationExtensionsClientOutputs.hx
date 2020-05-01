package ts.html;
typedef AuthenticationExtensionsClientOutputs = {
	@:optional
	var appid : Bool;
	@:optional
	var authnSel : Bool;
	@:optional
	var exts : std.Array<String>;
	@:optional
	var loc : Coordinates;
	@:optional
	var txAuthGeneric : ts.lib.IArrayBuffer;
	@:optional
	var txAuthSimple : String;
	@:optional
	var uvi : ts.lib.IArrayBuffer;
	@:optional
	var uvm : std.Array<std.Array<Float>>;
};