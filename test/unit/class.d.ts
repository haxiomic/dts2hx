declare class ClassBase<T> {
    intField: number;
    arrayField: Array<string>;
    thisClassType: this;
    typeParamField: T;

    readonly readonlyField: number;

    constructor(a: number);
    
    method(a: number, b: string);

    methodOverloaded(a: number);
    methodOverloaded(a: string, b: Array<{}>);

    get property(): boolean;
    set property(value: boolean);
}

declare class ClassExtending<K> extends ClassBase<Array<K>> {
    additionalField: number;
}

declare class ClassWithIndexSignature {
    [key: string]: number,
}

declare class CallbleClass {
    field: number;
}

declare function CallbleClass(arg: number);