/**
 * See https://github.com/microsoft/TypeScript/blob/master/doc/spec.md#23-declarations
 * 
 * The 3 kinds of declarations possible, all using the same name 
 */

declare const ValueTypedefNamespace: string;
declare type ValueTypedefNamespace = number;
declare namespace ValueTypedefNamespace {
    type Y = string;
}


declare type TypedefValueModule = number;
declare namespace TypedefValueModule {
    const X: number;
    type Y = string;
}


declare enum EnumValueModule { A, B }
declare namespace EnumValueModule {
    const X: number;
    type Y = string;
}


declare class ClassValueModule { constructor(i: number); field: string; }
declare namespace ClassValueModule {
    const X: number;
    type Y = string;
}


declare interface InterfaceValueModule { field: string }
declare namespace InterfaceValueModule {
    const X: number;
    type Y = string;
}

declare interface MergedInterfaceClass { interfaceField1: number; }
declare interface MergedInterfaceClass { interfaceField2: number; }
declare class MergedInterfaceClass { classField: string; constructor() }