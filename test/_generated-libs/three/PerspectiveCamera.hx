package three;
/**
	Camera with perspective projection.
**/
@:jsRequire("three", "PerspectiveCamera") extern class PerspectiveCamera extends Camera {
	function new(?fov:Float, ?aspect:Float, ?near:Float, ?far:Float);
	var isPerspectiveCamera : Bool;
	var zoom : Float;
	/**
		Camera frustum vertical field of view, from bottom to top of view, in degrees.
	**/
	var fov : Float;
	/**
		Camera frustum aspect ratio, window width divided by window height.
	**/
	var aspect : Float;
	/**
		Camera frustum near plane.
	**/
	var near : Float;
	/**
		Camera frustum far plane.
	**/
	var far : Float;
	var focus : Float;
	var view : Null<{
		var enabled : Bool;
		var fullWidth : Float;
		var fullHeight : Float;
		var offsetX : Float;
		var offsetY : Float;
		var width : Float;
		var height : Float;
	}>;
	var filmGauge : Float;
	var filmOffset : Float;
	function setFocalLength(focalLength:Float):Void;
	function getFocalLength():Float;
	function getEffectiveFOV():Float;
	function getFilmWidth():Float;
	function getFilmHeight():Float;
	/**
		Sets an offset in a larger frustum. This is useful for multi-window or multi-monitor/multi-machine setups.
		For example, if you have 3x2 monitors and each monitor is 1920x1080 and the monitors are in grid like this:
		
				 +---+---+---+
				 | A | B | C |
				 +---+---+---+
				 | D | E | F |
				 +---+---+---+
		
		then for each monitor you would call it like this:
		
				 var w = 1920;
				 var h = 1080;
				 var fullWidth = w * 3;
				 var fullHeight = h * 2;
		
				 // A
				 camera.setViewOffset( fullWidth, fullHeight, w * 0, h * 0, w, h );
				 // B
				 camera.setViewOffset( fullWidth, fullHeight, w * 1, h * 0, w, h );
				 // C
				 camera.setViewOffset( fullWidth, fullHeight, w * 2, h * 0, w, h );
				 // D
				 camera.setViewOffset( fullWidth, fullHeight, w * 0, h * 1, w, h );
				 // E
				 camera.setViewOffset( fullWidth, fullHeight, w * 1, h * 1, w, h );
				 // F
				 camera.setViewOffset( fullWidth, fullHeight, w * 2, h * 1, w, h ); Note there is no reason monitors have to be the same size or in a grid.
	**/
	function setViewOffset(fullWidth:Float, fullHeight:Float, x:Float, y:Float, width:Float, height:Float):Void;
	function clearViewOffset():Void;
	/**
		Updates the camera projection matrix. Must be called after change of parameters.
	**/
	function updateProjectionMatrix():Void;
	function setLens(focalLength:Float, ?frameHeight:Float):Void;
}