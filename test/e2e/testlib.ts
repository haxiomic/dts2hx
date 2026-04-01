// Comprehensive TypeScript library for end-to-end testing.
// Covers type constructs from all unit test files.

// === Basic functions (functions.d.ts) ===

export function add(a: number, b: number): number { return a + b; }
export function greet(name: string): string { return `Hello, ${name}!`; }
export function identity<T>(value: T): T { return value; }
export function optionalParam(required: string, optional?: number): string {
    return optional !== undefined ? `${required}:${optional}` : required;
}
export function restParam(...args: number[]): number { return args.reduce((a,b) => a+b, 0); }
export function restWithLeading(a: string, ...rest: number[]): string {
    return `${a}:${rest.join(',')}`;
}

// Overloaded function
export function overloaded(a: string): string;
export function overloaded(a: number): number;
export function overloaded(a: any): any { return a; }

// Generic functions
export function pair<A, B>(a: A, b: B): [A, B] { return [a, b]; }
export function constrained<T extends string>(x: T): T { return x; }

// Higher-order functions
export function takesCallback(cb: (error: Error | null, result: string) => void): void {
    cb(null, "success");
}
export function returnsFunction(): (x: number) => string {
    return (x) => `value:${x}`;
}
export function mapArray<T, U>(arr: T[], fn: (item: T, index: number) => U): U[] {
    return arr.map(fn);
}

// === Constants and enums (enum.d.ts, modules.d.ts) ===

export const PI = 3.14159;
export const VERSION = "1.0.0";

export enum Direction {
    Up = "UP", Down = "DOWN", Left = "LEFT", Right = "RIGHT"
}
export function directionToString(d: Direction): string { return d; }

export enum NumericEnum { A = 0, B = 1, C = 2 }

export const enum ConstEnum { X = 10, Y = 20, Z = 30 }

// === Classes (class.d.ts) ===

export class Counter {
    private _count: number;
    constructor(initial: number = 0) { this._count = initial; }
    increment(): number { return ++this._count; }
    decrement(): number { return --this._count; }
    get value(): number { return this._count; }
    reset(): void { this._count = 0; }
    static create(initial?: number): Counter { return new Counter(initial); }
}

export class Animal {
    constructor(public name: string, public legs: number) {}
    describe(): string { return `${this.name} has ${this.legs} legs`; }
}

export class Dog extends Animal {
    constructor(name: string) { super(name, 4); }
    bark(): string { return "Woof!"; }
}

// === Interfaces / structural types (interface.d.ts, types.d.ts) ===

export interface Point { x: number; y: number; }
export function distance(a: Point, b: Point): number {
    return Math.sqrt((a.x - b.x) ** 2 + (a.y - b.y) ** 2);
}
export function makePoint(x: number, y: number): Point { return { x, y }; }

export interface Named { name: string; }
export interface Aged { age: number; }
export type Person = Named & Aged;
export function describePerson(p: Person): string { return `${p.name}, age ${p.age}`; }

// === Generics (generics.d.ts) ===

export interface Container<T> {
    value: T;
}
export function wrapValue<T>(value: T): Container<T> { return { value }; }
export function unwrapValue<T>(container: Container<T>): T { return container.value; }

export type Pair<A, B> = { first: A; second: B };
export function makePair<A, B>(a: A, b: B): Pair<A, B> { return { first: a, second: b }; }
export function swap<A, B>(pair: Pair<A, B>): Pair<B, A> {
    return { first: pair.second, second: pair.first };
}

export type Nullable<T> = T | null;
export function nullable<T>(value: T | null): Nullable<T> { return value; }

export type Dictionary<T> = { [key: string]: T };
export function makeDict<T>(entries: [string, T][]): Dictionary<T> {
    const dict: Dictionary<T> = {};
    for (const [k, v] of entries) dict[k] = v;
    return dict;
}

// === Mapped types (mapped-types.d.ts) ===

export type RecordOf<K extends string, V> = Record<K, V>;
export function makeRecord<V>(keys: string[], value: V): Record<string, V> {
    const rec: Record<string, V> = {};
    for (const k of keys) rec[k] = value;
    return rec;
}

export function getKeys(obj: Record<string, any>): string[] {
    return Object.keys(obj);
}

export type PartialPoint = Partial<Point>;
export function applyPartialPoint(base: Point, partial: PartialPoint): Point {
    return { x: partial.x ?? base.x, y: partial.y ?? base.y };
}

export type ReadonlyPoint = Readonly<Point>;
export function freezePoint(p: Point): ReadonlyPoint { return Object.freeze(p); }

export interface FullConfig {
    host: string;
    port: number;
    debug: boolean;
    name: string;
}
export type PickedConfig = Pick<FullConfig, 'host' | 'port'>;
export type OmittedConfig = Omit<FullConfig, 'debug'>;
export function pickConfig(config: FullConfig): PickedConfig {
    return { host: config.host, port: config.port };
}

// === Union types (unions-intersections.d.ts) ===

export type StringOrNumber = string | number;
export function doubleIt(x: StringOrNumber): StringOrNumber {
    if (typeof x === 'string') return x + x;
    return x * 2;
}

export interface Circle { kind: 'circle'; radius: number; }
export interface Square { kind: 'square'; size: number; }
export type Shape = Circle | Square;
export function area(shape: Shape): number {
    if (shape.kind === 'circle') return Math.PI * shape.radius ** 2;
    return shape.size ** 2;
}

export type Result<T, E = string> =
    | { success: true; value: T }
    | { success: false; error: E };
export function ok<T>(value: T): Result<T> { return { success: true, value }; }
export function fail<E>(error: E): Result<never, E> { return { success: false, error }; }

// === Tuples (tuples.d.ts) ===

export function firstAndRest<T>(arr: T[]): [T, T[]] {
    return [arr[0], arr.slice(1)];
}
export function tupleToObject(tuple: [string, number]): { name: string; value: number } {
    return { name: tuple[0], value: tuple[1] };
}
export function spreadArgs(...args: [string, number, boolean]): string {
    return `${args[0]},${args[1]},${args[2]}`;
}

// === Callbacks and async patterns ===

export type Callback<T> = (error: Error | null, result: T) => void;
export function asyncOp<T>(value: T, cb: Callback<T>): void { cb(null, value); }

// === Edge cases (edge-cases.d.ts) ===

// Reserved words as field names
export function getReservedFields(): { function: string; class: number; var: boolean } {
    return { function: "fn", class: 42, var: true };
}

// Recursive types
export interface LinkedList<T> {
    value: T;
    next: LinkedList<T> | null;
}
export function makeList<T>(...values: T[]): LinkedList<T> {
    let list: LinkedList<T> | null = null;
    for (let i = values.length - 1; i >= 0; i--) {
        list = { value: values[i], next: list };
    }
    return list!;
}
export function listToArray<T>(list: LinkedList<T>): T[] {
    const arr: T[] = [];
    let node: LinkedList<T> | null = list;
    while (node) { arr.push(node.value); node = node.next; }
    return arr;
}

// Method chaining
export class Builder {
    private parts: string[] = [];
    add(part: string): this { this.parts.push(part); return this; }
    build(): string { return this.parts.join(' '); }
}

