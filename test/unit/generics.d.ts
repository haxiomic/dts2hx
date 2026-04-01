/**
 * Generics coverage: constraints, defaults, complex bounds,
 * conditional types, utility types.
 */
export namespace Generics {

    // Basic generics
    interface Container<T> {
        value: T;
        map<U>(fn: (value: T) => U): Container<U>;
    }

    // Default type parameters
    interface WithDefault<T = string> {
        value: T;
    }
    interface WithMultipleDefaults<T = string, U = number> {
        a: T;
        b: U;
    }

    // Constrained generics
    interface Lengthwise {
        length: number;
    }
    function loggingIdentity<T extends Lengthwise>(arg: T): T;
    function getProperty<T, K extends keyof T>(obj: T, key: K): T[K];

    // Conditional types
    type IsString<T> = T extends string ? true : false;
    type NonNullable_<T> = T extends null | undefined ? never : T;
    type ExtractString<T> = T extends string ? T : never;
    type ReturnType_<T> = T extends (...args: any[]) => infer R ? R : never;

    // Recursive generics
    interface TreeNode<T> {
        value: T;
        children: TreeNode<T>[];
    }
    type DeepPartial<T> = {
        [K in keyof T]?: T[K] extends object ? DeepPartial<T[K]> : T[K];
    };

    // Utility type usage
    type StringOrNumber = string | number;
    type JustString = Extract<StringOrNumber, string>;
    type NoString = Exclude<StringOrNumber, string>;

    // Multiple constraints via intersection
    function multiConstrain<T extends Lengthwise & { name: string }>(arg: T): T;

    // Generic classes
    class GenericClass<T> {
        value: T;
        constructor(value: T);
        getValue(): T;
        setValue(value: T): void;
        transform<U>(fn: (value: T) => U): GenericClass<U>;
    }

    // Generic type aliases
    type Nullable<T> = T | null;
    type Dictionary<T> = { [key: string]: T };
    type Awaited_<T> = T extends PromiseLike<infer U> ? U : T;
}
