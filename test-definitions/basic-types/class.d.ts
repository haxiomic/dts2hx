declare class BaseClass {
    intField: number;
    arrayField: Array<string>;

    constructor(a: number);
    
    method(a: number, b: string);

    methodOverloaded(a: number);
    methodOverloaded(a: string, b: Array<{}>);
}