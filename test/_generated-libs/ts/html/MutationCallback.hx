package ts.html;
typedef MutationCallback = {
	@:selfCall
	function call(mutations:Array<MutationRecord>, observer:MutationObserver):Void;
};