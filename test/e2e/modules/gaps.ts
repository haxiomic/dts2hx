// Tests for all remaining coverage gaps

// === this parameter (should be stripped) ===
export interface EventTarget {
    addEventListener(type: string, listener: (this: EventTarget, ev: Event) => void): void;
}
export function onEvent(this: { name: string }, event: string): string {
    return `${this.name}: ${event}`;
}

// === Destructured parameters ===
export interface Point { x: number; y: number; }
export function distanceFromOrigin({ x, y }: Point): number {
    return Math.sqrt(x * x + y * y);
}
export function swap({ x, y }: Point): Point {
    return { x: y, y: x };
}

// === Overloaded constructors ===
export class FlexDate {
    private _date: Date;
    constructor(timestamp: number);
    constructor(dateStr: string);
    constructor(year: number, month: number, day: number);
    constructor(yearOrTimestampOrStr: number | string, month?: number, day?: number) {
        if (typeof yearOrTimestampOrStr === 'string') {
            this._date = new Date(yearOrTimestampOrStr);
        } else if (month !== undefined && day !== undefined) {
            this._date = new Date(yearOrTimestampOrStr, month - 1, day);
        } else {
            this._date = new Date(yearOrTimestampOrStr);
        }
    }
    getTime(): number { return this._date.getTime(); }
    toString(): string { return this._date.toISOString(); }
}

// === Multiple interface declarations extending different bases ===
export interface Base1 { a: string; }
export interface Base2 { b: number; }
export interface MultiExtends extends Base1, Base2 {
    c: boolean;
}
export function useMultiExtends(m: MultiExtends): string {
    return `${m.a}:${m.b}:${m.c}`;
}

// === Template string pattern index signatures (TS 4.4) ===
export interface DataAttributes {
    [key: `data-${string}`]: string;
    id: string;
}
export function createDataAttrs(id: string, data: Record<string, string>): DataAttributes {
    const result: any = { id };
    for (const [k, v] of Object.entries(data)) result[`data-${k}`] = v;
    return result;
}

// === Circular module dependency types ===
export interface TreeNode {
    value: string;
    children: TreeNode[];
    parent: TreeNode | null;
}
export function createTree(value: string, children?: TreeNode[]): TreeNode {
    const node: TreeNode = { value, children: children || [], parent: null };
    for (const child of node.children) child.parent = node;
    return node;
}

// === Three.js style enum pattern ===
export enum FrontFaceDirection {}
export const FrontFaceDirectionCW: FrontFaceDirection = 0 as any;
export const FrontFaceDirectionCCW: FrontFaceDirection = 1 as any;

// === Std lib type mapping ===
export function makeRegExp(pattern: string, flags?: string): RegExp {
    return new RegExp(pattern, flags);
}
export function makeDate(iso: string): Date {
    return new Date(iso);
}
export function makeUint8Array(values: number[]): Uint8Array {
    return new Uint8Array(values);
}
export function makeFloat32Array(values: number[]): Float32Array {
    return new Float32Array(values);
}

// === File path length limits ===
export interface VeryLongTypeNameThatMightCauseFileSystemIssuesOnSomeOperatingSystemsBecauseOfPathLengthLimitations {
    value: string;
}
export function useLongType(x: VeryLongTypeNameThatMightCauseFileSystemIssuesOnSomeOperatingSystemsBecauseOfPathLengthLimitations): string {
    return x.value;
}
