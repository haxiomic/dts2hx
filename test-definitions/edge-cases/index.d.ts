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
    namespace WorldsWithinWorlds {

        type Dean = MediaList;

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

export namespace ExportedNamespace {
    namespace A {
        
    }

    export namespace B {

    }
}

export as namespace EdgeCase;
export as namespace AnotherNamespace;

// export default SomeNamespace;

// module.exports = DefaultThing;