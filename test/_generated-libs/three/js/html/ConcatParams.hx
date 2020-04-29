package js.html;
extern typedef ConcatParams = {
	var algorithmId : js.lib.IUint8Array;
	@:optional
	var hash : haxe.extern.EitherType<String, Algorithm>;
	var partyUInfo : js.lib.IUint8Array;
	var partyVInfo : js.lib.IUint8Array;
	@:optional
	var privateInfo : js.lib.IUint8Array;
	@:optional
	var publicInfo : js.lib.IUint8Array;
	var name : String;
};