package three;
@:jsRequire("three", "LineDashedMaterial") extern class LineDashedMaterial extends LineBasicMaterial {
	function new(?parameters:LineDashedMaterialParameters);
	var scale : Float;
	var dashSize : Float;
	var gapSize : Float;
	var isLineDashedMaterial : Bool;
}