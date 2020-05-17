package three.src;

@:jsRequire("three/src/polyfills") @valueModuleOnly extern class Polyfills {
	static function warn(?message:Dynamic, optionalParams:haxe.extern.Rest<Dynamic>):Void;
	static function error(?message:Dynamic, optionalParams:haxe.extern.Rest<Dynamic>):Void;
	static function log(?message:Dynamic, optionalParams:haxe.extern.Rest<Dynamic>):Void;
}