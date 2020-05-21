package three.examples.jsm.controls.orbitcontrols;

@:jsRequire("three/examples/jsm/controls/OrbitControls", "OrbitControls") extern class OrbitControls {
	function new(object:three.Camera, ?domElement:js.html.Element);
	var object : three.Camera;
	var domElement : ts.AnyOf2<js.html.Element, js.html.HTMLDocument>;
	var enabled : Bool;
	var target : three.Vector3;
	var center : three.Vector3;
	var minDistance : Float;
	var maxDistance : Float;
	var minZoom : Float;
	var maxZoom : Float;
	var minPolarAngle : Float;
	var maxPolarAngle : Float;
	var minAzimuthAngle : Float;
	var maxAzimuthAngle : Float;
	var enableDamping : Bool;
	var dampingFactor : Float;
	var enableZoom : Bool;
	var zoomSpeed : Float;
	var enableRotate : Bool;
	var rotateSpeed : Float;
	var enablePan : Bool;
	var panSpeed : Float;
	var screenSpacePanning : Bool;
	var keyPanSpeed : Float;
	var autoRotate : Bool;
	var autoRotateSpeed : Float;
	var enableKeys : Bool;
	var keys : {
		var LEFT : Float;
		var UP : Float;
		var RIGHT : Float;
		var BOTTOM : Float;
	};
	var mouseButtons : {
		var LEFT : three.MOUSE;
		var MIDDLE : three.MOUSE;
		var RIGHT : three.MOUSE;
	};
	var touches : {
		var ONE : three.TOUCH;
		var TWO : three.TOUCH;
	};
	function rotateLeft(?angle:Float):Void;
	function rotateUp(?angle:Float):Void;
	function panLeft(?distance:Float):Void;
	function panUp(?distance:Float):Void;
	function pan(deltaX:Float, deltaY:Float):Void;
	function dollyIn(dollyScale:Float):Void;
	function dollyOut(dollyScale:Float):Void;
	function update():Void;
	function reset():Void;
	function dispose():Void;
	function getPolarAngle():Float;
	function getAzimuthalAngle():Float;
	function addEventListener(type:String, listener:(event:Dynamic) -> Void):Void;
	function hasEventListener(type:String, listener:(event:Dynamic) -> Void):Bool;
	function removeEventListener(type:String, listener:(event:Dynamic) -> Void):Void;
	function dispatchEvent(event:{ var type : String; var target : Dynamic; }):Void;
	static var prototype : OrbitControls;
}