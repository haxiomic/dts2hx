package three.propertybinding;
@:jsRequire("three", "PropertyBinding.Composite") extern class Composite {
	function new(targetGroup:Any, path:Any, ?parsedPath:Any);
	function getValue(array:Any, offset:Float):Any;
	function setValue(array:Any, offset:Float):Void;
	function bind():Void;
	function unbind():Void;
}