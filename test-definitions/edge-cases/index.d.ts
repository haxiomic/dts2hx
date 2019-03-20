export * from './cat';

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

export default DefaultThing;

// module.exports = DefaultThing;