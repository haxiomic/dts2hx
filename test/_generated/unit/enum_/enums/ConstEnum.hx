package unit.enum_.enums;
@:enum extern abstract ConstEnum(Any) from Any to Any {
	var A = 1;
	var B = 2;
	var C = "ceee";
	var D = 3.14;
	@:native("operator")
	var operator_ = 6;
}