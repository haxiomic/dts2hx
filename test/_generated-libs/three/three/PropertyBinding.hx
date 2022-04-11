package three;

@:jsRequire("three", "PropertyBinding") extern class PropertyBinding {
	function new(rootNode:Dynamic, path:String, ?parsedPath:Dynamic);
	var path : String;
	var parsedPath : Dynamic;
	var node : Dynamic;
	var rootNode : Dynamic;
	function getValue(targetArray:Dynamic, offset:Float):Dynamic;
	function setValue(sourceArray:Dynamic, offset:Float):Void;
	function bind():Void;
	function unbind():Void;
	var BindingType : haxe.DynamicAccess<Float>;
	var Versioning : haxe.DynamicAccess<Float>;
	var GetterByBindingType : Array<haxe.Constraints.Function>;
	var SetterByBindingTypeAndVersioning : Array<Array<haxe.Constraints.Function>>;
	static var prototype : PropertyBinding;
	static function create(root:Dynamic, path:Dynamic, ?parsedPath:Dynamic):ts.AnyOf2<PropertyBinding, three.propertybinding.Composite>;
	static function parseTrackName(trackName:String):Dynamic;
	static function findNode(root:Dynamic, nodeName:String):Dynamic;
}