// Tests: various export patterns, typeof, constructor types

// Default export alongside named exports
export default class DefaultClass {
    value: string;
    constructor(value: string) { this.value = value; }
    toString(): string { return `Default(${this.value})`; }
}

// typeof in type position
export const sampleConfig = {
    host: "localhost",
    port: 8080,
    debug: false
};
export function cloneConfig(config: typeof sampleConfig): typeof sampleConfig {
    return { ...config };
}

// Class used as both value and type
export class Registry<T> {
    private items = new Map<string, T>();

    register(name: string, item: T): void {
        this.items.set(name, item);
    }

    get(name: string): T | undefined {
        return this.items.get(name);
    }

    has(name: string): boolean {
        return this.items.has(name);
    }

    get size(): number {
        return this.items.size;
    }

    keys(): string[] {
        return Array.from(this.items.keys());
    }
}

// Interface with optional fields and methods
export interface Plugin {
    name: string;
    version?: string;
    init(): void;
    destroy?(): void;
    onEvent?(event: string, data: any): void;
}

// Factory function returning interface
export function createPlugin(name: string): Plugin {
    return {
        name,
        init() {},
    };
}

// Type narrowing helper (type predicate)
export function isString(value: unknown): value is string {
    return typeof value === 'string';
}

export function isNumber(value: unknown): value is number {
    return typeof value === 'number';
}

// Promise-based API
export function fetchData(url: string): Promise<string> {
    return Promise.resolve(`data from ${url}`);
}

export function delay(ms: number): Promise<void> {
    return new Promise(resolve => setTimeout(resolve, ms));
}
