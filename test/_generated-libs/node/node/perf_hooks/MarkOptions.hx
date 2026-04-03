package node.perf_hooks;

typedef MarkOptions = {
	/**
		Additional optional detail to include with the mark.
	**/
	@:optional
	var detail : Any;
	/**
		An optional timestamp to be used as the mark time.
	**/
	@:optional
	var startTime : Float;
};