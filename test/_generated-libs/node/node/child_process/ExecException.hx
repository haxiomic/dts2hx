package node.child_process;

typedef ExecException = {
	@:optional
	var cmd : String;
	@:optional
	var killed : Bool;
	@:optional
	var code : Float;
	@:optional
	var signal : global.nodejs.Signals;
	@:optional
	var stdout : String;
	@:optional
	var stderr : String;
	var name : String;
	var message : String;
	@:optional
	var stack : String;
};