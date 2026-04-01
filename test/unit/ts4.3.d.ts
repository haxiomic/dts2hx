/**
 * TS 4.3: Separate getter/setter types, override keyword, static index signatures
 */
export namespace TS43 {

    // Separate getter/setter types
    interface DifferentAccessors {
        get size(): number;
        set size(value: number | string | boolean);
    }

    class DifferentAccessorsClass {
        get name(): string;
        set name(value: string | number);
    }

    // Override keyword
    class Base {
        greeting: string;
        greet(): string;
    }
    class Derived extends Base {
        override greet(): string;
    }

    // Static index signatures
    class StaticIndex {
        static [key: string]: string | ((s: string) => void);
        static hello: string;
        static world: string;
    }

    const accessors: DifferentAccessors;
}
