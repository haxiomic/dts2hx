package unit.enum_.enums;

extern enum abstract ConstEnum(Any) from Any to Any {
	final A = 1;
	final B = 2;
	final C = "ceee";
	final D = 3.14;
	@:native("operator")
	final operator_ = 6;
}