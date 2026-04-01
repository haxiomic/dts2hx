// Tests: barrel file pattern (re-export everything from multiple modules)
// This is very common in real libraries (e.g. index.ts)

export * from './types';
export * from './math';
export { Stack, createStringMap, createConfig } from './collections';
export { EventEmitter } from './events';
export type { Config, StringMap } from './collections';
export type { TypedEmitter } from './events';
