package global.jquery;
extern typedef TickFunction<TElement> = {
	@:selfCall
	function call():Any;
	var anim : Animation<TElement>;
	var elem : TElement;
	var queue : ts.AnyOf2<String, Bool>;
};