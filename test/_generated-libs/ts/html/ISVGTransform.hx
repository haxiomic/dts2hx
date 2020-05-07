package ts.html;
/**
	SVGTransform is the interface for one of the component transformations within an SVGTransformList; thus, an SVGTransform object corresponds to a single component (e.g., scale(…) or matrix(…)) within a transform attribute.
**/
typedef ISVGTransform = {
	final angle : Float;
	final matrix : DOMMatrix;
	final type : Float;
	function setMatrix(matrix:DOMMatrix):Void;
	function setRotate(angle:Float, cx:Float, cy:Float):Void;
	function setScale(sx:Float, sy:Float):Void;
	function setSkewX(angle:Float):Void;
	function setSkewY(angle:Float):Void;
	function setTranslate(tx:Float, ty:Float):Void;
	final SVG_TRANSFORM_MATRIX : Float;
	final SVG_TRANSFORM_ROTATE : Float;
	final SVG_TRANSFORM_SCALE : Float;
	final SVG_TRANSFORM_SKEWX : Float;
	final SVG_TRANSFORM_SKEWY : Float;
	final SVG_TRANSFORM_TRANSLATE : Float;
	final SVG_TRANSFORM_UNKNOWN : Float;
};