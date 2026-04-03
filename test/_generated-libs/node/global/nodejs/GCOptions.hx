package global.nodejs;

typedef GCOptions = {
	@:optional
	var execution : String;
	@:optional
	var flavor : String;
	@:optional
	var type : String;
	@:optional
	var filename : String;
};