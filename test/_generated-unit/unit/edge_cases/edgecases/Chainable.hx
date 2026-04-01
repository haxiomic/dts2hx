package unit.edge_cases.edgecases;

@:jsRequire("./unit/edge-cases", "EdgeCases.Chainable") extern class Chainable {
	function new();
	function setName(name:String):Chainable;
	function setValue(value:Float):Chainable;
	function build():String;
	static var prototype : Chainable;
}