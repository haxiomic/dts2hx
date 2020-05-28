/**
 * See https://github.com/microsoft/TypeScript/blob/master/doc/spec.md#23-declarations
 * 
 * List of possible combinations
 * https://www.typescriptlang.org/docs/handbook/declaration-merging.html#basic-concepts
 * 
 * The 3 kinds of declarations possible, all using the same name 
 */
export const ValueTypedefNamespace: string;
export type ValueTypedefNamespace = number;
export namespace ValueTypedefNamespace {
    type Y = string;
}


export type TypedefValueModule = number;
export namespace TypedefValueModule {
    const X: number;
    type Y = string;
}


export enum EnumValueModule { A, B }
export namespace EnumValueModule {
    const X: number;
    type Y = string;
}


export class ClassValueModule {
    constructor(i: number);
    field: string;
    static staticField: number;
}
export namespace ClassValueModule {
    const X: number;
    function Fn(overloadParam: number): number;
    function Fn(): number;
    type Y = string;
}
export function ClassValueModule(arg: number);


export interface InterfaceValueModule { field: string }
export namespace InterfaceValueModule {
    const X: number;
    type Y = string;
}

interface BaseInterface {
    baseInterfaceField: number;
    baseInterfaceMethod(): void;
}
export class BaseClass { 
    baseClassField: number;
    baseClassMethod(): void;
}

export interface MergedInterfaceClass { interfaceField1: number; }
export interface MergedInterfaceClass extends BaseInterface { interfaceField2: number; }
export class MergedInterfaceClass extends BaseClass {
    classField: string;
    /**
     * Redefine a base interface field
     */
    baseInterfaceMethod(): number;
    /**
     * Redefine a base class field
     */
    baseClassMethod(): number;
    constructor()
}


export interface CallableInterface {
    field: string;
    (anotherSignature): number;
}
export function CallableInterface(overloadParam: number): number;
export function CallableInterface(): number;

export function FunctionValueModule(): number;
export namespace FunctionValueModule {
    const X: number;
}

export const ConstructorTypeAnon: {
    prototype: ConstructorTypeAnon;
    new(): ConstructorTypeAnon;
    (constructorTypeCallParam: number): void;
    [constructorTypeIndex: number]: string;
    constructorTypeField: string;
};
export type ConstructorTypeAnon = {
    anonTypeField: number;
}

export const ConstructorTypeInterface: {
    new(constructorTypeParam: boolean[]): ConstructorTypeInterface;
    (callSignatureParam: number): void;
    constructorTypeField: string;
};
export interface ConstructorTypeInterface {
    [interfaceIndex: number]: string;
    (interfaceCallParam): void;
    new(overloadNewParam: string): ConstructorTypeInterface;
    interfaceField: number;
}


export class ExampleClass {

    constructor(exampleClassParam: string);

}

export const ConstructorTypeClassAlias: {
    prototype: ConstructorTypeClassAlias;
    new(constructorTypeParam: boolean[]): ConstructorTypeClassAlias;
    (constructorTypeCallParam: number): void;
    [constructorTypeIndex: number]: string;
    constructorTypeField: string;
};
export type ConstructorTypeClassAlias = ExampleClass;

export type NameClash = String;
export class Nameclash {}
export namespace nameclash {
    const field: string;
}

export class UseNameClash {
    fieldType: NameClash;
    fieldClass: Nameclash;
}