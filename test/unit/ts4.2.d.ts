/**
 * TS 4.2: Leading/middle rest elements in tuples, abstract construct signatures
 */
export namespace TS42 {

    // Leading rest elements
    type LeadingRest = [...string[], number];
    type MiddleRest = [string, ...boolean[], number];

    // Abstract construct signatures
    abstract class Shape {
        abstract getArea(): number;
    }
    type AbstractConstructor<T> = abstract new (...args: any[]) => T;
    function makeShape(ctor: AbstractConstructor<Shape>): Shape;

    // Smarter type alias preservation (TS 4.2)
    type BasicPrimitive = number | string | boolean;
    function doSomething(value: BasicPrimitive): void;

    const leading: LeadingRest;
    const middle: MiddleRest;
}
