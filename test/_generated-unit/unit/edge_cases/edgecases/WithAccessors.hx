package unit.edge_cases.edgecases;

@:jsRequire("./unit/edge-cases", "EdgeCases.WithAccessors") extern class WithAccessors {
	function new();
	var name : String;
	final readonlyProp : Float;
	static var prototype : WithAccessors;
}