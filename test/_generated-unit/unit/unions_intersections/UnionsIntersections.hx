package unit.unions_intersections;

/**
	Union and intersection type coverage, including edge cases
	and combinations with other type constructs.
**/
@:jsRequire("./unit/unions-intersections", "UnionsIntersections") @valueModuleOnly extern class UnionsIntersections {
	static function processShape(s:unit.unions_intersections.unionsintersections.Shape):String;
	static function processUnion(x:ts.AnyOf3<String, Float, Bool>):Void;
	static final shape : unit.unions_intersections.unionsintersections.Shape;
	static final person : unit.unions_intersections.unionsintersections.Person;
	static final nullable : unit.unions_intersections.unionsintersections.NullableString;
}