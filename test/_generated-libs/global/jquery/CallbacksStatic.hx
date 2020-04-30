package global.jquery;
extern typedef CallbacksStatic = {
	/**
		A multi-purpose callbacks list object that provides a powerful way to manage callback lists.
	**/
	@:selfCall
	function call<T>(?flags:String):Callbacks<T>;
};