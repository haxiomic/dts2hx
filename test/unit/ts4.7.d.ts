/**
 * TS 4.7: Variance annotations (in/out on type params), infer extends constraints
 */
export namespace TS47 {

    // Variance annotations
    interface Getter<out T> {
        get(): T;
    }
    interface Setter<in T> {
        set(value: T): void;
    }
    interface State<in out T> {
        get(): T;
        set(value: T): void;
    }

    // infer with extends constraint
    type FirstIfString<T> = T extends [infer S extends string, ...unknown[]] ? S : never;
    type Result1 = FirstIfString<[string, number]>;   // string
    type Result2 = FirstIfString<[boolean, number]>;  // never

    // Instantiation expressions
    const errorMap: Map<string, Error>;

    const getter: Getter<string>;
    const setter: Setter<number>;
    const state: State<boolean>;
}
