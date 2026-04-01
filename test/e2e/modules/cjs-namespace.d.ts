// F5: export = namespace pattern (CommonJS)
declare namespace CjsNamespace {
    function greet(name: string): string;
    const version: string;
    interface Options {
        verbose: boolean;
    }
}

export = CjsNamespace;
