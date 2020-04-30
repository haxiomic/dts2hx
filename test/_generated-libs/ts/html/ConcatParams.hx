package ts.html;
extern typedef ConcatParams = {
	var algorithmId : ts.lib.IUint8Array;
	@:optional
	var hash : haxe.extern.EitherType<String, Algorithm>;
	var partyUInfo : ts.lib.IUint8Array;
	var partyVInfo : ts.lib.IUint8Array;
	@:optional
	var privateInfo : ts.lib.IUint8Array;
	@:optional
	var publicInfo : ts.lib.IUint8Array;
	var name : String;
};