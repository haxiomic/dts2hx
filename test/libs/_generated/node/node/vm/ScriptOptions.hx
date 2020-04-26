package node.vm;
extern interface ScriptOptions extends BaseOptions {
	@:optional
	var displayErrors : Bool;
	@:optional
	var timeout : Float;
	@:optional
	var cachedData : global.Buffer;
	@:optional
	var produceCachedData : Bool;
}