package unit.functions;

/**
	Function signature coverage: parameters, overloads, optional params,
	rest params, generics, return types.
	Tests the getExpandedParameters handling (TS 4.0+).
**/
@:jsRequire("./unit/functions", "Functions") @valueModuleOnly extern class Functions {
	static function noParams():Void;
	static function oneParam(a:String):Float;
	static function multiParam(a:String, b:Float, c:Bool):Void;
	static function optionalParam(a:String, ?b:Float):Void;
	static function allOptional(?a:String, ?b:Float):Void;
	static function optionalWithDefault(a:String, ?b:Float):String;
	static function restParam(args:haxe.extern.Rest<Float>):Void;
	static function restWithLeading(a:String, rest:haxe.extern.Rest<Float>):Void;
	@:overload(function(a:Float):Float { })
	@:overload(function(a:Bool):Bool { })
	static function overloaded(a:String):String;
	static function identity<T>(x:T):T;
	static function pair<A, B>(a:A, b:B):ts.Tuple2<A, B>;
	static function constrained<T:(String)>(x:T):T;
	static function multiConstrained<T:(String), U:(Float)>(a:T, b:U):Void;
	static function takesCallback(cb:(error:Null<js.lib.Error>, result:String) -> Void):Void;
	static function returnsFunction():(x:Float) -> String;
	static function returnsUnion():ts.AnyOf2<String, Float>;
	static function returnsIntersection():{
		var a : Float;
	} & {
		var b : String;
	};
	static function returnsPromiseLike():js.lib.PromiseLike<String>;
	static function returnsArray():Array<String>;
	static function returnsVoid():Void;
	static function returnsNever():ts.Never;
}