package global;
extern typedef JQueryEventConstructor = {
	/**
		The jQuery.Event constructor is exposed and can be used when calling trigger. The new operator is optional.
		
		Check \`{@link https://api.jquery.com/trigger/ trigger}\`'s documentation to see how to combine it with your own event object.
	**/
	@:selfCall
	function call<T>(event:String, ?properties:T):Any;
};