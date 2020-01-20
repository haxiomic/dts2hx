package typescript.ts;


/**
A function that is used to initialize and return a `Transformer` callback, which in turn
will be used to transform one or more nodes.

Generated from: test-definitions/typescript/typescript-extended.d.ts:3006:5
**/

typedef TransformerFactory<T> = (context: typescript.ts.TransformationContext) -> typescript.ts.Transformer<T>;



