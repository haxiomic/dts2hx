package unit;
@:jsRequire("./unit/symbols") extern class Symbols {
	/**
		@DTS2HX-ERROR: Unhandled declaration kind ClassDeclaration
	**/
	static function ClassValueModule(arg:Float):Any;
	/**
		@DTS2HX-ERROR: Unhandled declaration kind InterfaceDeclaration
	**/
	@:overload(function():Float { })
	static function CallableInterface(overloadParam:Float):Float;
	static function FunctionValueModule():Float;
	/**
		See https://github.com/microsoft/TypeScript/blob/master/doc/spec.md#23-declarations
		
		The 3 kinds of declarations possible, all using the same name
	**/
	static var ValueTypedefNamespace : String;
}