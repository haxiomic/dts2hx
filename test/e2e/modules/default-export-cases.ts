// Test all variations of export default to understand when Default.hx is generated

// Case 1: export default class with a name
export default class MyDefaultClass {
    constructor(public value: string) {}
    greet(): string { return `hello from ${this.value}`; }
}

// Case 2: named export alongside default
export function helperFunction(): string { return "helper"; }
export const CONSTANT = 42;
