// reference module
/// <reference types="node" />

// reference local path
/// <reference path="enum.d.ts" />

// reference typescript built-in lib
// the following is equivalent to compiling with `--lib es2017.string`
/// <reference lib="es2017.string" />

declare const con: NodeModule;
declare const es2017PadStart: typeof String.prototype.padStart;
declare const localPathEnum: Enums.FloatEnum;

