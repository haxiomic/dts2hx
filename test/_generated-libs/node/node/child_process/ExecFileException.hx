package node.child_process;

typedef ExecFileException = {
	var name : String;
	@:optional
	var signal : global.nodejs.Signals;
	var message : String;
	@:optional
	var cmd : String;
	@:optional
	var killed : Bool;
	@:optional
	var stdout : String;
	@:optional
	var stderr : String;
	@:optional
	var stack : String;
} & {
	var name : String;
	var message : String;
	@:optional
	var path : String;
	@:optional
	var stack : String;
	@:optional
	var errno : Float;
	@:optional
	var syscall : String;
} & {
	@:optional
	var code : ts.AnyOf2<String, Float>;
};