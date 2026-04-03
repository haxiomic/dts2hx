package node;

typedef CreateWriteStreamFSImplementation = {
	dynamic function write(args:haxe.extern.Rest<Dynamic>):Dynamic;
	@:optional
	dynamic function writev(args:haxe.extern.Rest<Dynamic>):Dynamic;
	@:optional
	dynamic function open(args:haxe.extern.Rest<Dynamic>):Dynamic;
	@:optional
	dynamic function close(args:haxe.extern.Rest<Dynamic>):Dynamic;
};