import Terminal from "./Terminal";
import * as ts from 'typescript';
import { TSUtil } from "./TSUtil";

export default class Debug {

    static getIndent(depth: number) {
        let indent = '';
        for (let i = 0;i < depth; i++) indent += '\t';
        return indent;
    }

    static getNodeLocation(node: ts.Node) {
        return node.getSourceFile().getLineAndCharacterOfPosition(node.getStart());
    }

    static getSymbolPrintableLocation(symbol: ts.Symbol | undefined): string {
        if (symbol != null) {
            if (symbol.declarations[0] != null) {
                return this.getNodePrintableLocation(symbol.declarations[0]);
            }
            if (symbol.valueDeclaration != null) {
                return this.getNodePrintableLocation(symbol.valueDeclaration);
            } 
        }
        return '<unknown location>';
    }

    static getNodePrintableLocation(node: ts.Node): string {
        let { line, character } = this.getNodeLocation(node);
        return `${node.getSourceFile().fileName}:${line + 1}${character > 0 ? `:${character + 1}` : ''}`;
    }

    static symbolInfoFormatted(checker: ts.TypeChecker, s: ts.Symbol, exportRoot: ts.Symbol | null): string {
        let str = '';
        str += (
            '<b>' + TSUtil.getNativePath(s, exportRoot) + '</b>' +
            (s.id != null ? ` <dim>(${s.id})</>` : '') + 
            ' <i,dim>' + this.getActiveSymbolFlags(s.getFlags(), true).join(', ') + '</>'
        );

        if (s.flags & ts.SymbolFlags.Property) {

            let t = checker.getTypeAtLocation(s.valueDeclaration);

            if (t.flags & ts.TypeFlags.AnyOrUnknown) {
                str += ' : <i,blue>AnyOrUnknown</>';

            } else if (t.flags & ts.TypeFlags.Intrinsic) {
                let tIntrinsic: ts.IntrinsicType = t as ts.IntrinsicType;
                str += ' : <i,blue>' + tIntrinsic.intrinsicName + '</>';

            } else if ((t.flags & ts.TypeFlags.Object) && t.symbol != null) {

                str += ' : <i,blue,b>' + t.symbol.name + '</>';

            } else {

                str += ' : <i,blue>?</>';
            }

            str += ' : <i,dim,blue>' + this.getActiveTypeFlags(t.flags).join(', ') + '</>';
        }

        return str;
    }

    static logSymbol(checker: ts.TypeChecker, s: ts.Symbol, exportRoot: ts.Symbol | null, depth: number) {
        Terminal.log(this.getIndent(depth) + this.symbolInfoFormatted(checker, s, exportRoot));
    }

    /**
     * # SymbolFlag Notes
     *
    ```
    FunctionScopedVariable  = 1 << 0,   // Variable (var) or parameter
    BlockScopedVariable     = 1 << 1,   // A block-scoped variable (let or const)
    Property                = 1 << 2,   // Property or enum member
    EnumMember              = 1 << 3,   // Enum member
    Function                = 1 << 4,   // Function
    Class                   = 1 << 5,   // Class
    Interface               = 1 << 6,   // Interface
    ConstEnum               = 1 << 7,   // Const enum
    RegularEnum             = 1 << 8,   // Enum
    ValueModule             = 1 << 9,   // Instantiated module
    NamespaceModule         = 1 << 10,  // Uninstantiated module
    TypeLiteral             = 1 << 11,  // Type Literal or mapped type
    ObjectLiteral           = 1 << 12,  // Object Literal
    Method                  = 1 << 13,  // Method
    Constructor             = 1 << 14,  // Constructor
    GetAccessor             = 1 << 15,  // Get accessor
    SetAccessor             = 1 << 16,  // Set accessor
    Signature               = 1 << 17,  // Call, construct, or index signature
    TypeParameter           = 1 << 18,  // Type parameter
    TypeAlias               = 1 << 19,  // Type alias
    ExportValue             = 1 << 20,  // Exported value marker (see comment in declareModuleMember in binder)
    Alias                   = 1 << 21,  // An alias for another symbol (see comment in isAliasSymbolDeclaration in checker)
    Prototype               = 1 << 22,  // Prototype property (no source representation)
    ExportStar              = 1 << 23,  // Export * declaration
    Optional                = 1 << 24,  // Optional property
    Transient               = 1 << 25,  // Transient symbol (created during type check)
    Assignment              = 1 << 26,  // Assignment treated as declaration (eg `this.prop = 1`)
    ModuleExports           = 1 << 27,  // Symbol for CommonJS `module` of `module.exports`
    ```
     */
    static getActiveSymbolFlags(value: ts.SymbolFlags, skipExcludes: boolean) {
        let active = new Array<string>();

        if ((value & ts.SymbolFlags.None) !== 0) active.push('None');
        if ((value & ts.SymbolFlags.FunctionScopedVariable) !== 0) active.push('FunctionScopedVariable');
        if ((value & ts.SymbolFlags.BlockScopedVariable) !== 0) active.push('BlockScopedVariable');
        if ((value & ts.SymbolFlags.Property) !== 0) active.push('Property');
        if ((value & ts.SymbolFlags.EnumMember) !== 0) active.push('EnumMember');
        if ((value & ts.SymbolFlags.Function) !== 0) active.push('Function');
        if ((value & ts.SymbolFlags.Class) !== 0) active.push('Class');
        if ((value & ts.SymbolFlags.Interface) !== 0) active.push('Interface');
        if ((value & ts.SymbolFlags.ConstEnum) !== 0) active.push('ConstEnum');
        if ((value & ts.SymbolFlags.RegularEnum) !== 0) active.push('RegularEnum');
        if ((value & ts.SymbolFlags.ValueModule) !== 0) active.push('ValueModule');
        if ((value & ts.SymbolFlags.NamespaceModule) !== 0) active.push('NamespaceModule');
        if ((value & ts.SymbolFlags.TypeLiteral) !== 0) active.push('TypeLiteral');
        if ((value & ts.SymbolFlags.ObjectLiteral) !== 0) active.push('ObjectLiteral');
        if ((value & ts.SymbolFlags.Method) !== 0) active.push('Method');
        if ((value & ts.SymbolFlags.Constructor) !== 0) active.push('Constructor');
        if ((value & ts.SymbolFlags.GetAccessor) !== 0) active.push('GetAccessor');
        if ((value & ts.SymbolFlags.SetAccessor) !== 0) active.push('SetAccessor');
        if ((value & ts.SymbolFlags.Signature) !== 0) active.push('Signature');
        if ((value & ts.SymbolFlags.TypeParameter) !== 0) active.push('TypeParameter');
        if ((value & ts.SymbolFlags.TypeAlias) !== 0) active.push('TypeAlias');
        if ((value & ts.SymbolFlags.ExportValue) !== 0) active.push('ExportValue');
        if ((value & ts.SymbolFlags.Alias) !== 0) active.push('Alias');
        if ((value & ts.SymbolFlags.Prototype) !== 0) active.push('Prototype');
        if ((value & ts.SymbolFlags.ExportStar) !== 0) active.push('ExportStar');
        if ((value & ts.SymbolFlags.Optional) !== 0) active.push('Optional');
        if ((value & ts.SymbolFlags.Transient) !== 0) active.push('Transient');
        if ((value & ts.SymbolFlags.Assignment) !== 0) active.push('Assignment');
        if ((value & ts.SymbolFlags.ModuleExports) !== 0) active.push('ModuleExports');
        if ((value & ts.SymbolFlags.Enum) !== 0) active.push('Enum');
        if ((value & ts.SymbolFlags.Variable) !== 0) active.push('Variable');
        if ((value & ts.SymbolFlags.Value) !== 0) active.push('Value');
        if ((value & ts.SymbolFlags.Type) !== 0) active.push('Type');
        if ((value & ts.SymbolFlags.Namespace) !== 0) active.push('Namespace');
        if ((value & ts.SymbolFlags.Module) !== 0) active.push('Module');
        if ((value & ts.SymbolFlags.Accessor) !== 0) active.push('Accessor');

        if ((value & ts.SymbolFlags.ModuleMember) !== 0) active.push('ModuleMember');
        if ((value & ts.SymbolFlags.ClassMember) !== 0) active.push('ClassMember');
        if ((value & ts.SymbolFlags.ExportHasLocal) !== 0) active.push('ExportHasLocal');
        if ((value & ts.SymbolFlags.BlockScoped) !== 0) active.push('BlockScoped');
        if ((value & ts.SymbolFlags.PropertyOrAccessor) !== 0) active.push('PropertyOrAccessor');

        if (!skipExcludes) {
            if ((value & ts.SymbolFlags.FunctionScopedVariableExcludes) !== 0) active.push('FunctionScopedVariableExcludes');
            if ((value & ts.SymbolFlags.BlockScopedVariableExcludes) !== 0) active.push('BlockScopedVariableExcludes');
            if ((value & ts.SymbolFlags.ParameterExcludes) !== 0) active.push('ParameterExcludes');
            if ((value & ts.SymbolFlags.PropertyExcludes) !== 0) active.push('PropertyExcludes');
            if ((value & ts.SymbolFlags.EnumMemberExcludes) !== 0) active.push('EnumMemberExcludes');
            if ((value & ts.SymbolFlags.FunctionExcludes) !== 0) active.push('FunctionExcludes');
            if ((value & ts.SymbolFlags.ClassExcludes) !== 0) active.push('ClassExcludes');
            if ((value & ts.SymbolFlags.InterfaceExcludes) !== 0) active.push('InterfaceExcludes');
            if ((value & ts.SymbolFlags.RegularEnumExcludes) !== 0) active.push('RegularEnumExcludes');
            if ((value & ts.SymbolFlags.ConstEnumExcludes) !== 0) active.push('ConstEnumExcludes');
            if ((value & ts.SymbolFlags.ValueModuleExcludes) !== 0) active.push('ValueModuleExcludes');
            if ((value & ts.SymbolFlags.NamespaceModuleExcludes) !== 0) active.push('NamespaceModuleExcludes');
            if ((value & ts.SymbolFlags.MethodExcludes) !== 0) active.push('MethodExcludes');
            if ((value & ts.SymbolFlags.GetAccessorExcludes) !== 0) active.push('GetAccessorExcludes');
            if ((value & ts.SymbolFlags.SetAccessorExcludes) !== 0) active.push('SetAccessorExcludes');
            if ((value & ts.SymbolFlags.TypeParameterExcludes) !== 0) active.push('TypeParameterExcludes');
            if ((value & ts.SymbolFlags.TypeAliasExcludes) !== 0) active.push('TypeAliasExcludes');
            if ((value & ts.SymbolFlags.AliasExcludes) !== 0) active.push('AliasExcludes');
        }

        return active;
    }

    static getActiveTypeFlags(value: ts.TypeFlags) {
        let active = new Array<string>();

        if ((value & ts.TypeFlags.Any) !== 0) active.push('Any');
        if ((value & ts.TypeFlags.Unknown) !== 0) active.push('Unknown');
        if ((value & ts.TypeFlags.String) !== 0) active.push('String');
        if ((value & ts.TypeFlags.Number) !== 0) active.push('Number');
        if ((value & ts.TypeFlags.Boolean) !== 0) active.push('Boolean');
        if ((value & ts.TypeFlags.Enum) !== 0) active.push('Enum');
        if ((value & ts.TypeFlags.BigInt) !== 0) active.push('BigInt');
        if ((value & ts.TypeFlags.StringLiteral) !== 0) active.push('StringLiteral');
        if ((value & ts.TypeFlags.NumberLiteral) !== 0) active.push('NumberLiteral');
        if ((value & ts.TypeFlags.BooleanLiteral) !== 0) active.push('BooleanLiteral');
        if ((value & ts.TypeFlags.EnumLiteral) !== 0) active.push('EnumLiteral');
        if ((value & ts.TypeFlags.BigIntLiteral) !== 0) active.push('BigIntLiteral');
        if ((value & ts.TypeFlags.ESSymbol) !== 0) active.push('ESSymbol');
        if ((value & ts.TypeFlags.UniqueESSymbol) !== 0) active.push('UniqueESSymbol');
        if ((value & ts.TypeFlags.Void) !== 0) active.push('Void');
        if ((value & ts.TypeFlags.Undefined) !== 0) active.push('Undefined');
        if ((value & ts.TypeFlags.Null) !== 0) active.push('Null');
        if ((value & ts.TypeFlags.Never) !== 0) active.push('Never');
        if ((value & ts.TypeFlags.TypeParameter) !== 0) active.push('TypeParameter');
        if ((value & ts.TypeFlags.Object) !== 0) active.push('Object');
        if ((value & ts.TypeFlags.Union) !== 0) active.push('Union');
        if ((value & ts.TypeFlags.Intersection) !== 0) active.push('Intersection');
        if ((value & ts.TypeFlags.Index) !== 0) active.push('Index');
        if ((value & ts.TypeFlags.IndexedAccess) !== 0) active.push('IndexedAccess');
        if ((value & ts.TypeFlags.Conditional) !== 0) active.push('Conditional');
        if ((value & ts.TypeFlags.Substitution) !== 0) active.push('Substitution');
        if ((value & ts.TypeFlags.NonPrimitive) !== 0) active.push('NonPrimitive');
        if ((value & ts.TypeFlags.AnyOrUnknown) !== 0) active.push('AnyOrUnknown');
        if ((value & ts.TypeFlags.Nullable) !== 0) active.push('Nullable');
        if ((value & ts.TypeFlags.Literal) !== 0) active.push('Literal');
        if ((value & ts.TypeFlags.Unit) !== 0) active.push('Unit');
        if ((value & ts.TypeFlags.StringOrNumberLiteral) !== 0) active.push('StringOrNumberLiteral');
        if ((value & ts.TypeFlags.StringOrNumberLiteralOrUnique) !== 0) active.push('StringOrNumberLiteralOrUnique');
        if ((value & ts.TypeFlags.DefinitelyFalsy) !== 0) active.push('DefinitelyFalsy');
        if ((value & ts.TypeFlags.PossiblyFalsy) !== 0) active.push('PossiblyFalsy');
        if ((value & ts.TypeFlags.Intrinsic) !== 0) active.push('Intrinsic');
        if ((value & ts.TypeFlags.Primitive) !== 0) active.push('Primitive');
        if ((value & ts.TypeFlags.StringLike) !== 0) active.push('StringLike');
        if ((value & ts.TypeFlags.NumberLike) !== 0) active.push('NumberLike');
        if ((value & ts.TypeFlags.BigIntLike) !== 0) active.push('BigIntLike');
        if ((value & ts.TypeFlags.BooleanLike) !== 0) active.push('BooleanLike');
        if ((value & ts.TypeFlags.EnumLike) !== 0) active.push('EnumLike');
        if ((value & ts.TypeFlags.ESSymbolLike) !== 0) active.push('ESSymbolLike');
        if ((value & ts.TypeFlags.VoidLike) !== 0) active.push('VoidLike');
        if ((value & ts.TypeFlags.DisjointDomains) !== 0) active.push('DisjointDomains');
        if ((value & ts.TypeFlags.UnionOrIntersection) !== 0) active.push('UnionOrIntersection');
        if ((value & ts.TypeFlags.StructuredType) !== 0) active.push('StructuredType');
        if ((value & ts.TypeFlags.TypeVariable) !== 0) active.push('TypeVariable');
        if ((value & ts.TypeFlags.InstantiableNonPrimitive) !== 0) active.push('InstantiableNonPrimitive');
        if ((value & ts.TypeFlags.InstantiablePrimitive) !== 0) active.push('InstantiablePrimitive');
        if ((value & ts.TypeFlags.Instantiable) !== 0) active.push('Instantiable');
        if ((value & ts.TypeFlags.StructuredOrInstantiable) !== 0) active.push('StructuredOrInstantiable');
        if ((value & ts.TypeFlags.ObjectFlagsType) !== 0) active.push('ObjectFlagsType');
        if ((value & ts.TypeFlags.Narrowable) !== 0) active.push('Narrowable');
        if ((value & ts.TypeFlags.NotUnionOrUnit) !== 0) active.push('NotUnionOrUnit');
        if ((value & ts.TypeFlags.NotPrimitiveUnion) !== 0) active.push('NotPrimitiveUnion');
        if ((value & ts.TypeFlags.IncludesMask) !== 0) active.push('IncludesMask');
        if ((value & ts.TypeFlags.IncludesStructuredOrInstantiable) !== 0) active.push('IncludesStructuredOrInstantiable');
        if ((value & ts.TypeFlags.IncludesNonWideningType) !== 0) active.push('IncludesNonWideningType');
        if ((value & ts.TypeFlags.IncludesWildcard) !== 0) active.push('IncludesWildcard');
        if ((value & ts.TypeFlags.IncludesEmptyObject) !== 0) active.push('IncludesEmptyObject');
        if ((value & ts.TypeFlags.GenericMappedType) !== 0) active.push('GenericMappedType');

        return active;
    }

}