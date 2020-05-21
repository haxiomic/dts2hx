package global.three;

/**
	BoxGeometry is the quadrilateral primitive geometry class. It is typically used for creating a cube or irregular quadrilateral of the dimensions provided within the (optional) 'width', 'height', & 'depth' constructor arguments.
**/
@:native("THREE.BoxGeometry") extern class BoxGeometry extends Geometry {
	function new(?width:Float, ?height:Float, ?depth:Float, ?widthSegments:Float, ?heightSegments:Float, ?depthSegments:Float);
	var parameters : {
		var width : Float;
		var height : Float;
		var depth : Float;
		var widthSegments : Float;
		var heightSegments : Float;
		var depthSegments : Float;
	};
	function setFromPoints(points:ts.AnyOf2<Array<Vector3>, Array<Vector2>>):BoxGeometry;
	/**
		Creates a new clone of the Geometry.
	**/
	function clone():BoxGeometry;
	function copy(source:Geometry):BoxGeometry;
	static var prototype : BoxGeometry;
}