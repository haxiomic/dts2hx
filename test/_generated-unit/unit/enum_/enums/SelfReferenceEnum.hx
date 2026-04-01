package unit.enum_.enums;

@:jsRequire("./unit/enum", "Enums.SelfReferenceEnum") extern enum abstract SelfReferenceEnum(Int) from Int to Int {
	var A;
	var B;
	var AorB;
}