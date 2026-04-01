// Comprehensive tests for all TS features added across 3.8-6.0
// Each section maps to a specific TS version feature

// === TS 4.1: Template literal types ===
export type EventName = `on${string}`;
export function isEventName(s: string): s is EventName {
    return s.startsWith('on');
}
export function makeEventName(name: string): EventName {
    return `on${name}` as EventName;
}

// === TS 4.1: Intrinsic string types ===
export function toUpper<T extends string>(s: T): Uppercase<T> {
    return s.toUpperCase() as Uppercase<T>;
}
export function toLower<T extends string>(s: T): Lowercase<T> {
    return s.toLowerCase() as Lowercase<T>;
}
export function capitalize<T extends string>(s: T): Capitalize<T> {
    return (s.charAt(0).toUpperCase() + s.slice(1)) as Capitalize<T>;
}

// === TS 4.1: Key remapping in mapped types ===
export interface Config {
    host: string;
    port: number;
    debug: boolean;
}
export type Getters<T> = {
    [K in keyof T as `get${Capitalize<string & K>}`]: () => T[K];
};
// Concrete instantiation for runtime testing
export function makeConfigGetters(config: Config): Getters<Config> {
    return {
        getHost: () => config.host,
        getPort: () => config.port,
        getDebug: () => config.debug,
    };
}

// === TS 4.2: Leading/middle rest in tuples ===
export function headAndTail(...args: [...string[], number]): { strings: string[]; last: number } {
    const last = args[args.length - 1] as number;
    const strings = args.slice(0, -1) as string[];
    return { strings, last };
}

// === TS 4.3: Separate getter/setter types ===
export class FlexibleProp {
    private _value: number = 0;
    get value(): number { return this._value; }
    set value(v: number | string) {
        this._value = typeof v === 'string' ? parseInt(v, 10) : v;
    }
}

// === TS 4.7: Variance annotations ===
export interface Producer<out T> {
    produce(): T;
}
export interface Consumer<in T> {
    consume(value: T): void;
}
export function createProducer<T>(value: T): Producer<T> {
    return { produce: () => value };
}
export function createConsumer<T>(): Consumer<T> & { lastConsumed: T | undefined } {
    const obj = { lastConsumed: undefined as T | undefined, consume(v: T) { obj.lastConsumed = v; } };
    return obj;
}

// === Type parameter constraints ===
export interface HasLength { length: number; }
export function longest<T extends HasLength>(a: T, b: T): T {
    return a.length >= b.length ? a : b;
}
export function firstElement<T>(arr: T[]): T | undefined {
    return arr[0];
}

// === Readonly<T> producing final fields ===
export type ReadonlyConfig = Readonly<Config>;
export function freezeConfig(config: Config): ReadonlyConfig {
    return Object.freeze(config);
}

// === never type ===
export function throwError(message: string): never {
    throw new Error(message);
}
export function assertNever(x: never): never {
    throw new Error(`Unexpected value: ${x}`);
}

// === Construct signatures ===
export class SimpleValue {
    constructor(public readonly value: string) {}
}

// === Tuple rest → Array<T> ===
export function spreadToArray<T>(...args: [string, ...T[]]): { label: string; items: T[] } {
    const [label, ...items] = args;
    return { label, items };
}

// === Index signatures ===
export interface StringDict<T> {
    [key: string]: T;
}
export function createDict<T>(key: string, value: T): StringDict<T> {
    return { [key]: value };
}
export function getFromDict<T>(dict: StringDict<T>, key: string): T | undefined {
    return dict[key];
}

// Number index signature
export interface NumberIndexed<T> {
    [index: number]: T;
    readonly length: number;
}
export function createNumberIndexed<T>(...items: T[]): NumberIndexed<T> {
    return items as any;
}

// === NoInfer<T> (TS 5.4) ===
export function createPalette<C extends string>(
    colors: C[],
    defaultColor: NoInfer<C>
): { colors: C[]; default: C } {
    return { colors, default: defaultColor };
}

// === Recursive conditional types (TS 4.1) ===
export type Flatten<T> = T extends Array<infer U> ? Flatten<U> : T;
// Runtime: flatten nested arrays
export function flatten<T>(arr: any[]): T[] {
    return arr.flat(Infinity) as T[];
}

// === Promise patterns ===
export async function fetchJson<T>(data: T): Promise<T> {
    return data;
}
export function chainPromises(a: number, b: number): Promise<string> {
    return Promise.resolve(a + b).then(sum => `sum:${sum}`);
}
