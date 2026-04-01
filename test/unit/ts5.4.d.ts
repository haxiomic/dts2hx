/**
 * TS 5.4: NoInfer<T> utility type, improved narrowing
 */
export namespace TS54 {

    // NoInfer<T> — prevents inference from flowing through a type position
    function createStreetLight<C extends string>(colors: C[], defaultColor: NoInfer<C>): void;
    function first<T>(arr: T[], fallback: NoInfer<T>): T;

    // Preserved narrowing in closures
    interface Animal {
        name: string;
    }
    interface Dog extends Animal {
        bark(): void;
    }
    function isDog(animal: Animal): animal is Dog;
}
