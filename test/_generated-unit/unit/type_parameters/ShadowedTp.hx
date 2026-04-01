package unit.type_parameters;

@:jsRequire("./unit/type-parameters", "ShadowedTp") extern class ShadowedTp<ShadowT> {
	function new();
	var field : ShadowT;
	static var prototype : ShadowedTp<Dynamic>;
}