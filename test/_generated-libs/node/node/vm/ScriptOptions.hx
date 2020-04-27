package node.vm;
extern typedef ScriptOptions = BaseOptions & { @:optional
	var displayErrors : Bool; @:optional
	var timeout : Float; @:optional
	var cachedData : global.Buffer; @:optional
	var produceCachedData : Bool; };