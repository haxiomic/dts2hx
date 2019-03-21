export * from './cat';

export declare abstract class BasePlayerCallback {
    array: Uint8Array;
    abstract run(n: {a: Uint16Array}, t?: number): void;
    abstract stop(): void;
}

// Blobfish is tripple-slash referenced AND exported
export * from './blobfish';

declare namespace SomeNamespace {
    interface Wat {
        nowThisIsGettingComplex: string;
    }
}

export class Thing {
    field: number[];
    map: Map<string, number>;
}

export class DefaultThing extends Thing {
    a: number;
    b: string;
    iAmAThing: Thing;
    private constructor();
}

export as namespace EdgeCase;
export as namespace AnotherNamespace;

// export default DefaultThing;

// module.exports = DefaultThing;