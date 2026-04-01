/**
 * TypeScript 4.1 features:
 * - Template literal types
 * - Key remapping in mapped types (as clause)
 * - Recursive conditional types
 * - Intrinsic string manipulation types
 */
export namespace TS41 {

    // Template literal types
    type Greeting = `hello ${string}`;
    type EventName<T extends string> = `${T}Changed`;
    type CssValue = `${number}px` | `${number}em` | `${number}%`;

    // Intrinsic string manipulation
    type Upper = Uppercase<'hello'>;       // "HELLO"
    type Lower = Lowercase<'HELLO'>;       // "hello"
    type Cap = Capitalize<'hello'>;        // "Hello"
    type Uncap = Uncapitalize<'Hello'>;    // "hello"

    // Key remapping with `as`
    interface Person {
        name: string;
        age: number;
        email: string;
    }
    type Getters<T> = {
        [K in keyof T as `get${Capitalize<string & K>}`]: () => T[K];
    };
    type PersonGetters = Getters<Person>;

    // Recursive conditional types
    type ElementType<T> = T extends ReadonlyArray<infer U> ? ElementType<U> : T;
    type Deep = ElementType<string[][][]>;  // string
    type Shallow = ElementType<string>;     // string

    // Practical uses
    type Awaited_<T> = T extends PromiseLike<infer U> ? Awaited_<U> : T;
    type AwaitedString = Awaited_<Promise<Promise<string>>>;  // string

    // Variables using these types
    const greeting: Greeting;
    const upper: Upper;
    const deep: Deep;
}
