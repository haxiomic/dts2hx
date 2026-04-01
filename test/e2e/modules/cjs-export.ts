// Tests: CommonJS export = pattern
// This is how many Node.js libraries export their main object

class CjsClass {
    readonly name: string;

    constructor(name: string) {
        this.name = name;
    }

    greet(): string {
        return `Hello from ${this.name}`;
    }

    static create(name: string): CjsClass {
        return new CjsClass(name);
    }
}

export = CjsClass;
