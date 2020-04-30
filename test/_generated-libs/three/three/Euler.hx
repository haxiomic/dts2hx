package three;
@:jsRequire("three", "Euler") extern class Euler {
	function new(?x:Float, ?y:Float, ?z:Float, ?order:String);
	var x : Float;
	var y : Float;
	var z : Float;
	var order : String;
	var _onChangeCallback : ts.lib.IFunction;
	function set(x:Float, y:Float, z:Float, ?order:String):Euler;
	function clone():Euler;
	function copy(euler:Euler):Euler;
	function setFromRotationMatrix(m:Matrix4, ?order:String):Euler;
	function setFromQuaternion(q:Quaternion, ?order:String):Euler;
	function setFromVector3(v:Vector3, ?order:String):Euler;
	function reorder(newOrder:String):Euler;
	function equals(euler:Euler):Bool;
	function fromArray(xyzo:std.Array<Any>):Euler;
	function toArray(?array:std.Array<Float>, ?offset:Float):std.Array<Float>;
	function toVector3(?optionalResult:Vector3):Vector3;
	function _onChange(callback:ts.lib.IFunction):Euler;
	static var RotationOrders : std.Array<String>;
	static var DefaultOrder : String;
}