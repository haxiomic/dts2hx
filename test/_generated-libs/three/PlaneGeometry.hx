package three;
@:jsRequire("three", "PlaneGeometry") extern class PlaneGeometry extends Geometry {
	function new(?width:Float, ?height:Float, ?widthSegments:Float, ?heightSegments:Float);
	var parameters : {
		var width : Float;
		var height : Float;
		var widthSegments : Float;
		var heightSegments : Float;
	};
}