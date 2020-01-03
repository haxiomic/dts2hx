/**
 * See https://github.com/microsoft/TypeScript/blob/master/doc/spec.md#23-declarations
 * 
 * The 3 kinds of declarations possible, all using the same name 
 */

declare const Declaration: string;    // Value named X

declare type Declaration = number;  // Type named X

declare namespace Declaration {     // Namespace named X  
    type Y = string;  
}

