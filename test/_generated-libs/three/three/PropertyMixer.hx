package three;

@:jsRequire("three", "PropertyMixer") extern class PropertyMixer {
	function new(binding:Dynamic, typeName:String, valueSize:Float);
	var binding : Dynamic;
	var valueSize : Float;
	var buffer : Dynamic;
	var cumulativeWeight : Float;
	var useCount : Float;
	var referenceCount : Float;
	function accumulate(accuIndex:Float, weight:Float):Void;
	function apply(accuIndex:Float):Void;
	function saveOriginalState():Void;
	function restoreOriginalState():Void;
	static var prototype : PropertyMixer;
}