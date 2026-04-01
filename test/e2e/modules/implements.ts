// B8: Test harness for class implements
// Tests every combination of implements patterns

// Simple interfaces
export interface Printable {
    print(): string;
}

export interface Serializable {
    serialize(): string;
}

export interface Disposable {
    dispose(): void;
    readonly disposed: boolean;
}

// Interface with generics
export interface Container<T> {
    get(): T;
    set(value: T): void;
}

// Interface extending another interface
export interface NamedPrintable extends Printable {
    name: string;
}

// Single implements
export class SimplePrinter implements Printable {
    constructor(private text: string) {}
    print(): string { return this.text; }
}

// Multiple implements
export class Document implements Printable, Serializable {
    constructor(public content: string) {}
    print(): string { return `[Doc: ${this.content}]`; }
    serialize(): string { return JSON.stringify({ content: this.content }); }
}

// Extends + implements
export class BaseComponent {
    constructor(public id: string) {}
    getId(): string { return this.id; }
}

export class DisposableComponent extends BaseComponent implements Disposable {
    private _disposed = false;
    constructor(id: string) { super(id); }
    get disposed(): boolean { return this._disposed; }
    dispose(): void { this._disposed = true; }
}

// Extends + multiple implements
export class FullComponent extends BaseComponent implements Printable, Serializable, Disposable {
    private _disposed = false;
    constructor(id: string, public label: string) { super(id); }
    print(): string { return `[${this.id}: ${this.label}]`; }
    serialize(): string { return JSON.stringify({ id: this.id, label: this.label }); }
    get disposed(): boolean { return this._disposed; }
    dispose(): void { this._disposed = true; }
}

// Implements with generics
export class StringContainer implements Container<string> {
    private value: string = '';
    get(): string { return this.value; }
    set(value: string): void { this.value = value; }
}

// Implements interface that extends another
export class NamedDoc implements NamedPrintable {
    constructor(public name: string, private text: string) {}
    print(): string { return `${this.name}: ${this.text}`; }
}

// Functions that accept interface types — these test whether
// Haxe code can pass implementing classes where interfaces are expected
export function printThing(p: Printable): string {
    return p.print();
}

export function serializeThing(s: Serializable): string {
    return s.serialize();
}

export function disposeThing(d: Disposable): void {
    d.dispose();
}
