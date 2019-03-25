/// <reference path="./ambient-extension.d.ts" />

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

    const CommandNames: any;
}

declare class SomeClass {

}

export enum MixedEnum {
    A = 0,
    B = 'one',
}

export type EitherZeroOne = 0 | 'one';

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

export class ClassAndNamespace {

}

export namespace ClassAndNamespace {
    namespace InnerNamespace {

    }
    class InnerClass {

    }
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