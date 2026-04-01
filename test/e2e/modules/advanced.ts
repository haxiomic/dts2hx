// Tests: advanced type patterns, this-type, abstract-like patterns

// Method chaining with generic this return
export class QueryBuilder<T> {
    private table_: string;
    private conditions: string[] = [];
    private limit_: number = 0;

    constructor(table: string) {
        this.table_ = table;
    }

    where(condition: string): this {
        this.conditions.push(condition);
        return this;
    }

    take(n: number): this {
        this.limit_ = n;
        return this;
    }

    build(): string {
        let sql = `SELECT * FROM ${this.table_}`;
        if (this.conditions.length > 0) sql += ` WHERE ${this.conditions.join(' AND ')}`;
        if (this.limit_ > 0) sql += ` LIMIT ${this.limit_}`;
        return sql;
    }
}

// Class hierarchy with abstract-like pattern
export class Shape {
    constructor(public readonly kind: string) {}
    describe(): string { return `Shape(${this.kind})`; }
}

export class Circle extends Shape {
    constructor(public readonly radius: number) { super('circle'); }
    area(): number { return Math.PI * this.radius ** 2; }
}

export class Rect extends Shape {
    constructor(public readonly width: number, public readonly height: number) {
        super('rect');
    }
    area(): number { return this.width * this.height; }
}

// Interface with multiple extends
export interface Readable {
    read(): string;
}

export interface Writable {
    write(data: string): void;
}

export interface ReadWrite extends Readable, Writable {
    seek(position: number): void;
}

// Implementing ReadWrite
export class Stream implements ReadWrite {
    private buffer: string = '';
    private pos: number = 0;

    read(): string { return this.buffer.slice(this.pos); }
    write(data: string): void { this.buffer += data; }
    seek(position: number): void { this.pos = position; }
    getBuffer(): string { return this.buffer; }
}

// Overloaded method signatures on class
export class Converter {
    convert(input: string): number;
    convert(input: number): string;
    convert(input: string | number): string | number {
        if (typeof input === 'string') return input.length;
        return String(input);
    }
}

// Error subclass
export class AppError extends Error {
    constructor(message: string, public readonly code: number) {
        super(message);
        this.name = 'AppError';
    }
}
