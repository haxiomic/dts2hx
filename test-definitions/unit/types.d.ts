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
declare namespace Types {

    type StringAlias = string;
    type ArrayAlias = Array<string>;
    type ObjectAlias = typeof object;
    type AliasWithTypeParam<K, V> = Map<K, V>;

    // Primitive Types
    //  implicit
    const implicitInt = 2; // number
    const implicitFloat = 2.2; // number
    const implicitBool = true; // boolean
    const implicitStr = 'example'; // string
    // const implicitBigInt = 9007199254740991n; ESNext+
    const noType;

    //  explicit
    const numberPrimitive: number;
    const booleanPrimitive: boolean;
    const stringPrimitive: string;
    const stringObjectPrimitive: String;
    const numberObjectPrimitive: Number;
    const symbolPrimitive: symbol;
    const any: any;

    // literals
    const intLiteral: 1;
    const floatLiteral: 1.1;
    const booleanLiteral: false;
    const stringLiteral: 'example';

    const typeReferenceStringAlias: StringAlias;
    const typeReferenceArrayAlias: ArrayAlias;
    const typeReferenceObjectAlias: ObjectAlias;
    const typeReferenceAliasWithTypeParam: AliasWithTypeParam<string, number>;

    // Object Types
    const object: {
        fieldA: number,
        fieldB: number,
        fieldArrayAlias: ArrayAlias,
        fieldOptional?: number,
        ['computedFieldName']: string,
        sub: {a: number, b: number},
        methodSignature<T>(a: T): void,
        methodProperty: <T>(a: T) => void,
        methodSignatureOptional?(): string,
        readonly readonlyField: string,
    };
    const stringMap: {
        [key: string]: number,
        field: number,
    };
    const arrayString: Array<string>;
    const arrayStringAlt: string[];
    const stringObj: String;
    const arrayNumberStringUnion: Array<number | string>;
    const tupleNumberString: [number, string];

    // Functions
    const arrowNumberStringVoid: (a: number, noType) => void;
    const arrowNumberTVoidTypeParam: <T>(a: number, tparam: T) => void;
    const arrowParamWithRest: (a: number, b: number, ...rest: Array<number>) => void;
    const arrowParamObjectBindingPattern: ({ x: number , y: string }) => void;
    function functionImplicit(x, y);
    function functionNumberStringVoidAlt (a: number, b: string): void;
    function functionNumberTVoidTypeParamAlt<T>(a: number, tparam: T): void;
    function overloadedFunction(a: number);
    function overloadedFunction(a: string);
    function overloadedFunction(a: Array<symbol>);
    function overloadedFunction<T, U>(a: Array<symbol>, u: U): T;

    const constructorType: new (a: string) => void;

    // Union Types
    const nullableNumber: null | number;
    const undefineableNumber: undefined | number;
    const undefineableNullableNumber: undefined | null | number;

    // Intersection Types
    const extendedObject: typeof object & {extendedField: number};

    // Type Query
    const typeQueryImplicitStr: typeof implicitStr;
    const typeQueryObject: typeof object;
    const typeQueryNoType: typeof noType;

    // Type reference enum
    type EnumValueAlias = ExampleEnum.A;

    enum ExampleEnum {
        A = 1,
        B = 2
    }

    // FirstTypeNode
    function firstTypeFunction(node: {}): node is string;

}