// F1: Circular/deeply recursive types
export interface DeepRecursive<T> {
    value: T;
    child: DeepRecursive<DeepRecursive<DeepRecursive<DeepRecursive<T>>>>;
}

// F3: Construct signature in typedef
export interface Factory<T> {
    new(value: string): T;
    create(value: string): T;
}

// F5: export = namespace pattern
// (This needs its own file — see cjs-namespace.d.ts)

// C2: Re-export with rename (verify in the extern output)
export { DeepRecursive as AliasedRecursive };
