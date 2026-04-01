// TS source exercising features that produce degraded output in Haxe.
// Each export maps to a specific test case in NEGATIVE_TESTS.md.

// === A. Type precision losses ===

// A1-A3: Literal types
export type StringLiteral = 'hello';
export type NumberLiteral = 42;
export type BooleanLiteral = true;
export function acceptsLiteral(s: StringLiteral): string { return s; }
export function returnsLiteral(): NumberLiteral { return 42; }

// A4: Template literal pattern
export type DataAttr = `data-${string}`;
export function isDataAttr(s: string): s is DataAttr { return s.startsWith('data-'); }
export function setDataAttr(el: any, attr: DataAttr, value: string): void {}

// A5: keyof
export interface Config {
    host: string;
    port: number;
    debug: boolean;
}
export function getConfigKey(config: Config, key: keyof Config): any {
    return config[key];
}
export type ConfigKeys = keyof Config;

// A6: Indexed access
export type HostType = Config['host'];  // should be string
export type PortType = Config['port'];  // should be number
export function getHost(config: Config): Config['host'] { return config.host; }

// A7: Type predicates
export interface Animal { name: string; legs: number; }
export interface Dog extends Animal { bark(): void; }
export function isDog(animal: Animal): animal is Dog {
    return 'bark' in animal;
}
export function makeAnimal(name: string, legs: number): Animal {
    return { name, legs };
}
export function makeDog(name: string): Dog {
    return { name, legs: 4, bark() { } };
}

// A8: Assertion functions
export function assertDefined<T>(value: T | undefined): asserts value is T {
    if (value === undefined) throw new Error('Value is undefined');
}

// A9: unique symbol
export const sym1: unique symbol = Symbol('sym1');
export const sym2: unique symbol = Symbol('sym2');
export function usesSymbol(s: typeof sym1): string { return s.toString(); }

// A10: Enum member as type
export enum Status { Active = 'active', Inactive = 'inactive' }
export type ActiveOnly = Status.Active;
export function isActive(s: Status): s is Status.Active { return s === Status.Active; }

// A11: this-type polymorphism
export class Builder {
    private parts: string[] = [];
    add(part: string): this { this.parts.push(part); return this; }
    build(): string { return this.parts.join(' '); }
}
export class FancyBuilder extends Builder {
    addFancy(part: string): this { return this.add(`✨${part}✨`); }
}

// A12: Intersection of callable + object
export type CallableWithField = ((x: string) => number) & { description: string };
export function makeCallable(): CallableWithField {
    const fn = ((x: string) => x.length) as CallableWithField;
    fn.description = "length calculator";
    return fn;
}

// === B. Declaration/modifier losses ===

// B1: #private fields
export class WithPrivateField {
    #secret: string;
    constructor(secret: string) { this.#secret = secret; }
    reveal(): string { return this.#secret; }
}

// B2: protected modifier
export class WithProtected {
    protected value: number;
    constructor(value: number) { this.value = value; }
    getValue(): number { return this.value; }
}
export class ChildProtected extends WithProtected {
    doubleValue(): number { return this.value * 2; }
}

// B3: abstract class
export abstract class AbstractShape {
    abstract area(): number;
    describe(): string { return `Area: ${this.area()}`; }
}
export class ConcreteCircle extends AbstractShape {
    constructor(public radius: number) { super(); }
    area(): number { return Math.PI * this.radius ** 2; }
}

// B4: override keyword
export class BaseClass {
    greet(): string { return "hello"; }
}
export class DerivedClass extends BaseClass {
    override greet(): string { return "hi"; }
}

// B5: readonly on class fields
export class WithReadonly {
    readonly id: number;
    readonly name: string;
    mutable: string;
    constructor(id: number, name: string) {
        this.id = id;
        this.name = name;
        this.mutable = "default";
    }
}

// B6: Generic default type params
export interface Box<T = string> {
    value: T;
}
export function defaultBox(): Box { return { value: "default" }; }
export function numberBox(): Box<number> { return { value: 42 }; }

// B7: const type parameter
export function asConst<const T>(value: T): T { return value; }

// B8: implements multiple interfaces
export interface Serializable { serialize(): string; }
export interface Loggable { log(): void; }
export class MultiImpl implements Serializable, Loggable {
    constructor(public name: string) {}
    serialize(): string { return JSON.stringify({ name: this.name }); }
    log(): void { }
}

// === D. Index signature gaps ===

// D1: String index + named fields
export interface MixedStringIndex {
    [key: string]: any;
    name: string;
    age: number;
}
export function makeMixedStringIndex(name: string, age: number): MixedStringIndex {
    return { name, age, extra: true };
}

// D2: Number index + named fields (already in ts-features as NumberIndexed)

// D3: Multiple index signatures
export interface MultiIndex {
    [key: string]: string | number;
    [index: number]: string;
    length: number;
}

// D5: Symbol index
export interface WithSymbolKey {
    [Symbol.iterator](): Iterator<string>;
    values: string[];
}
export function makeIterable(values: string[]): WithSymbolKey {
    return {
        values,
        [Symbol.iterator]() { return values[Symbol.iterator](); }
    };
}

// === B7: const type parameter ===
export function asConst_<const T>(value: T): T { return value; }

// === C2: Re-export with rename ===
export { QueryBuilder as RenamedBuilder } from './advanced';
export { Config as RenamedConfig };

// === D4: Readonly index signature ===
export interface ReadonlyDict<T> {
    readonly [key: string]: T;
}
export function makeReadonlyDict<T>(key: string, value: T): ReadonlyDict<T> {
    return Object.freeze({ [key]: value });
}

// === F2: Field name collision ===
export interface CaseSensitive {
    myField: string;
    MyField: number;  // same name when case-insensitive
}
export function makeCaseSensitive(): CaseSensitive {
    return { myField: "lower", MyField: 42 };
}

// === F6: bigint ===
export function addBigInts(a: bigint, b: bigint): bigint {
    return a + b;
}
export const bigValue: bigint = BigInt(999);
