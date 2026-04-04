package global.jquery;

typedef CSSHook<TElement> = ts.AnyOf2<{
	@:optional
	dynamic function get(elem:TElement, computed:Dynamic, extra:Dynamic):Dynamic;
	@:optional
	dynamic function set(elem:TElement, value:Dynamic):Void;
} & {
	dynamic function get(elem:TElement, computed:Dynamic, extra:Dynamic):Dynamic;
}, {
	@:optional
	dynamic function get(elem:TElement, computed:Dynamic, extra:Dynamic):Dynamic;
	@:optional
	dynamic function set(elem:TElement, value:Dynamic):Void;
} & {
	dynamic function set(elem:TElement, value:Dynamic):Void;
}>;