/**
 * Mapped type coverage: Record, Partial, Readonly, Pick, Omit
 * and nested combinations.
 * Tests the getTsTypeOfField fallback chain (TS 3.9+).
 */
export namespace MappedTypes {

    // Basic mapped types
    type Keys = 'x' | 'y' | 'z';
    type RecordBasic = Record<Keys, number>;
    type RecordBoolean = Record<Keys, boolean>;
    type RecordString = Record<'a' | 'b', string>;

    // Partial and Readonly
    type PartialSimple = Partial<{ a: number; b: string; c: boolean }>;
    type ReadonlySimple = Readonly<{ a: number; b: string }>;
    type RequiredSimple = Required<{ a?: number; b?: string }>;

    // Nested mapped types
    type ReadonlyPartial = Readonly<Partial<{ a: number; b: string }>>;
    type PartialRecord = Partial<Record<Keys, number>>;
    type ReadonlyRecord = Readonly<Record<Keys, boolean>>;

    // Deeply nested
    interface Inner {
        value: number;
        nested: Record<'a' | 'b', boolean>;
    }
    type ReadonlyInner = Readonly<Inner>;
    type PartialInner = Partial<Inner>;

    // Pick and Omit
    interface Full {
        a: number;
        b: string;
        c: boolean;
        d: symbol;
    }
    type Picked = Pick<Full, 'a' | 'c'>;
    type Omitted = Omit<Full, 'a' | 'c'>;

    // Record with complex value types
    type RecordWithArray = Record<Keys, number[]>;
    type RecordWithFunction = Record<Keys, (x: number) => string>;
    type RecordWithUnion = Record<Keys, string | number>;

    // Variables using mapped types
    const rec: RecordBasic;
    const partial: PartialSimple;
    const readonly_: ReadonlySimple;
    const nested: ReadonlyRecord;
    const deep: ReadonlyInner;
}
