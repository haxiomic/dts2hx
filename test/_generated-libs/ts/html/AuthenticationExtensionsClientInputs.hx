package ts.html;
typedef AuthenticationExtensionsClientInputs = {
	@:optional
	var appid : String;
	@:optional
	var authnSel : AuthenticatorSelectionList;
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
};