package node.child_process;
extern typedef ExecOptions = CommonOptions & { @:optional
	var shell : String; @:optional
	var maxBuffer : Float; @:optional
	var killSignal : String; };