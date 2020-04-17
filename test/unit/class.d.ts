export class ClassBase<T> {
    intField: number;
    arrayField: Array<string>;
    thisClassType: this;
    typeParamField: T;

    readonly readonlyField: number;

    constructor(overloadParam: T)
    constructor(a: number);
    
    method(a: number, b: string);

    methodOverloaded(a: number);
    methodOverloaded(a: string, b: Array<{}>);

    get property(): boolean;
    set property(value: boolean);

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