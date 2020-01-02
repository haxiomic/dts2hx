declare class BaseClass {
    intField: number;
    arrayField: Array<string>;
    thisClassType: this;

    constructor(a: number);
    
    method(a: number, b: string);

    methodOverloaded(a: number);
    methodOverloaded(a: string, b: Array<{}>);

    get property(): boolean;
    set property(value: boolean);
}