package three;
extern typedef MeshDistanceMaterialParameters = MaterialParameters & { @:optional
	var referencePosition : Vector3; @:optional
	var nearDistance : Float; @:optional
	var farDistance : Float; @:optional
	var displacementMap : Texture; @:optional
	var displacementScale : Float; @:optional
	var displacementBias : Float; };