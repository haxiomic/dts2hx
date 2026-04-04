// Comprehensive recursive type patterns for testing cycle detection.
// Each pattern exercises a different way types can recurse in TypeScript.

// --- 1. Direct self-referential interface ---
export interface LinkedNode {
    value: number;
    next: LinkedNode | null;
}

// --- 2. Mutual recursion ---
export interface TreeNode {
    children: TreeBranch[];
}
export interface TreeBranch {
    label: string;
    node: TreeNode;
}

// --- 3. Generic self-reference ---
export interface Container<T> {
    value: T;
    nested: Container<Container<T>> | null;
}

// --- 4. Recursive type alias ---
export type Json = string | number | boolean | null | Json[] | { [key: string]: Json };

// --- 5. Self-referential class ---
export class Chainable {
    chain(): Chainable { return this; }
    value: number = 0;
}

// --- 6. Fluent builder pattern (returns this) ---
export class Builder {
    setName(name: string): this { return this; }
    setValue(value: number): this { return this; }
    build(): { name: string; value: number } { return { name: '', value: 0 }; }
}

// --- 7. Recursive generic constraint ---
export interface Comparable<T extends Comparable<T>> {
    compareTo(other: T): number;
}

// --- 8. Intersection with self-reference (jQuery-like pattern) ---
export interface CallableBase {
    (selector: string): CallableResult;
    extend<T>(target: T): T & CallableBase;
    version: string;
}
export interface CallableResult {
    length: number;
    get(index: number): any;
}

// --- 9. Recursive mapped type ---
export type DeepReadonly<T> = {
    readonly [P in keyof T]: T[P] extends object ? DeepReadonly<T[P]> : T[P];
};

// --- 10. Promise-like chain (Deferred pattern) ---
export interface Thenable<T> {
    then<U>(onFulfilled: (value: T) => Thenable<U> | U): Thenable<U>;
    catch<U>(onRejected: (reason: any) => Thenable<U> | U): Thenable<T | U>;
}

// --- 11. Event emitter with self-referential overloads ---
export interface TypedEmitter {
    on(event: 'data', listener: (data: Uint8Array) => void): TypedEmitter;
    on(event: 'error', listener: (err: Error) => void): TypedEmitter;
    on(event: string, listener: (...args: any[]) => void): TypedEmitter;
    off(event: string, listener: (...args: any[]) => void): TypedEmitter;
    emit(event: string, ...args: any[]): boolean;
}

// --- 12. Deeply nested generics (PromiseBase-like, simplified) ---
export interface PromiseBase<TR, TJ> {
    then<ARD, AJD>(
        doneFilter: (value: TR) => PromiseBase<ARD, AJD> | Thenable<ARD> | ARD,
        failFilter?: (reason: TJ) => PromiseBase<ARD, AJD> | Thenable<AJD> | AJD,
    ): PromiseBase<ARD, AJD>;

    catch<ARF>(
        failFilter: (reason: TJ) => PromiseBase<ARF, TJ> | ARF,
    ): PromiseBase<TR | ARF, TJ>;
}

// --- 13. Recursive conditional types (simplified — TS disallows truly recursive conditional) ---
export type Flatten<T> = T extends Array<infer U> ? U : T;

// --- 14. Callable intersection with generics (jQuery $ pattern) ---
export interface QueryStatic {
    <T extends Element>(selector: string): QueryResult<T>;
    (callback: (self: QueryStatic) => void): QueryResult<Element>;
    ajax(settings: QueryAjaxSettings): QueryPromise;
}
export interface QueryResult<T> {
    length: number;
    each(callback: (index: number, element: T) => void): QueryResult<T>;
    find(selector: string): QueryResult<T>;
    end(): QueryResult<T>;
}
export interface QueryAjaxSettings {
    url?: string;
    method?: string;
    success?: (data: any) => void;
    error?: (err: any) => void;
}
export interface QueryPromise extends PromiseBase<any, any> {
    abort(): void;
}
export declare const $: QueryStatic;

// --- 15. Recursive interface with index signature ---
export interface NestedConfig {
    [key: string]: string | number | boolean | NestedConfig;
}

// --- 16. Generic class extending itself ---
export class SortedList<T extends Comparable<T>> {
    items: T[] = [];
    add(item: T): SortedList<T> { return this; }
    merge(other: SortedList<T>): SortedList<T> { return this; }
}

// --- 17. Higher-kinded-like pattern with recursive bounds ---
export interface Functor<A> {
    map<B>(f: (a: A) => B): Functor<B>;
}
export interface Monad<A> extends Functor<A> {
    flatMap<B>(f: (a: A) => Monad<B>): Monad<B>;
    map<B>(f: (a: A) => B): Monad<B>;
}

// --- 18. Self-referencing union type ---
export type Expression =
    | { type: 'literal'; value: number }
    | { type: 'add'; left: Expression; right: Expression }
    | { type: 'multiply'; left: Expression; right: Expression }
    | { type: 'negate'; operand: Expression };

// Runtime validation exports
export function createLinkedList(values: number[]): LinkedNode | null {
    let head: LinkedNode | null = null;
    for (let i = values.length - 1; i >= 0; i--) {
        head = { value: values[i], next: head };
    }
    return head;
}

export function createTree(depth: number): TreeNode {
    if (depth <= 0) return { children: [] };
    return {
        children: [
            { label: `branch-${depth}`, node: createTree(depth - 1) }
        ]
    };
}

export function chainLength(node: LinkedNode | null): number {
    let count = 0;
    while (node !== null) {
        count++;
        node = node.next;
    }
    return count;
}

export function treeDepth(node: TreeNode): number {
    if (node.children.length === 0) return 0;
    return 1 + Math.max(...node.children.map(b => treeDepth(b.node)));
}

export function buildChain(): number {
    return new Chainable().chain().chain().chain().value;
}

export function resolveThenable(): Thenable<number> {
    return {
        then<U>(fn: (v: number) => U | Thenable<U>): Thenable<U> {
            const result = fn(42);
            return { then: (f: any) => f(result), catch: (f: any) => ({ then: f, catch: f }) } as any;
        },
        catch<U>(fn: (r: any) => U | Thenable<U>): Thenable<number | U> {
            return this as any;
        }
    };
}
