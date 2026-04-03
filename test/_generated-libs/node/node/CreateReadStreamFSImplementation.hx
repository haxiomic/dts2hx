package node;

typedef CreateReadStreamFSImplementation = {
	dynamic function read(args:haxe.extern.Rest<Dynamic>):Dynamic;
	@:optional
	dynamic function open(args:haxe.extern.Rest<Dynamic>):Dynamic;
	@:optional
	dynamic function close(args:haxe.extern.Rest<Dynamic>):Dynamic;
};