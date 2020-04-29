package js.html;
extern typedef IDOMMatrixReadOnly = {
	final a : Float;
	final b : Float;
	final c : Float;
	final d : Float;
	final e : Float;
	final f : Float;
	final is2D : Bool;
	final isIdentity : Bool;
	final m11 : Float;
	final m12 : Float;
	final m13 : Float;
	final m14 : Float;
	final m21 : Float;
	final m22 : Float;
	final m23 : Float;
	final m24 : Float;
	final m31 : Float;
	final m32 : Float;
	final m33 : Float;
	final m34 : Float;
	final m41 : Float;
	final m42 : Float;
	final m43 : Float;
	final m44 : Float;
	function flipX():IDOMMatrix;
	function flipY():IDOMMatrix;
	function inverse():IDOMMatrix;
	function multiply(?other:DOMMatrixInit):IDOMMatrix;
	function rotate(?rotX:Float, ?rotY:Float, ?rotZ:Float):IDOMMatrix;
	function rotateAxisAngle(?x:Float, ?y:Float, ?z:Float, ?angle:Float):IDOMMatrix;
	function rotateFromVector(?x:Float, ?y:Float):IDOMMatrix;
	function scale(?scaleX:Float, ?scaleY:Float, ?scaleZ:Float, ?originX:Float, ?originY:Float, ?originZ:Float):IDOMMatrix;
	function scale3d(?scale:Float, ?originX:Float, ?originY:Float, ?originZ:Float):IDOMMatrix;
	function scaleNonUniform(?scaleX:Float, ?scaleY:Float):IDOMMatrix;
	function skewX(?sx:Float):IDOMMatrix;
	function skewY(?sy:Float):IDOMMatrix;
	function toFloat32Array():js.lib.IFloat32Array;
	function toFloat64Array():js.lib.IFloat64Array;
	function toJSON():Any;
	function transformPoint(?point:DOMPointInit):IDOMPoint;
	function translate(?tx:Float, ?ty:Float, ?tz:Float):IDOMMatrix;
};