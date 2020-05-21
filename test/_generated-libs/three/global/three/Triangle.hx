package global.three;

@:native("THREE.Triangle") extern class Triangle {
	function new(?a:Vector3, ?b:Vector3, ?c:Vector3);
	var a : Vector3;
	var b : Vector3;
	var c : Vector3;
	function set(a:Vector3, b:Vector3, c:Vector3):Triangle;
	function setFromPointsAndIndices(points:Array<Vector3>, i0:Float, i1:Float, i2:Float):Triangle;
	function clone():Triangle;
	function copy(triangle:Triangle):Triangle;
	function getArea():Float;
	function getMidpoint(target:Vector3):Vector3;
	function getNormal(target:Vector3):Vector3;
	function getPlane(target:Vector3):Plane;
	function getBarycoord(point:Vector3, target:Vector3):Vector3;
	function getUV(point:Vector3, uv1:Vector2, uv2:Vector2, uv3:Vector2, target:Vector2):Vector2;
	function containsPoint(point:Vector3):Bool;
	function intersectsBox(box:Box3):Bool;
	function isFrontFacing(direction:Vector3):Bool;
	function closestPointToPoint(point:Vector3, target:Vector3):Vector3;
	function equals(triangle:Triangle):Bool;
	static var prototype : Triangle;
	@:native("getNormal")
	static function getNormal_(a:Vector3, b:Vector3, c:Vector3, target:Vector3):Vector3;
	@:native("getBarycoord")
	static function getBarycoord_(point:Vector3, a:Vector3, b:Vector3, c:Vector3, target:Vector3):Vector3;
	@:native("containsPoint")
	static function containsPoint_(point:Vector3, a:Vector3, b:Vector3, c:Vector3):Bool;
	@:native("getUV")
	static function getUV_(point:Vector3, p1:Vector3, p2:Vector3, p3:Vector3, uv1:Vector2, uv2:Vector2, uv3:Vector2, target:Vector2):Vector2;
	@:native("isFrontFacing")
	static function isFrontFacing_(a:Vector3, b:Vector3, c:Vector3, direction:Vector3):Bool;
}