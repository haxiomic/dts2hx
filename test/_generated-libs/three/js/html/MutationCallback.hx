package js.html;
extern typedef MutationCallback = {
	@:selfCall
	function call(mutations:std.Array<IMutationRecord>, observer:IMutationObserver):Void;
};