declare class BaseClass {
    intField: number;
    arrayField: Array<string>;
    thisClassType: this;

    readonly readonlyField: number;

    constructor(a: number);
    
    method(a: number, b: string);

    methodOverloaded(a: number);
    methodOverloaded(a: string, b: Array<{}>);

    get property(): boolean;
    set property(value: boolean);

}