export interface Interface {
    field: Array<any>;
    exampleMethod(a: number): void;
    exampleOptionalMethod?(a: number): void;

    /**
     * Example construct signatures
     */
    new ( a: string ): Interface;
    new ( b: number, x: boolean ): Interface;

    /**
     * this method is named to clash with the special generated `call()` method used for call signatures
     */
    call(b: boolean): any;

    // call signatures
    (array: Array<this>): any;
    <T>(a: T, b: string): this;
}

export interface InterfaceMapLike<T> {
    [key:string]: T,
}

export interface InterfaceArrayLike<T> {
    [key:number]: T,
}

export interface InterfaceArrayLikeMultiDeclarations {
    [key:number]: string,
}

export const InterfaceArrayLikeMultiDeclarations: {a: number};

export interface InterfaceWithSignatureAndField {
    [key:string]: number,
    field: number,
}

export interface InterfaceWithMultiSignature<T> {
    [key:string]: T,
    [key:number]: T,
}

// https://basarat.gitbooks.io/typescript/docs/types/index-signatures.html#design-pattern-nested-index-signature
export interface InterfaceNested {
  color?: string;
  [selector: string]: string | InterfaceNested | undefined;
}

export interface InterfaceExtends<T> extends InterfaceMapLike<T> {
    additionalField: T,
}

export interface InterfaceExtendsWithRedefinition extends Interface {
    field: Array<number>;
}


interface Error {
    name: string;
    message: string;
    stack?: string;
}

/**
 * CallSignature and Constructor
 * from lib.es5.d.ts
 */
interface ErrorConstructor {
    new(message?: string): Error;
    (message?: string): Error;
    readonly prototype: Error;
}

/**
 * Extends clause
 */
interface Base1 {
    field1: number;
}
interface Base2 {
    field2: number;
}
interface Base3 {
    field3: number;
}
interface Extends3 extends Base1, Base2 {
    x: number;
}
interface Extends3 extends Base3 {
    y: number;
}

/**
 * reproducing issue with react Component
 */
export interface InterfaceClassParamMismatch<P = {}, S = {}, SS = any> {
    interfaceFieldP: P;
    interfaceFieldS: S;
    interfaceFieldSS: SS;
}
export class InterfaceClassParamMismatch<P, S> {
    classFieldP: P;
    classFieldS: S;
}


/**
 * An interface which has no fields, only function signatures. This typically means this is functionally used as a function type
 * 
 * See https://github.com/haxiomic/dts2hx/issues/73
 */
export interface FunctionTypeInterface<T> {
    (err: null, data: T): void;
    (err: Error): void;
}

/**
 * Extend as another function type
 */
export interface FunctionTypeInterfaceExtended<K> extends FunctionTypeInterface<K> {
    (anotherSignature: string): void;
}

/**
 * Extend as a regular interface
 */
export interface FunctionTypeInterfaceExtendedWithField<K> extends FunctionTypeInterface<K> {
    someField: K;
}