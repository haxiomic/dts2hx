package global.jquery;

typedef Queue<TElement> = {
	@:native("0")
	var Zero : String;
} & ts.lib.IArray<QueueFunction<TElement>>;