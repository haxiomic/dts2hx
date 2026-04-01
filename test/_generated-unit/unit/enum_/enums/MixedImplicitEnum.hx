package unit.enum_.enums;

@:jsRequire("./unit/enum", "Enums.MixedImplicitEnum") extern enum abstract MixedImplicitEnum(Int) from Int to Int {
	var A;
	var B;
}