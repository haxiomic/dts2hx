import Terminal from "./Terminal";
import * as ts from 'typescript';

export default class Debug {

    static getIndent(depth: number) {
        let indent = '';
        for (let i = 0;i < depth; i++) indent += '\t';
        return indent;
    }

    static getNodeLocation(node: ts.Node) {
        return node.getSourceFile().getLineAndCharacterOfPosition(node.getStart());
    }

    static getPrintableLocation(node: ts.Node) {
        let { line, character } = this.getNodeLocation(node);
        return `${node.getSourceFile().fileName}:${line}${character > 0 ? ':0' : ''}`;
    }

    static logSymbol(s: ts.Symbol, depth: number) {
        Terminal.log(this.getIndent(depth) + '<b>' + s.name + '</b>', ' <i,dim>' + this.getKeyActiveFlags(s.getFlags(), true).join(', ') + '<//>');
    }

    static symbolPath(s: ts.Symbol): string {
        let symbolIdent: string;
        if (s.globalExports != null) {
            let globalNames = new Array<string>();
            s.globalExports.forEach(g => globalNames.push(g.name));
            symbolIdent = '{' + globalNames.join(', ') + '}';
        } else {
            symbolIdent = s.name;
        }

        if (s.parent != null) {
            return this.symbolPath(s.parent) + '.' + symbolIdent;
        } else {
            return symbolIdent;
        }
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
    static getKeyActiveFlags(value: ts.SymbolFlags, skipLessImportant: boolean) {
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

        if (!skipLessImportant) {
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
            if ((value & ts.SymbolFlags.ExportHasLocal) !== 0) active.push('ExportHasLocal');
            if ((value & ts.SymbolFlags.BlockScoped) !== 0) active.push('BlockScoped');
            if ((value & ts.SymbolFlags.ModuleMember) !== 0) active.push('ModuleMember');
            if ((value & ts.SymbolFlags.PropertyOrAccessor) !== 0) active.push('PropertyOrAccessor');
            if ((value & ts.SymbolFlags.ClassMember) !== 0) active.push('ClassMember');
        }

        return active;
    }

}