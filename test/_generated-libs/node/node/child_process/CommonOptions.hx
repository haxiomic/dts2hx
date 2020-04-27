package node.child_process;
extern typedef CommonOptions = ProcessEnvOptions & { @:optional
	var windowsHide : Bool; @:optional
	var timeout : Float; };