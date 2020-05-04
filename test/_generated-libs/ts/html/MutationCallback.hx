package ts.html;
typedef MutationCallback = {
	@:selfCall
	function call(mutations:Array<IMutationRecord>, observer:IMutationObserver):Void;
};