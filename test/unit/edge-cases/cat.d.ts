export class Cat {

    age: number;
    name: string;
    
    constructor(numberOfLegs: number);

}

export * from './kitten';

export as namespace CatNamespace;