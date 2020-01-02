import * as ts from 'typescript';

/**
 * Adds missing types and fields declared as internal in TypeScript
 * (written against ts 3.3.3333)
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

    interface TypeChecker {
        getSymbolWalker(accept?: (symbol: Symbol) => boolean): {
            walkType: (type: Type) => { visitedTypes: Array<Type>, visitedSymbols: Array<Symbol> }
            walkSymbol: (symbol: Symbol) => { visitedTypes: Array<Type>, visitedSymbols: Array<Symbol> }
        };
        /* @internal */ getAnyType(): Type;
        /* @internal */ getStringType(): Type;
        /* @internal */ getNumberType(): Type;
        /* @internal */ getBooleanType(): Type;
        /* @internal */ getFalseType(fresh?: boolean): Type;
        /* @internal */ getTrueType(fresh?: boolean): Type;
        /* @internal */ getVoidType(): Type;
        /* @internal */ getUndefinedType(): Type;
        /* @internal */ getNullType(): Type;
        /* @internal */ getESSymbolType(): Type;
        /* @internal */ getNeverType(): Type;
        /* @internal */ getOptionalType(): Type;
        /* @internal */ getUnionType(types: Type[], subtypeReduction?: UnionReduction): Type;
        /* @internal */ createArrayType(elementType: Type): Type;
        /* @internal */ getElementTypeOfArrayType(arrayType: Type): Type | undefined;
        /* @internal */ createPromiseType(type: Type): Type;
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

    /* @internal */
    export const enum UnionReduction {
        None = 0,
        Literal,
        Subtype
    }


}