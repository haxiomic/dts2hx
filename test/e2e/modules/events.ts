// Tests: callback patterns, overloaded method signatures, declaration merging

export type EventHandler<T = void> = T extends void
    ? () => void
    : (data: T) => void;

export class EventEmitter {
    private handlers: { [event: string]: Function[] } = {};

    on(event: string, handler: Function): this {
        if (!this.handlers[event]) this.handlers[event] = [];
        this.handlers[event].push(handler);
        return this;
    }

    off(event: string, handler: Function): this {
        if (this.handlers[event]) {
            this.handlers[event] = this.handlers[event].filter(h => h !== handler);
        }
        return this;
    }

    emit(event: string, ...args: any[]): boolean {
        const handlers = this.handlers[event];
        if (!handlers || handlers.length === 0) return false;
        for (const handler of handlers) handler(...args);
        return true;
    }

    listenerCount(event: string): number {
        return this.handlers[event]?.length ?? 0;
    }
}

// Interface that extends EventEmitter with typed events
export interface TypedEmitter {
    on(event: 'data', handler: (chunk: string) => void): this;
    on(event: 'end', handler: () => void): this;
    on(event: 'error', handler: (err: Error) => void): this;
    on(event: string, handler: Function): this;

    emit(event: 'data', chunk: string): boolean;
    emit(event: 'end'): boolean;
    emit(event: 'error', err: Error): boolean;
    emit(event: string, ...args: any[]): boolean;
}
