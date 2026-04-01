/**
 * Union and intersection type coverage, including edge cases
 * and combinations with other type constructs.
 */
export namespace UnionsIntersections {

    // Basic unions
    type StringOrNumber = string | number;
    type Nullable<T> = T | null;
    type Maybe<T> = T | undefined;
    type NullableString = string | null | undefined;

    // Discriminated unions
    interface Circle { kind: 'circle'; radius: number; }
    interface Square { kind: 'square'; size: number; }
    interface Triangle { kind: 'triangle'; base: number; height: number; }
    type Shape = Circle | Square | Triangle;

    // Union with functions
    type StringOrFunction = string | ((x: number) => string);
    type CallbackOrValue<T> = T | ((error: Error) => T);

    // Basic intersections
    type Named = { name: string };
    type Aged = { age: number };
    type Person = Named & Aged;

    // Intersection with interfaces
    interface Serializable { serialize(): string; }
    interface Loggable { log(): void; }
    type SerializableAndLoggable = Serializable & Loggable;

    // Complex combinations
    type ComplexUnion = (string & { brand: 'special' }) | number;
    type UnionOfIntersections = (Named & Aged) | (Named & Serializable);
    type IntersectionOfUnions = (string | number) & (string | boolean);

    // Nested nullability
    type DeepNullable = { a: string | null; b: { c: number | undefined } };

    // Variables
    const shape: Shape;
    const person: Person;
    const nullable: NullableString;
    function processShape(s: Shape): string;
    function processUnion(x: string | number | boolean): void;
}
