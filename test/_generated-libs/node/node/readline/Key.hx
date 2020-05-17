package node.readline;

typedef Key = {
	@:optional
	var sequence : String;
	@:optional
	var name : String;
	@:optional
	var ctrl : Bool;
	@:optional
	var meta : Bool;
	@:optional
	var shift : Bool;
};