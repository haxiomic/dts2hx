package unit.enums;



@:native('Enums.MixedImplicitEnum')
@:enum
extern abstract MixedImplicitEnum(Int) from Int to Int {
	var A;
	var B;
}

