package ts.html;
typedef ConcatParams = {
	var algorithmId : ts.lib.Uint8Array;
	@:optional
	var hash : ts.AnyOf2<String, Algorithm>;
	var partyUInfo : ts.lib.Uint8Array;
	var partyVInfo : ts.lib.Uint8Array;
	@:optional
	var privateInfo : ts.lib.Uint8Array;
	@:optional
	var publicInfo : ts.lib.Uint8Array;
	var name : String;
};