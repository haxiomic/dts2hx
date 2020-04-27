package node.vm;
extern typedef RunningScriptOptions = BaseOptions & { @:optional
	var displayErrors : Bool; @:optional
	var timeout : Float; };