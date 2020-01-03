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

    export interface TypeChecker {
        getTypeOfSymbolAtLocation(symbol: Symbol, node: Node): Type;
        getDeclaredTypeOfSymbol(symbol: Symbol): Type;
        getPropertiesOfType(type: Type): Symbol[];
        getPropertyOfType(type: Type, propertyName: string): Symbol | undefined;
        /* @internal */ getTypeOfPropertyOfType(type: Type, propertyName: string): Type | undefined;
        getIndexInfoOfType(type: Type, kind: IndexKind): IndexInfo | undefined;
        getSignaturesOfType(type: Type, kind: SignatureKind): ReadonlyArray<Signature>;
        getIndexTypeOfType(type: Type, kind: IndexKind): Type | undefined;
        getBaseTypes(type: InterfaceType): BaseType[];
        getBaseTypeOfLiteralType(type: Type): Type;
        getWidenedType(type: Type): Type;
        /* @internal */
        getPromisedTypeOfPromise(promise: Type, errorNode?: Node): Type | undefined;
        getReturnTypeOfSignature(signature: Signature): Type;
        /**
         * Gets the type of a parameter at a given position in a signature.
         * Returns `any` if the index is not valid.
         */
        /* @internal */ getParameterType(signature: Signature, parameterIndex: number): Type;
        getNullableType(type: Type, flags: TypeFlags): Type;
        getNonNullableType(type: Type): Type;

        // TODO: GH#18217 `xToDeclaration` calls are frequently asserted as defined.
        /** Note that the resulting nodes cannot be checked. */
        typeToTypeNode(type: Type, enclosingDeclaration?: Node, flags?: NodeBuilderFlags): TypeNode | undefined;
        // /* @internal */ typeToTypeNode(type: Type, enclosingDeclaration?: Node, flags?: NodeBuilderFlags, tracker?: SymbolTracker): TypeNode | undefined; // tslint:disable-line unified-signatures
        /** Note that the resulting nodes cannot be checked. */
        signatureToSignatureDeclaration(signature: Signature, kind: SyntaxKind, enclosingDeclaration?: Node, flags?: NodeBuilderFlags): SignatureDeclaration & {typeArguments?: NodeArray<TypeNode>} | undefined;
        // /* @internal */ signatureToSignatureDeclaration(signature: Signature, kind: SyntaxKind, enclosingDeclaration?: Node, flags?: NodeBuilderFlags, tracker?: SymbolTracker): SignatureDeclaration & {typeArguments?: NodeArray<TypeNode>} | undefined;  // tslint:disable-line unified-signatures
        /** Note that the resulting nodes cannot be checked. */
        indexInfoToIndexSignatureDeclaration(indexInfo: IndexInfo, kind: IndexKind, enclosingDeclaration?: Node, flags?: NodeBuilderFlags): IndexSignatureDeclaration | undefined;
        // /* @internal */ indexInfoToIndexSignatureDeclaration(indexInfo: IndexInfo, kind: IndexKind, enclosingDeclaration?: Node, flags?: NodeBuilderFlags, tracker?: SymbolTracker): IndexSignatureDeclaration | undefined;  // tslint:disable-line unified-signatures
        /** Note that the resulting nodes cannot be checked. */
        symbolToEntityName(symbol: Symbol, meaning: SymbolFlags, enclosingDeclaration?: Node, flags?: NodeBuilderFlags): EntityName | undefined;
        /** Note that the resulting nodes cannot be checked. */
        symbolToExpression(symbol: Symbol, meaning: SymbolFlags, enclosingDeclaration?: Node, flags?: NodeBuilderFlags): Expression | undefined;
        /** Note that the resulting nodes cannot be checked. */
        symbolToTypeParameterDeclarations(symbol: Symbol, enclosingDeclaration?: Node, flags?: NodeBuilderFlags): NodeArray<TypeParameterDeclaration> | undefined;
        /** Note that the resulting nodes cannot be checked. */
        symbolToParameterDeclaration(symbol: Symbol, enclosingDeclaration?: Node, flags?: NodeBuilderFlags): ParameterDeclaration | undefined;
        /** Note that the resulting nodes cannot be checked. */
        typeParameterToDeclaration(parameter: TypeParameter, enclosingDeclaration?: Node, flags?: NodeBuilderFlags): TypeParameterDeclaration | undefined;

        getSymbolsInScope(location: Node, meaning: SymbolFlags): Symbol[];
        getSymbolAtLocation(node: Node): Symbol | undefined;
        getSymbolsOfParameterPropertyDeclaration(parameter: ParameterDeclaration, parameterName: string): Symbol[];
        /**
         * The function returns the value (local variable) symbol of an identifier in the short-hand property assignment.
         * This is necessary as an identifier in short-hand property assignment can contains two meaning: property name and property value.
         */
        getShorthandAssignmentValueSymbol(location: Node): Symbol | undefined;
        getExportSpecifierLocalTargetSymbol(location: ExportSpecifier): Symbol | undefined;
        /**
         * If a symbol is a local symbol with an associated exported symbol, returns the exported symbol.
         * Otherwise returns its input.
         * For example, at `export type T = number;`:
         *     - `getSymbolAtLocation` at the location `T` will return the exported symbol for `T`.
         *     - But the result of `getSymbolsInScope` will contain the *local* symbol for `T`, not the exported symbol.
         *     - Calling `getExportSymbolOfSymbol` on that local symbol will return the exported symbol.
         */
        getExportSymbolOfSymbol(symbol: Symbol): Symbol;
        getPropertySymbolOfDestructuringAssignment(location: Identifier): Symbol | undefined;
        getTypeAtLocation(node: Node): Type;
        getTypeFromTypeNode(node: TypeNode): Type;

        signatureToString(signature: Signature, enclosingDeclaration?: Node, flags?: TypeFormatFlags, kind?: SignatureKind): string;
        typeToString(type: Type, enclosingDeclaration?: Node, flags?: TypeFormatFlags): string;
        symbolToString(symbol: Symbol, enclosingDeclaration?: Node, meaning?: SymbolFlags, flags?: SymbolFormatFlags): string;
        typePredicateToString(predicate: TypePredicate, enclosingDeclaration?: Node, flags?: TypeFormatFlags): string;

        // /* @internal */ writeSignature(signature: Signature, enclosingDeclaration?: Node, flags?: TypeFormatFlags, kind?: SignatureKind, writer?: EmitTextWriter): string;
        // /* @internal */ writeType(type: Type, enclosingDeclaration?: Node, flags?: TypeFormatFlags, writer?: EmitTextWriter): string;
        // /* @internal */ writeSymbol(symbol: Symbol, enclosingDeclaration?: Node, meaning?: SymbolFlags, flags?: SymbolFormatFlags, writer?: EmitTextWriter): string;
        // /* @internal */ writeTypePredicate(predicate: TypePredicate, enclosingDeclaration?: Node, flags?: TypeFormatFlags, writer?: EmitTextWriter): string;

        getFullyQualifiedName(symbol: Symbol): string;
        getAugmentedPropertiesOfType(type: Type): Symbol[];
        getRootSymbols(symbol: Symbol): ReadonlyArray<Symbol>;
        getContextualType(node: Expression): Type | undefined;
        /* @internal */ getContextualTypeForObjectLiteralElement(element: ObjectLiteralElementLike): Type | undefined;
        /* @internal */ getContextualTypeForArgumentAtIndex(call: CallLikeExpression, argIndex: number): Type | undefined;
        /* @internal */ getContextualTypeForJsxAttribute(attribute: JsxAttribute | JsxSpreadAttribute): Type | undefined;
        /* @internal */ isContextSensitive(node: Expression | MethodDeclaration | ObjectLiteralElementLike | JsxAttributeLike): boolean;

        /**
         * returns unknownSignature in the case of an error.
         * returns undefined if the node is not valid.
         * @param argumentCount Apparent number of arguments, passed in case of a possibly incomplete call. This should come from an ArgumentListInfo. See `signatureHelp.ts`.
         */
        getResolvedSignature(node: CallLikeExpression, candidatesOutArray?: Signature[], argumentCount?: number): Signature | undefined;
        /* @internal */ getResolvedSignatureForSignatureHelp(node: CallLikeExpression, candidatesOutArray?: Signature[], argumentCount?: number): Signature | undefined;
        getSignatureFromDeclaration(declaration: SignatureDeclaration): Signature | undefined;
        isImplementationOfOverload(node: SignatureDeclaration): boolean | undefined;
        isUndefinedSymbol(symbol: Symbol): boolean;
        isArgumentsSymbol(symbol: Symbol): boolean;
        isUnknownSymbol(symbol: Symbol): boolean;
        /* @internal */ getMergedSymbol(symbol: Symbol): Symbol;

        getConstantValue(node: EnumMember | PropertyAccessExpression | ElementAccessExpression): string | number | undefined;
        isValidPropertyAccess(node: PropertyAccessExpression | QualifiedName | ImportTypeNode, propertyName: string): boolean;
        /** Exclude accesses to private properties or methods with a `this` parameter that `type` doesn't satisfy. */
        /* @internal */ isValidPropertyAccessForCompletions(node: PropertyAccessExpression | ImportTypeNode | QualifiedName, type: Type, property: Symbol): boolean;
        /** Follow all aliases to get the original symbol. */
        getAliasedSymbol(symbol: Symbol): Symbol;
        /** Follow a *single* alias to get the immediately aliased symbol. */
        /* @internal */ getImmediateAliasedSymbol(symbol: Symbol): Symbol | undefined;
        getExportsOfModule(moduleSymbol: Symbol): Symbol[];
        /** Unlike `getExportsOfModule`, this includes properties of an `export =` value. */
        /* @internal */ getExportsAndPropertiesOfModule(moduleSymbol: Symbol): Symbol[];
        getJsxIntrinsicTagNamesAt(location: Node): Symbol[];
        isOptionalParameter(node: ParameterDeclaration): boolean;
        getAmbientModules(): Symbol[];

        tryGetMemberInModuleExports(memberName: string, moduleSymbol: Symbol): Symbol | undefined;
        /**
         * Unlike `tryGetMemberInModuleExports`, this includes properties of an `export =` value.
         * Does *not* return properties of primitive types.
         */
        /* @internal */ tryGetMemberInModuleExportsAndProperties(memberName: string, moduleSymbol: Symbol): Symbol | undefined;
        getApparentType(type: Type): Type;
        /* @internal */ getSuggestionForNonexistentProperty(name: Identifier | string, containingType: Type): string | undefined;
        /* @internal */ getSuggestionForNonexistentSymbol(location: Node, name: string, meaning: SymbolFlags): string | undefined;
        /* @internal */ getSuggestionForNonexistentExport(node: Identifier, target: Symbol): string | undefined;
        getBaseConstraintOfType(type: Type): Type | undefined;
        getDefaultFromTypeParameter(type: Type): Type | undefined;

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
        /* @internal */ getUnionType(types: Type[], subtypeReduction?: UnionReduction): Type;
        /* @internal */ createArrayType(elementType: Type): Type;
        /* @internal */ getElementTypeOfArrayType(arrayType: Type): Type | undefined;
        /* @internal */ createPromiseType(type: Type): Type;

        /* @internal */ createAnonymousType(symbol: Symbol, members: SymbolTable, callSignatures: Signature[], constructSignatures: Signature[], stringIndexInfo: IndexInfo | undefined, numberIndexInfo: IndexInfo | undefined): Type;
        /* @internal */ createSignature(
            declaration: SignatureDeclaration,
            typeParameters: TypeParameter[] | undefined,
            thisParameter: Symbol | undefined,
            parameters: Symbol[],
            resolvedReturnType: Type,
            typePredicate: TypePredicate | undefined,
            minArgumentCount: number,
            hasRestParameter: boolean,
            hasLiteralTypes: boolean,
        ): Signature;
        // /* @internal */ createSymbol(flags: SymbolFlags, name: __String): TransientSymbol;
        /* @internal */ createIndexInfo(type: Type, isReadonly: boolean, declaration?: SignatureDeclaration): IndexInfo;
        // /* @internal */ isSymbolAccessible(symbol: Symbol, enclosingDeclaration: Node | undefined, meaning: SymbolFlags, shouldComputeAliasToMarkVisible: boolean): SymbolAccessibilityResult;
        /* @internal */ tryFindAmbientModuleWithoutAugmentations(moduleName: string): Symbol | undefined;

        // /* @internal */ getSymbolWalker(accept?: (symbol: Symbol) => boolean): SymbolWalker;

        // Should not be called directly.  Should only be accessed through the Program instance.
        /* @internal */ getDiagnostics(sourceFile?: SourceFile, cancellationToken?: CancellationToken): Diagnostic[];
        /* @internal */ getGlobalDiagnostics(): Diagnostic[];
        // /* @internal */ getEmitResolver(sourceFile?: SourceFile, cancellationToken?: CancellationToken): EmitResolver;

        /* @internal */ getNodeCount(): number;
        /* @internal */ getIdentifierCount(): number;
        /* @internal */ getSymbolCount(): number;
        /* @internal */ getTypeCount(): number;

        /* @internal */ isArrayLikeType(type: Type): boolean;
        /* @internal */ getObjectFlags(type: Type): ObjectFlags;

        /**
         * True if `contextualType` should not be considered for completions because
         * e.g. it specifies `kind: "a"` and obj has `kind: "b"`.
         */
        /* @internal */ isTypeInvalidDueToUnionDiscriminant(contextualType: Type, obj: ObjectLiteralExpression | JsxAttributes): boolean;
        /**
         * For a union, will include a property if it's defined in *any* of the member types.
         * So for `{ a } | { b }`, this will include both `a` and `b`.
         * Does not include properties of primitive types.
         */
        /* @internal */ getAllPossiblePropertiesOfTypes(type: ReadonlyArray<Type>): Symbol[];
        /* @internal */ resolveName(name: string, location: Node, meaning: SymbolFlags, excludeGlobals: boolean): Symbol | undefined;
        /* @internal */ getJsxNamespace(location?: Node): string;

        /**
         * Note that this will return undefined in the following case:
         *     // a.ts
         *     export namespace N { export class C { } }
         *     // b.ts
         *     <<enclosingDeclaration>>
         * Where `C` is the symbol we're looking for.
         * This should be called in a loop climbing parents of the symbol, so we'll get `N`.
         */
        /* @internal */ getAccessibleSymbolChain(symbol: Symbol, enclosingDeclaration: Node | undefined, meaning: SymbolFlags, useOnlyExternalAliasing: boolean): Symbol[] | undefined;
        /* @internal */ getTypePredicateOfSignature(signature: Signature): TypePredicate;
        /**
         * An external module with an 'export =' declaration resolves to the target of the 'export =' declaration,
         * and an external module with no 'export =' declaration resolves to the module itself.
         */
        /* @internal */ resolveExternalModuleSymbol(symbol: Symbol): Symbol;
        /** @param node A location where we might consider accessing `this`. Not necessarily a ThisExpression. */
        /* @internal */ tryGetThisTypeAt(node: Node): Type | undefined;
        /* @internal */ getTypeArgumentConstraint(node: TypeNode): Type | undefined;

        /**
         * Does *not* get *all* suggestion diagnostics, just the ones that were convenient to report in the checker.
         * Others are added in computeSuggestionDiagnostics.
         */
        /* @internal */ getSuggestionDiagnostics(file: SourceFile, cancellationToken?: CancellationToken): ReadonlyArray<DiagnosticWithLocation>;

        /**
         * Depending on the operation performed, it may be appropriate to throw away the checker
         * if the cancellation token is triggered. Typically, if it is used for error checking
         * and the operation is cancelled, then it should be discarded, otherwise it is safe to keep.
         */
        runWithCancellationToken<T>(token: CancellationToken, cb: (checker: TypeChecker) => T): T;

        /* @internal */ getLocalTypeParametersOfClassOrInterfaceOrTypeAlias(symbol: Symbol): ReadonlyArray<TypeParameter> | undefined;
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