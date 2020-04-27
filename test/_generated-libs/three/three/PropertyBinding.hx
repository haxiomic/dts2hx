package three;
@:jsRequire("three", "PropertyBinding") @tsInterface extern class PropertyBinding {
	function new(rootNode:Any, path:String, ?parsedPath:Any);
	var path : String;
	var parsedPath : Any;
	var node : Any;
	var rootNode : Any;
	function getValue(targetArray:Any, offset:Float):Any;
	function setValue(sourceArray:Any, offset:Float):Void;
	function bind():Void;
	function unbind():Void;
	var BindingType : { };
	var Versioning : { };
	var GetterByBindingType : std.Array<js.lib.Function>;
	var SetterByBindingTypeAndVersioning : std.Array<std.Array<js.lib.Function>>;
	static function create(root:Any, path:Any, ?parsedPath:Any):haxe.extern.EitherType<PropertyBinding, three.propertybinding.Composite>;
	static function parseTrackName(trackName:String):Any;
	static function findNode(root:Any, nodeName:String):Any;
}