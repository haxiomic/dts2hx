// C3: Module augmentation — extends an existing module's types
// C4: Global augmentation — adds globals from within a module

// Simulate augmenting a module (like @types packages do)
import { Config } from './collections';

// C3: Module augmentation
declare module './collections' {
    interface Config {
        augmentedField: string;
    }
}

// C4: Global augmentation
declare global {
    function augmentedGlobal(): string;
    var augmentedVar: number;
}

export {};
