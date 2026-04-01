// Tests: ambient (global) declarations, declare module, declaration merging
// This file is a .d.ts only — no .ts implementation (it describes globals)

// Global function
declare function globalAdd(a: number, b: number): number;

// Global variable
declare const globalVersion: string;

// Global class
declare class GlobalLogger {
    constructor(prefix: string);
    log(message: string): void;
    readonly prefix: string;
}

// Global namespace
declare namespace GlobalNS {
    function helper(): string;
    const value: number;
    interface Options {
        verbose: boolean;
        timeout: number;
    }
}

// Ambient module declaration (how DefinitelyTyped works)
declare module "my-library" {
    export function doWork(input: string): string;
    export class Worker {
        constructor(name: string);
        run(): string;
    }
    export interface Config {
        workers: number;
        debug: boolean;
    }
    export const VERSION: string;
}

// Declaration merging: interface + interface
declare interface MergedInterface {
    fieldA: string;
    methodA(): void;
}
declare interface MergedInterface {
    fieldB: number;
    methodB(): string;
}

// Declaration merging: namespace + namespace
declare namespace MergedNS {
    function fnA(): string;
}
declare namespace MergedNS {
    function fnB(): number;
    const shared: boolean;
}
