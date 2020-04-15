// reference module
/// <reference types="node" />

// reference local path
/// <reference path="ambient-modules.d.ts" />

// reference typescript built-in lib
// the following is equivalent to compiling with `--lib es2017.string`
/// <reference lib="es2017.string" />

export const con: NodeModule;
export const es2017PadStart: typeof String.prototype.padStart;
export const localType: AmbientNamespace.Num;

