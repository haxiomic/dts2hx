declare enum ImplicitEnum {
    A,
    B
}

declare enum MixedImplicitEnum {
    A,
    B = 5,
}

declare enum MixedStringImplicitEnum {
    A,
    B = 'str',
}

declare enum IntEnum {
    A = 2 * 3,
    B = 12
} 

declare enum FloatEnum {
    A = 1.2 * 3.4,
    B = 3
}

declare enum StringEnum {
    A = 'a' + '4',
    B = 'b'
}

declare enum MultiTypeEnum {
    A = 1,
    B = 'b'
}

declare enum SelfReferenceEnum {
    A = 1 << 0,
    B = 1 << 1,
    AorB = A | B,
}