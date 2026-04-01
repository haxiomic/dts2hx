/**
 * Tuple type coverage including TS 4.0 features:
 * labeled tuples, rest elements, variadic positions.
 */
export namespace Tuples {

    // Basic tuples
    type Empty = [];
    type Single = [string];
    type Pair = [string, number];
    type Triple = [string, number, boolean];

    // Tuples with optional elements
    type WithOptional = [string, number?];
    type WithMultipleOptional = [string, number?, boolean?];

    // Tuples with rest elements
    type WithRest = [string, ...number[]];
    type RestOnly = [...string[]];

    // Labeled tuples (TS 4.0)
    type Labeled = [name: string, age: number];
    type LabeledOptional = [name: string, age?: number];
    type LabeledRest = [first: string, ...rest: number[]];

    // Nested tuples
    type Nested = [string, [number, boolean]];
    type DeeplyNested = [string, [number, [boolean, symbol]]];

    // Tuples as function parameters
    function takesTuple(args: [string, number]): void;
    function takesLabeledTuple(args: [name: string, age: number]): void;
    function returnsTuple(): [string, number];

    // Rest parameters from tuples
    function spreadTuple(...args: [string, number, boolean]): void;
    function spreadLabeled(...args: [name: string, age: number]): void;

    // Readonly tuples
    type ReadonlyTuple = readonly [string, number];

    // Tuple with union elements
    type UnionElements = [string | number, boolean | null];

    // Variables
    const pair: Pair;
    const labeled: Labeled;
    const withRest: WithRest;
    const nested: Nested;
}
