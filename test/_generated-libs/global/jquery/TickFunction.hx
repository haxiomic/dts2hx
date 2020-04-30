package global.jquery;
extern typedef TickFunction<TElement> = {
	@:selfCall
	function call():Any;
	var anim : Animation<TElement>;
	var elem : TElement;
	var queue : haxe.extern.EitherType<String, Bool>;
};