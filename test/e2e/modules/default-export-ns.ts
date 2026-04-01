// Case 3: export default namespace (like RenderTargetStore)
// A module with a default class export PLUS named function exports

export function staticHelper(): string { return "helped"; }

export default class Store {
    private items: Map<string, number> = new Map();

    get(key: string): number | undefined { return this.items.get(key); }
    set(key: string, value: number): void { this.items.set(key, value); }

    get size(): number { return this.items.size; }

    static createEmpty(): Store { return new Store(); }
}
