package ts.lib.intl;
typedef ICollator = {
	function compare(x:String, y:String):Float;
	function resolvedOptions():ResolvedCollatorOptions;
};