package unit.interface_;

/**
	reproducing issue with react Component
**/
@:jsRequire("./unit/interface", "InterfaceClassParamMismatch") extern class InterfaceClassParamMismatch<P, S, SS> {
	function new();
	var interfaceFieldP : P;
	var interfaceFieldS : S;
	var interfaceFieldSS : SS;
	var classFieldP : P;
	var classFieldS : S;
	static var prototype : InterfaceClassParamMismatch<Dynamic, Dynamic, Dynamic>;
}