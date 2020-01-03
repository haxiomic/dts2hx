package unit.enums;



@:native('Enums.SelfReferenceEnum')
@:enum
extern abstract SelfReferenceEnum(Int) from Int to Int {
	var A;
	var B;
	var AorB;
}

