// A small TypeScript library exercising various type constructs.
// This gets compiled to JS (runtime) + .d.ts (types for dts2hx).

export function add(a: number, b: number): number {
    return a + b;
}

export function greet(name: string): string {
    return `Hello, ${name}!`;
}

export function identity<T>(value: T): T {
    return value;
}

export function optionalParam(required: string, optional?: number): string {
    return optional !== undefined ? `${required}:${optional}` : required;
}

export const PI = 3.14159;

export enum Direction {
    Up = "UP",
    Down = "DOWN",
    Left = "LEFT",
    Right = "RIGHT"
}

export function directionToString(d: Direction): string {
    return d;
}

export class Counter {
    private _count: number;

    constructor(initial: number = 0) {
        this._count = initial;
    }

    increment(): number {
        return ++this._count;
    }

    decrement(): number {
        return --this._count;
    }

    get value(): number {
        return this._count;
    }

    reset(): void {
        this._count = 0;
    }

    static create(initial?: number): Counter {
        return new Counter(initial);
    }
}

export interface Point {
    x: number;
    y: number;
}

export function distance(a: Point, b: Point): number {
    return Math.sqrt((a.x - b.x) ** 2 + (a.y - b.y) ** 2);
}

export type Pair<A, B> = { first: A; second: B };

export function makePair<A, B>(a: A, b: B): Pair<A, B> {
    return { first: a, second: b };
}

export function swap<A, B>(pair: Pair<A, B>): Pair<B, A> {
    return { first: pair.second, second: pair.first };
}

export type Result<T, E = Error> =
    | { success: true; value: T }
    | { success: false; error: E };

export function ok<T>(value: T): Result<T> {
    return { success: true, value };
}

export function fail<E>(error: E): Result<never, E> {
    return { success: false, error };
}

export function mapArray<T, U>(arr: T[], fn: (item: T, index: number) => U): U[] {
    return arr.map(fn);
}

export type Callback<T> = (error: Error | null, result: T) => void;

export function asyncOp<T>(value: T, cb: Callback<T>): void {
    cb(null, value);
}
