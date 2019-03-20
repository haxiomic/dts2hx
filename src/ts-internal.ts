import * as ts from 'typescript';

/**
 * Expose the internal TypeScript APIs that are used by TypeDoc
 */
declare module 'typescript' {
    interface Symbol {
        // https://github.com/Microsoft/TypeScript/blob/v2.1.4/src/compiler/types.ts#L2658
        id?: number;
        // https://github.com/Microsoft/TypeScript/blob/v2.1.4/src/compiler/types.ts#L2660
        parent?: ts.Symbol;
    }

    interface Node {
        // https://github.com/Microsoft/TypeScript/blob/v2.1.4/src/compiler/types.ts#L497
        symbol?: ts.Symbol;
        // https://github.com/Microsoft/TypeScript/blob/v2.1.4/src/compiler/types.ts#L500
        localSymbol?: ts.Symbol;
        // https://github.com/Microsoft/TypeScript/blob/v2.1.4/src/compiler/types.ts#L499
        nextContainer?: ts.Node;
        // Locals associated with node (initialized by binding)
        locals?: ts.SymbolTable;
    }

    interface SourceFile extends ts.Declaration { }

    interface Program {
        getSourceFileFromReference(referencingFile: SourceFile, ref: FileReference): SourceFile | undefined;
    }

    // Intrinsic types (TypeFlags.Intrinsic)
    interface IntrinsicType extends Type {
        intrinsicName: string;        // Name of intrinsic type
        objectFlags: ObjectFlags;
    }

    enum TypeFlags {
        AnyOrUnknown,
        Nullable,
        StringOrNumberLiteralOrUnique,
        DefinitelyFalsy,
        Intrinsic,
        Primitive,
        DisjointDomains,
        ObjectFlagsType,
        NotPrimitiveUnion,
        IncludesMask,
        IncludesStructuredOrInstantiable,
        IncludesNonWideningType,
        IncludesWildcard,
        IncludesEmptyObject,
        GenericMappedType,
    }

}
