package js.lib.intl;
extern typedef ICollator = {
	function compare(x:String, y:String):Float;
	function resolvedOptions():ResolvedCollatorOptions;
};