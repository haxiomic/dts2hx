package js.html;
extern interface AuthenticationExtensionsClientInputs {
	@:optional
	var appid : String;
	@:optional
	var authnSel : std.Array<haxe.extern.EitherType<js.lib.ArrayBuffer, js.lib.ArrayBufferView>>;
	@:optional
	var exts : Bool;
	@:optional
	var loc : Bool;
	@:optional
	var txAuthGeneric : TxAuthGenericArg;
	@:optional
	var txAuthSimple : String;
	@:optional
	var uvi : Bool;
	@:optional
	var uvm : Bool;
}