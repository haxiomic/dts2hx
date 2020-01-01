/**
 * See https://github.com/microsoft/TypeScript/blob/master/doc/spec.md#3-types
 * 
 *  # Type Categories
 *  - primitive types
 *      Number, Boolean, String, Symbol (Void, Null, and Undefined are not referenceable)
 *  - object types
 *      composed from *properties*, *call signatures*, *construct signatures*, and *index signatures* (collectively called members)
 *      - Object type literals
 *      - Array type literals
 *      - Tuple type literals
 *      - Function type literals
 *      - Constructor type literals 
 *      - Constructor function types created by class declarations (section 8.2.5).
 *      - Namespace instance types created by namespace declarations (section 10.3).
 *  - union types
 *  - intersection types
 *  - type parameters
 */
declare namespace ConstLiterals {

    type StringAlias = string;
    type ArrayAlias = Array<string>;
    type ObjectAlias = typeof object;

    // Primitive Types
    //  implicit
    const implicitInt = 2; // number
    const implicitFloat = 2.2; // number
    const implicitBool = true; // boolean
    const implicitStr = 'example'; // string
    const noType;

    //  explicit
    const numberPrimitive: number;
    const booleanPrimitive: boolean;
    const stringPrimitive: string;
    const symbolPrimitive: symbol;
    const any: any;

    const typeReferenceStringAlias: StringAlias;
    const typeReferenceArrayAlias: ArrayAlias;
    const typeReferenceObjectAlias: ObjectAlias;

    // Object Types
    const object: {
        fieldA: number,
        fieldB: number,
        fieldOptional?: number,
        sub: {a: number, b: number}
    };
    const arrayString: Array<string>;
    const arrayStringAlt: string[];
    const arrayNumberStringUnion: Array<number | string>;
    const tupleNumberString: [number, string];
    const fnNumberStringVoid: (number, string) => void;
    const fnNumberTVoidTypeParam: <T>(number, T) => void;
    const constructorType: new (a: string) => void;

    // Union Types
    const nullableNumber: null | number;
    const undefineableNumber: undefined | number;
    const undefineableNullableNumber: undefined | null | number;

    // Type Query
    const typeQueryImplicitStr: typeof implicitStr;
    const typeQueryObject: typeof object;

}