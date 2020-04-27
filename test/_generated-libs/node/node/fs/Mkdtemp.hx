package node.fs;
/**
	Asynchronously creates a unique temporary directory.
	Generates six random characters to be appended behind a required prefix to create a unique temporary directory.
	
	
	
	Asynchronously creates a unique temporary directory.
	Generates six random characters to be appended behind a required prefix to create a unique temporary directory.
	
	
	
	Asynchronously creates a unique temporary directory.
	Generates six random characters to be appended behind a required prefix to create a unique temporary directory.
	
	
	
	Asynchronously creates a unique temporary directory.
	Generates six random characters to be appended behind a required prefix to create a unique temporary directory.
**/
@:jsRequire("fs", "mkdtemp") @valueModuleOnly extern class Mkdtemp {
	/**
		Asynchronously creates a unique temporary directory.
		Generates six random characters to be appended behind a required prefix to create a unique temporary directory.
		
		
		
		Asynchronously creates a unique temporary directory.
		Generates six random characters to be appended behind a required prefix to create a unique temporary directory.
		
		
		
		Asynchronously creates a unique temporary directory.
		Generates six random characters to be appended behind a required prefix to create a unique temporary directory.
	**/
	@:overload(function(prefix:String, options:haxe.extern.EitherType<String, { var encoding : String; }>):js.lib.Promise<global.Buffer> { })
	@:overload(function(prefix:String, ?options:haxe.extern.EitherType<String, { @:optional
	var encoding : String; }>):js.lib.Promise<haxe.extern.EitherType<String, global.Buffer>> { })
	static function __promisify__(prefix:String, ?options:haxe.extern.EitherType<String, { @:optional
	var encoding : String; }>):js.lib.Promise<String>;
}