/**
 * TS 5.0: const type parameters, decorators (TC39 standard)
 */
export namespace TS50 {

    // const type parameters
    function asConst<const T>(value: T): T;
    function asConstArray<const T extends readonly string[]>(arr: T): T;

    // Decorators (TC39 standard) — these appear in .d.ts as metadata
    function sealed(constructor: Function): void;
    function log(target: any, context: ClassMethodDecoratorContext): void;

    // Enum improvements — all enums are now union enums
    enum Color {
        Red = "red",
        Green = "green",
        Blue = "blue"
    }
    function paint(color: Color): void;
}
