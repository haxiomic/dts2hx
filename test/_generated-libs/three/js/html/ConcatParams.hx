package js.html;
extern interface ConcatParams extends Algorithm {
	var algorithmId : js.lib.Uint8Array;
	@:optional
	var hash : haxe.extern.EitherType<String, Algorithm>;
	var partyUInfo : js.lib.Uint8Array;
	var partyVInfo : js.lib.Uint8Array;
	@:optional
	var privateInfo : js.lib.Uint8Array;
	@:optional
	var publicInfo : js.lib.Uint8Array;
}