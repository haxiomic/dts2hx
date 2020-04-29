package js.html;
/**
	SVGTransform is the interface for one of the component transformations within an SVGTransformList; thus, an SVGTransform object corresponds to a single component (e.g., scale(…) or matrix(…)) within a transform attribute.
**/
@:native("SVGTransform") extern class SVGTransform {
	function new();
	final angle : Float;
	final matrix : IDOMMatrix;
	final type : Float;
	function setMatrix(matrix:IDOMMatrix):Void;
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
	static var prototype : ISVGTransform;
	@:native("SVG_TRANSFORM_MATRIX")
	static final SVG_TRANSFORM_MATRIX_ : Float;
	@:native("SVG_TRANSFORM_ROTATE")
	static final SVG_TRANSFORM_ROTATE_ : Float;
	@:native("SVG_TRANSFORM_SCALE")
	static final SVG_TRANSFORM_SCALE_ : Float;
	@:native("SVG_TRANSFORM_SKEWX")
	static final SVG_TRANSFORM_SKEWX_ : Float;
	@:native("SVG_TRANSFORM_SKEWY")
	static final SVG_TRANSFORM_SKEWY_ : Float;
	@:native("SVG_TRANSFORM_TRANSLATE")
	static final SVG_TRANSFORM_TRANSLATE_ : Float;
	@:native("SVG_TRANSFORM_UNKNOWN")
	static final SVG_TRANSFORM_UNKNOWN_ : Float;
}