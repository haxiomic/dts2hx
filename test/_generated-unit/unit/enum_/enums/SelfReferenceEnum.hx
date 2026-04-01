package unit.enum_.enums;

@:jsRequire("./unit/enum", "Enums.SelfReferenceEnum") extern enum abstract SelfReferenceEnum(Int) from Int to Int {
	final A;
	final B;
	final AorB;
}