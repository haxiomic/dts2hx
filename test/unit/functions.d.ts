/**
 * Function signature coverage: parameters, overloads, optional params,
 * rest params, generics, return types.
 * Tests the getExpandedParameters handling (TS 4.0+).
 */
export namespace Functions {

    // Basic signatures
    function noParams(): void;
    function oneParam(a: string): number;
    function multiParam(a: string, b: number, c: boolean): void;

    // Optional parameters
    function optionalParam(a: string, b?: number): void;
    function allOptional(a?: string, b?: number): void;
    function optionalWithDefault(a: string, b?: number): string;

    // Rest parameters
    function restParam(...args: number[]): void;
    function restWithLeading(a: string, ...rest: number[]): void;

    // Overloaded functions
    function overloaded(a: string): string;
    function overloaded(a: number): number;
    function overloaded(a: boolean): boolean;

    // Generic functions
    function identity<T>(x: T): T;
    function pair<A, B>(a: A, b: B): [A, B];
    function constrained<T extends string>(x: T): T;
    function multiConstrained<T extends string, U extends number>(a: T, b: U): void;

    // Function types as parameters
    function takesCallback(cb: (error: Error | null, result: string) => void): void;
    function returnsFunction(): (x: number) => string;

    // Complex return types
    function returnsUnion(): string | number;
    function returnsIntersection(): { a: number } & { b: string };
    function returnsPromiseLike(): PromiseLike<string>;
    function returnsArray(): Array<string>;
    function returnsVoid(): void;
    function returnsNever(): never;

    // Method signatures in interfaces
    interface WithMethods {
        simple(): void;
        withParams(a: string, b: number): boolean;
        optional?(a: string): void;
        overloaded(a: string): string;
        overloaded(a: number): number;
        generic<T>(x: T): T;
        readonly readonlyProp: string;
    }

    // Function type aliases
    type Callback = (error: Error | null, result: string) => void;
    type GenericCallback<T> = (error: Error | null, result: T) => void;
    type Predicate<T> = (value: T) => boolean;
    type Mapper<T, U> = (value: T, index: number) => U;

    // Callable interfaces
    interface CallableInterface {
        (x: string): number;
        (x: number): string;
        field: string;
    }

    // Construct signatures
    interface Constructable {
        new(x: string): { value: string };
    }
}
