/**
 * See https://github.com/microsoft/TypeScript/blob/master/doc/spec.md#23-declarations
 * 
 * The 3 kinds of declarations possible, all using the same name 
 */

declare namespace Declaration {
    const Declaration: string;    // Value named X

    type Declaration = number;  // Type named X

    namespace Declaration {     // Namespace named X  
        type Y = string;  
    }
}

