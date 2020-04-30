package node.child_process;
extern typedef ExecException = {
	@:optional
	var cmd : String;
	@:optional
	var killed : Bool;
	@:optional
	var code : Float;
	@:optional
	var signal : String;
	var name : String;
	var message : String;
	@:optional
	var stack : String;
};