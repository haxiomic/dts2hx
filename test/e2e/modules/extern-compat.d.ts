// Tests for extern compatibility issues found with three.js r182.
// Each section reproduces a specific dts2hx bug.

// === Bug 1: Construct signatures in structure/interface types ===
// TypeScript allows `new()` in interfaces that become Haxe typedefs.
// Haxe 4.3+ does not allow `function new()` in structure types.
export interface WidgetFactory {
    new(name: string): Widget;
    create(name: string): Widget;
}

export interface Widget {
    name: string;
    value: number;
}

// A class that uses the factory
export function createFactory(): WidgetFactory;

// === Bug 2: Event system with string-constrained type parameters ===
// Three.js pattern: EventDispatcher with keyof constraint on event types.
// The constraint `TEventType extends string` causes issues when dts2hx
// generates structural type params for the string constraint.
export interface SimpleEvent<TType extends string> {
    readonly type: TType;
}

export type SimpleEventListener<TData, TType extends string> = (
    event: TData & SimpleEvent<TType>,
) => void;

export interface DisposableEventMap {
    dispose: {};
    change: { value: number };
}

export class Disposable {
    addEventListener<T extends Extract<keyof DisposableEventMap, string>>(
        type: T,
        listener: SimpleEventListener<DisposableEventMap[T], T>,
    ): void;
    removeEventListener<T extends Extract<keyof DisposableEventMap, string>>(
        type: T,
        listener: SimpleEventListener<DisposableEventMap[T], T>,
    ): void;
    dispose(): void;
}

// === Bug 3: Built-in types with changed parameter counts ===
// TS 5.6+ changed Iterator from Iterator<T> to Iterator<T, TReturn, TNext>.
// Haxe's built-in Iterator has 1 type param. dts2hx should not pass extra params.
export interface DataProcessor {
    processIterator<T>(iter: Iterator<T>): T[];
    processIterable<T>(iter: Iterable<T>): T[];
}
