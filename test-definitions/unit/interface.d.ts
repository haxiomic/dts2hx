declare interface Interface {
    exampleMethod(a: number): void;
    exampleOptionalMethod?(a: number): void;
}

declare interface InterfaceWithSignature {
    [key:string]: number,
    field: number,
}

// https://basarat.gitbooks.io/typescript/docs/types/index-signatures.html#design-pattern-nested-index-signature
declare interface InterfaceNested {
  color?: string;
  [selector: string]: string | InterfaceNested | undefined;
}