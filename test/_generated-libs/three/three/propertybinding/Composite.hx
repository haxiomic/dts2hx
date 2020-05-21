package three.propertybinding;

@:jsRequire("three", "PropertyBinding.Composite") extern class Composite {
	function new(targetGroup:Dynamic, path:Dynamic, ?parsedPath:Dynamic);
	function getValue(array:Dynamic, offset:Float):Dynamic;
	function setValue(array:Dynamic, offset:Float):Void;
	function bind():Void;
	function unbind():Void;
	static var prototype : Composite;
}