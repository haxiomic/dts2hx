export class ClassBase<T> {
    intField: number;
    arrayField: Array<string>;
    thisClassType: this;
    typeParamField: T;

    typeofSelf: typeof ClassBase;

    readonly readonlyField: number;
    
    // this field has a special name in typescript; we want to make sure it's not mistaken for the constructor
    __constructor(example: string): void;

    constructor(overloadParam: T)
    constructor(a: number);

    
    method(a: number, b: string);

    methodOverloaded(a: number);
    methodOverloaded(a: string, b: Array<{}>);

    get accessor(): boolean;
    set accessor(value: boolean);

    [Symbol.iterator](): IterableIterator<[string, number]>;

    static staticMethod<T>(a: number): T;
    static staticField: number;
}

export class ClassExtending<K> extends ClassBase<Array<K>> {
    additionalField: number;
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