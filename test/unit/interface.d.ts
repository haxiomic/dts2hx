declare interface Interface {
    exampleMethod(a: number): void;
    exampleOptionalMethod?(a: number): void;
}

declare interface InterfaceMapLike<T> {
    [key:string]: T,
}

declare interface InterfaceArrayLike<T> {
    [key:number]: T,
}

declare interface InterfaceArrayLikeMultiDeclarations {
    [key:number]: string,
}

declare const InterfaceArrayLikeMultiDeclarations: {a: number};

declare interface InterfaceWithSignatureAndField {
    [key:string]: number,
    field: number,
}

declare interface InterfaceWithMultiSignature<T> {
    [key:string]: T,
    [key:number]: T,
}

// https://basarat.gitbooks.io/typescript/docs/types/index-signatures.html#design-pattern-nested-index-signature
declare interface InterfaceNested {
  color?: string;
  [selector: string]: string | InterfaceNested | undefined;
}