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

    // Primitive Types
    const int = 2; // number
    const float = 2.2; // number
    const bool = true; // boolean
    const str = 'example'; // string
    const symbolPrimitive: symbol;
    const any: any;

    // Object Types
    const object: { fieldA: number, fieldB: number, sub: {a: number, b: number} };
    const arrayString: Array<string>;
    const arrayNumberStringUnion: Array<number | string>;
    const tupleNumberString: [number, string];
    const fnNumberStringVoid: (number, string) => void;
    const fnNumberTVoidTypeParam: <T>(number, T) => void;
    const constructType: new (a: string) => void;

    // Type Query
    const typeQueryStr: typeof str;
    const typeQueryObject: typeof object;

}