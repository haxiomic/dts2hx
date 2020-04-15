export interface Interface {
    field: Array<any>;
    exampleMethod(a: number): void;
    exampleOptionalMethod?(a: number): void;
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