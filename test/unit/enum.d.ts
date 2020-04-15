declare namespace Enums {
    
    enum ImplicitEnum {
        A,
        B
    }

    enum MixedImplicitEnum {
        A,
        B = 5,
    }

    enum MixedStringImplicitEnum {
        A,
        B = 'str',
    }

    enum IntEnum {
        A = 2 * 3,
        B = 12
    } 

    enum FloatEnum {
        A = 1.2 * 3.4,
        B = 3
    }

    enum StringEnum {
        A = 'a' + '4',
        B = 'b'
    }

    enum MultiTypeEnum {
        A = 1,
        B = 'b'
    }

    enum SelfReferenceEnum {
        A = 1 << 0,
        B = 1 << 1,
        AorB = A | B,
    }

    const enum ConstEnum {
        A = 1,
        B = 2,
        C = 'ceee',
        D = 3.14,
        // reserved keyword in haxe
        operator = 6,
    }

}