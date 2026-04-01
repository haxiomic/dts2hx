// UMD pattern: types available both globally and via module import
// This is how libraries like jQuery and lodash expose themselves

export as namespace MyUmdLib;

export function doStuff(x: number): string;
export const version: string;
export class Widget {
    constructor(name: string);
    render(): string;
}
