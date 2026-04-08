package unit.unions_intersections.unionsintersections;

typedef ComplexUnion = ts.AnyOf2<Float, String & {
	var brand : String;
}>;