export class ClassBase<T, DefaultBool = boolean> {
    intField: number;
    arrayField: Array<string>;
    thisClassType: this;
    typeParamField: T;
    defaultBoolField: DefaultBool;

    typeofSelf: typeof ClassBase;

    readonly readonlyField: number;
    
    /**
     * This field has a special name in typescript; we want to make sure it's not mistaken for the constructor
     */
    __constructor(example: string): void;

    constructor(overloadParam: T)
    constructor(a: number);

    
    method(a: number, b: string);
    
    /** single parameter signature */
    methodOverloaded(a: number);
    /** multi-parameter signature */
    methodOverloaded(a: string, b: Array<{}>);

    get accessor(): boolean;
    set accessor(value: boolean);

    /**
     * should be readonly
     */
    get getOnlyAccessor(): number;

    set setOnlyAccessor(v: number);

    [Symbol.iterator](): IterableIterator<[string, number]>;

    static staticMethod<T>(a: number): T;
    static staticField: number;
}

export namespace ClassBase {
    const namespaceField: string;
}

export class ClassExtends<K> extends ClassBase<Array<K>> {
    additionalField: number;
}

export class ClassExtendsWithRedefine extends ClassBase<number> {
    defaultBoolField: true;
}

export class ClassWithIndexSignature {
    [key: string]: number,
}

export class CallbleClass {
    field: number;
}
export function CallbleClass(arg: number);

export class ClassWithValueModule {
    field: number;
}
export namespace ClassWithValueModule {
    const valueModuleField: string;
}