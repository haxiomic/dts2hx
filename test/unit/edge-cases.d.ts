/**
 * Edge cases and tricky patterns that have caused issues.
 */
export namespace EdgeCases {

    // Haxe reserved words as field names
    interface ReservedWords {
        function: string;
        class: number;
        import: boolean;
        var: string;
        switch: number;
        case: string;
        null: boolean;
        true: string;
        false: number;
        this: string;
        new: string;
        in: boolean;
    }

    // Computed property names
    interface ComputedProps {
        ['string-key']: string;
        [42]: number;
    }

    // Index signatures with additional properties
    interface MixedIndex {
        [key: string]: any;
        knownField: string;
        knownMethod(): void;
    }

    // Recursive types
    type Json = string | number | boolean | null | Json[] | { [key: string]: Json };
    interface LinkedList<T> {
        value: T;
        next: LinkedList<T> | null;
    }

    // Circular references between types
    interface NodeA {
        child: NodeB;
    }
    interface NodeB {
        parent: NodeA;
    }

    // Empty types
    interface Empty {}
    type EmptyObject = {};
    type Never = never;

    // Literal types
    type One = 1;
    type Hello = 'hello';
    type True = true;

    // Template literal types (TS 4.1 — may not convert yet, but shouldn't crash)
    // type EventName = `on${string}`;

    // Symbols
    const sym: unique symbol;
    interface WithSymbol {
        [sym]: string;
    }

    // this type
    class Chainable {
        setName(name: string): this;
        setValue(value: number): this;
        build(): string;
    }

    // Void in different positions
    type VoidFunction_ = () => void;
    type VoidParam = (x: void) => void;
    type VoidArray = Array<void>;

    // Very long type (filesystem path length limits)
    type LongUnion = 'a' | 'b' | 'c' | 'd' | 'e' | 'f' | 'g' | 'h' | 'i' | 'j' | 'k' | 'l' | 'm' | 'n' | 'o' | 'p';

    // Multiple call signatures
    interface Overloaded {
        (x: string): string;
        (x: number): number;
        (x: string, y: number): boolean;
    }

    // Getter/setter
    class WithAccessors {
        get name(): string;
        set name(value: string);
        get readonlyProp(): number;
    }

    // Numeric property names (should produce @:native("50") var _50)
    interface NumericKeys {
        50: string;
        100: number;
        0: boolean;
    }

    // Underscore-only identifiers
    type _ = string;
    const _: string;

    // Void in unions (should simplify: void | number -> number, void | string -> string)
    type VoidOrNumber = void | number;
    type VoidOrString = void | string;
    type VoidOrComplex = void | { field: string };
    const voidUnion: void | number;
    function returnsVoidUnion(): void | string;
}
