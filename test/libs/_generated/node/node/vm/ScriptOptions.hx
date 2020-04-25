package node.vm;
extern interface ScriptOptions extends BaseOptions {
	@:optional
	var displayErrors : Null<Bool>;
	@:optional
	var timeout : Null<Float>;
	@:optional
	var cachedData : Null<global.Buffer>;
	@:optional
	var produceCachedData : Null<Bool>;
}