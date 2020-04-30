package three;
@:jsRequire("three", "PropertyMixer") extern class PropertyMixer {
	function new(binding:Any, typeName:String, valueSize:Float);
	var binding : Any;
	var valueSize : Float;
	var buffer : Any;
	var cumulativeWeight : Float;
	var useCount : Float;
	var referenceCount : Float;
	function accumulate(accuIndex:Float, weight:Float):Void;
	function apply(accuIndex:Float):Void;
	function saveOriginalState():Void;
	function restoreOriginalState():Void;
}