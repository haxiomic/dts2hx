package unit.typedef_patterns.typedefpatterns;

@:jsRequire("./unit/typedef-patterns", "TypedefPatterns.NumericDirection") extern enum abstract NumericDirection(Int) from Int to Int {
	var North;
	var South;
	var East;
	var West;
}