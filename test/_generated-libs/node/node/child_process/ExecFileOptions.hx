package node.child_process;
extern typedef ExecFileOptions = CommonOptions & { @:optional
	var maxBuffer : Float; @:optional
	var killSignal : String; @:optional
	var windowsVerbatimArguments : Bool; };