// D1: Test harness for mixed index signatures + named fields
// Tests every combination of index signatures with named properties

// Pure string index (baseline — already works)
export interface PureStringIndex {
    [key: string]: number;
}

// Pure number index (baseline — already works when no named fields)
export interface PureNumberIndex {
    [index: number]: string;
}

// String index + one named field
export interface ConfigLike {
    [key: string]: string | number | boolean;
    name: string;
}

// String index + multiple named fields
export interface EnvVars {
    [key: string]: string | undefined;
    HOME: string;
    PATH: string;
    USER: string;
}

// String index + methods
export interface EventHandlers {
    [event: string]: ((...args: any[]) => void) | undefined;
    click: (x: number, y: number) => void;
    keydown: (key: string) => void;
}

// Number index + length (Array-like)
export interface ArrayLike<T> {
    [index: number]: T;
    readonly length: number;
}

// Number index + multiple named fields
export interface TypedArray {
    [index: number]: number;
    readonly length: number;
    readonly byteLength: number;
    slice(start?: number, end?: number): TypedArray;
}

// Both string and number index + named fields
export interface HybridCollection {
    [key: string]: any;
    [index: number]: string;
    length: number;
    name: string;
}

// Runtime implementations for testing
export function createConfigLike(name: string, extras: Record<string, any>): ConfigLike {
    return { name, ...extras };
}

export function createEnvVars(): EnvVars {
    return { HOME: '/home/user', PATH: '/usr/bin', USER: 'test', TERM: 'xterm' };
}

export function createArrayLike<T>(...items: T[]): ArrayLike<T> {
    const result: any = {};
    for (let i = 0; i < items.length; i++) result[i] = items[i];
    result.length = items.length;
    return result;
}

export function getConfigValue(config: ConfigLike, key: string): string | number | boolean | undefined {
    return config[key];
}

export function getEnvVar(env: EnvVars, key: string): string | undefined {
    return env[key];
}

export function getArrayItem<T>(arr: ArrayLike<T>, index: number): T {
    return arr[index];
}
