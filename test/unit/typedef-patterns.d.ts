/**
 * Test coverage for typedef-related patterns:
 * - Callable typedefs (types with call signatures)
 * - Constructable typedefs (types with construct signatures)
 * - Mixed patterns (call + construct + properties)
 * - Abstract wrapper candidates
 */
export namespace TypedefPatterns {

    // --- Callable typedefs ---

    // Simple callable: type that is just a function
    type SimpleCallable = (x: string) => number;

    // Callable with overloads
    interface OverloadedCallable {
        (x: string): string;
        (x: number): number;
    }

    // Callable with properties (common JS pattern: function with attached fields)
    interface CallableWithProps {
        (input: string): boolean;
        version: string;
        configure(opts: { debug: boolean }): void;
    }

    // --- Constructable typedefs ---

    // Simple constructor type
    type Constructor<T> = new (...args: any[]) => T;

    // Constructor with properties (e.g. static-like members)
    interface WidgetFactory {
        new(name: string): Widget;
        defaultName: string;
        create(name: string): Widget;
    }

    interface Widget {
        name: string;
        render(): void;
    }

    // Both callable and constructable
    interface CallableAndConstructable {
        (x: string): number;
        new(x: string): object;
        type: string;
    }

    // Abstract construct signature (TS 4.2)
    type AbstractConstructor<T> = abstract new (...args: any[]) => T;

    // --- Constructor type used as parameter ---
    function createInstance<T>(ctor: Constructor<T>): T;
    function createWidget(factory: WidgetFactory): Widget;

    // --- Enum abstract fields: should be final, not var ---
    // (Covered by existing enum tests, but verify here too)
    const enum Direction {
        Up = "UP",
        Down = "DOWN",
        Left = "LEFT",
        Right = "RIGHT"
    }

    enum NumericDirection {
        North = 0,
        South = 1,
        East = 2,
        West = 3
    }
}
