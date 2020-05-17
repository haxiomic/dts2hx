package unit.enum_.enums;

@:jsRequire("./unit/enum", "Enums.MixedImplicitEnum") @:enum extern abstract MixedImplicitEnum(Int) from Int to Int {
	var A;
	var B;
}