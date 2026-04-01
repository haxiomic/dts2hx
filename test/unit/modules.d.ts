/**
 * Module pattern coverage: re-exports, namespaces,
 * declaration merging, module augmentation.
 */

// Simple exports
export const simpleConst: string;
export let simpleLet: number;
export function simpleFunction(): void;

// Type exports
export type SimpleAlias = string;
export interface SimpleInterface {
    field: string;
}

// Classes with static and instance members
export class ExportedClass {
    instanceField: string;
    instanceMethod(): void;
    static staticField: number;
    static staticMethod(): string;
}

// Namespace with nested types
export namespace Nested {
    interface Inner {
        value: number;
    }
    function create(): Inner;
    namespace DeeplyNested {
        interface DeepInner {
            deep: boolean;
        }
    }
}

// Re-export patterns
export { SimpleInterface as AliasedInterface };

// Default export alongside named exports
export default class DefaultClass {
    value: string;
}

// Enum exports
export enum Direction {
    Up = 'UP',
    Down = 'DOWN',
    Left = 'LEFT',
    Right = 'RIGHT'
}

// Const enum
export const enum Flags {
    None = 0,
    Read = 1,
    Write = 2,
    ReadWrite = Read | Write
}
