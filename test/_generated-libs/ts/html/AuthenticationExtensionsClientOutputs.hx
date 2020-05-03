package ts.html;
typedef AuthenticationExtensionsClientOutputs = {
	@:optional
	var appid : Bool;
	@:optional
	var authnSel : Bool;
	@:optional
	var exts : AuthenticationExtensionsSupported;
	@:optional
	var loc : Coordinates;
	@:optional
	var txAuthGeneric : ts.lib.IArrayBuffer;
	@:optional
	var txAuthSimple : String;
	@:optional
	var uvi : ts.lib.IArrayBuffer;
	@:optional
	var uvm : UvmEntries;
};