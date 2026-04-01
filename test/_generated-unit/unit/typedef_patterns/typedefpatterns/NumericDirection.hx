package unit.typedef_patterns.typedefpatterns;

@:jsRequire("./unit/typedef-patterns", "TypedefPatterns.NumericDirection") extern enum abstract NumericDirection(Int) from Int to Int {
	final North;
	final South;
	final East;
	final West;
}