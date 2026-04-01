// Case 5: interface + class default (common TS pattern)
export interface StoreOptions {
    maxSize: number;
    ttl?: number;
}

export default class ConfigurableStore {
    private opts: StoreOptions;
    constructor(options: StoreOptions) { this.opts = options; }
    getMaxSize(): number { return this.opts.maxSize; }

    static withDefaults(): ConfigurableStore {
        return new ConfigurableStore({ maxSize: 100 });
    }
}
