package ts.html;
typedef MutationCallback = {
	@:selfCall
	function call(mutations:std.Array<IMutationRecord>, observer:IMutationObserver):Void;
};