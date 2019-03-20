export * from './cat';

// Blobfish is tripple-slash referenced AND exported
export * from './blobfish';

declare namespace SomeNamespace {
    interface Wat {
        nowThisIsGettingComplex: string;
    }
}

export class Thing {
    field: number;
}

export class DefaultThing extends Thing {
    a: number;
    b: string;
    private constructor();
}

export as namespace EdgeCase;
export as namespace AnotherNamespace;

// export default DefaultThing;

// module.exports = DefaultThing;