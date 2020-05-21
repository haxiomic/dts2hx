package unit.type_parameters;

@:jsRequire("./unit/type-parameters", "ShadowedTp") extern class ShadowedTp<ShadowT> {
	var field : ShadowT;
	static var prototype : ShadowedTp<Dynamic>;
}