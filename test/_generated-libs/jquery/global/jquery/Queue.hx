package global.jquery;

typedef Queue<TElement> = {
	@:native("0")
	var Zero : String;
} & js.lib.IArray<QueueFunction<TElement>>;