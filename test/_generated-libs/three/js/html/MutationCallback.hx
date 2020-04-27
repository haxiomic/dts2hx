package js.html;
extern typedef MutationCallback = { @:selfCall
	function call(mutations:std.Array<MutationRecord>, observer:MutationObserver):Void; };