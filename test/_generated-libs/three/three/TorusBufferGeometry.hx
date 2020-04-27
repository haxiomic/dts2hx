package three;
@:jsRequire("three", "TorusBufferGeometry") extern class TorusBufferGeometry extends BufferGeometry {
	function new(?radius:Float, ?tube:Float, ?radialSegments:Float, ?tubularSegments:Float, ?arc:Float);
	var parameters : { var radius : Float; var tube : Float; var radialSegments : Float; var tubularSegments : Float; var arc : Float; };
}