// Tests: index signatures, generics, declaration merging patterns

// String index signature → should map to DynamicAccess
export interface StringMap<T> {
    [key: string]: T;
}

// Number index signature → should map to array-like access
export interface NumberMap<T> {
    [index: number]: T;
    readonly length: number;
}

// Mixed: index sig + named fields
export interface Config {
    [key: string]: string | number | boolean;
    host: string;
    port: number;
    debug: boolean;
}

export function createStringMap<T>(entries: [string, T][]): StringMap<T> {
    const map: StringMap<T> = {};
    for (const [k, v] of entries) map[k] = v;
    return map;
}

export function getFromMap<T>(map: StringMap<T>, key: string): T | undefined {
    return map[key];
}

export function createConfig(host: string, port: number, debug: boolean): Config {
    return { host, port, debug };
}

// Stack class — tests class with generics and method chaining
export class Stack<T> {
    private items: T[] = [];

    push(item: T): this {
        this.items.push(item);
        return this;
    }

    pop(): T | undefined {
        return this.items.pop();
    }

    peek(): T | undefined {
        return this.items[this.items.length - 1];
    }

    get size(): number {
        return this.items.length;
    }

    toArray(): T[] {
        return [...this.items];
    }

    static from<T>(items: T[]): Stack<T> {
        const s = new Stack<T>();
        for (const item of items) s.push(item);
        return s;
    }
}
