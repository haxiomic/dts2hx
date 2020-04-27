package three;
@:jsRequire("three", "TorusKnotGeometry") extern class TorusKnotGeometry extends Geometry {
	function new(?radius:Float, ?tube:Float, ?tubularSegments:Float, ?radialSegments:Float, ?p:Float, ?q:Float);
	var parameters : { var radius : Float; var tube : Float; var tubularSegments : Float; var radialSegments : Float; var p : Float; var q : Float; var heightScale : Float; };
}