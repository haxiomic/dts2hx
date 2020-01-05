package typescript.ts;


/**
Generated from: test-definitions/typescript/typescript-extended.d.ts:1977:5
**/
@:native('ts.TypeChecker')
extern interface TypeChecker {
	function getTypeOfSymbolAtLocation(symbol: typescript.ts.Symbol, node: typescript.ts.Node): typescript.ts.Type;
	function getDeclaredTypeOfSymbol(symbol: typescript.ts.Symbol): typescript.ts.Type;
	function getPropertiesOfType(type: typescript.ts.Type): Array<typescript.ts.Symbol>;
	function getPropertyOfType(type: typescript.ts.Type, propertyName: String): Null<typescript.ts.Symbol>;
	function getIndexInfoOfType(type: typescript.ts.Type, kind: typescript.ts.IndexKind): Null<typescript.ts.IndexInfo>;
	function getSignaturesOfType(type: typescript.ts.Type, kind: typescript.ts.SignatureKind): Array<typescript.ts.Signature>;
	function getIndexTypeOfType(type: typescript.ts.Type, kind: typescript.ts.IndexKind): Null<typescript.ts.Type>;
	function getBaseTypes(type: typescript.ts.InterfaceType): Array<typescript.ts.BaseType>;
	function getBaseTypeOfLiteralType(type: typescript.ts.Type): typescript.ts.Type;
	function getWidenedType(type: typescript.ts.Type): typescript.ts.Type;
	function getReturnTypeOfSignature(signature: typescript.ts.Signature): typescript.ts.Type;
	function getNullableType(type: typescript.ts.Type, flags: typescript.ts.TypeFlags): typescript.ts.Type;
	function getNonNullableType(type: typescript.ts.Type): typescript.ts.Type;
	function getTypeArguments(type: typescript.ts.TypeReference): Array<typescript.ts.Type>;
	/**
	Note that the resulting nodes cannot be checked.
	**/
	function typeToTypeNode(type: typescript.ts.Type, ?enclosingDeclaration: typescript.ts.Node, ?flags: typescript.ts.NodeBuilderFlags): Null<typescript.ts.TypeNode>;
	/**
	Note that the resulting nodes cannot be checked.
	**/
	function signatureToSignatureDeclaration(signature: typescript.ts.Signature, kind: typescript.ts.SyntaxKind, ?enclosingDeclaration: typescript.ts.Node, ?flags: typescript.ts.NodeBuilderFlags): Null<Any>;
	/**
	Note that the resulting nodes cannot be checked.
	**/
	function indexInfoToIndexSignatureDeclaration(indexInfo: typescript.ts.IndexInfo, kind: typescript.ts.IndexKind, ?enclosingDeclaration: typescript.ts.Node, ?flags: typescript.ts.NodeBuilderFlags): Null<typescript.ts.IndexSignatureDeclaration>;
	/**
	Note that the resulting nodes cannot be checked.
	**/
	function symbolToEntityName(symbol: typescript.ts.Symbol, meaning: typescript.ts.SymbolFlags, ?enclosingDeclaration: typescript.ts.Node, ?flags: typescript.ts.NodeBuilderFlags): Null<typescript.ts.EntityName>;
	/**
	Note that the resulting nodes cannot be checked.
	**/
	function symbolToExpression(symbol: typescript.ts.Symbol, meaning: typescript.ts.SymbolFlags, ?enclosingDeclaration: typescript.ts.Node, ?flags: typescript.ts.NodeBuilderFlags): Null<typescript.ts.Expression>;
	/**
	Note that the resulting nodes cannot be checked.
	**/
	function symbolToTypeParameterDeclarations(symbol: typescript.ts.Symbol, ?enclosingDeclaration: typescript.ts.Node, ?flags: typescript.ts.NodeBuilderFlags): Null<typescript.ts.NodeArray<typescript.ts.TypeParameterDeclaration>>;
	/**
	Note that the resulting nodes cannot be checked.
	**/
	function symbolToParameterDeclaration(symbol: typescript.ts.Symbol, ?enclosingDeclaration: typescript.ts.Node, ?flags: typescript.ts.NodeBuilderFlags): Null<typescript.ts.ParameterDeclaration>;
	/**
	Note that the resulting nodes cannot be checked.
	**/
	function typeParameterToDeclaration(parameter: typescript.ts.TypeParameter, ?enclosingDeclaration: typescript.ts.Node, ?flags: typescript.ts.NodeBuilderFlags): Null<typescript.ts.TypeParameterDeclaration>;
	function getSymbolsInScope(location: typescript.ts.Node, meaning: typescript.ts.SymbolFlags): Array<typescript.ts.Symbol>;
	function getSymbolAtLocation(node: typescript.ts.Node): Null<typescript.ts.Symbol>;
	function getSymbolsOfParameterPropertyDeclaration(parameter: typescript.ts.ParameterDeclaration, parameterName: String): Array<typescript.ts.Symbol>;
	/**
	The function returns the value (local variable) symbol of an identifier in the short-hand property assignment.
	This is necessary as an identifier in short-hand property assignment can contains two meaning: property name and property value.
	**/
	function getShorthandAssignmentValueSymbol(location: typescript.ts.Node): Null<typescript.ts.Symbol>;
	function getExportSpecifierLocalTargetSymbol(location: typescript.ts.ExportSpecifier): Null<typescript.ts.Symbol>;
	/**
	If a symbol is a local symbol with an associated exported symbol, returns the exported symbol.
	Otherwise returns its input.
	For example, at `export type T = number;`:
	     - `getSymbolAtLocation` at the location `T` will return the exported symbol for `T`.
	     - But the result of `getSymbolsInScope` will contain the *local* symbol for `T`, not the exported symbol.
	     - Calling `getExportSymbolOfSymbol` on that local symbol will return the exported symbol.
	**/
	function getExportSymbolOfSymbol(symbol: typescript.ts.Symbol): typescript.ts.Symbol;
	function getPropertySymbolOfDestructuringAssignment(location: typescript.ts.Identifier): Null<typescript.ts.Symbol>;
	function getTypeOfAssignmentPattern(pattern: typescript.ts.AssignmentPattern): typescript.ts.Type;
	function getTypeAtLocation(node: typescript.ts.Node): typescript.ts.Type;
	function getTypeFromTypeNode(node: typescript.ts.TypeNode): typescript.ts.Type;
	function signatureToString(signature: typescript.ts.Signature, ?enclosingDeclaration: typescript.ts.Node, ?flags: typescript.ts.TypeFormatFlags, ?kind: typescript.ts.SignatureKind): String;
	function typeToString(type: typescript.ts.Type, ?enclosingDeclaration: typescript.ts.Node, ?flags: typescript.ts.TypeFormatFlags): String;
	function symbolToString(symbol: typescript.ts.Symbol, ?enclosingDeclaration: typescript.ts.Node, ?meaning: typescript.ts.SymbolFlags, ?flags: typescript.ts.SymbolFormatFlags): String;
	function typePredicateToString(predicate: typescript.ts.TypePredicate, ?enclosingDeclaration: typescript.ts.Node, ?flags: typescript.ts.TypeFormatFlags): String;
	function getFullyQualifiedName(symbol: typescript.ts.Symbol): String;
	function getAugmentedPropertiesOfType(type: typescript.ts.Type): Array<typescript.ts.Symbol>;
	function getRootSymbols(symbol: typescript.ts.Symbol): Array<typescript.ts.Symbol>;
	function getContextualType(node: typescript.ts.Expression): Null<typescript.ts.Type>;
	/**
	returns unknownSignature in the case of an error.
	returns undefined if the node is not valid.
	**/
	function getResolvedSignature(node: typescript.ts.CallLikeExpression, ?candidatesOutArray: Array<typescript.ts.Signature>, ?argumentCount: Float): Null<typescript.ts.Signature>;
	function getSignatureFromDeclaration(declaration: typescript.ts.SignatureDeclaration): Null<typescript.ts.Signature>;
	function isImplementationOfOverload(node: typescript.ts.SignatureDeclaration): Null<Bool>;
	function isUndefinedSymbol(symbol: typescript.ts.Symbol): Bool;
	function isArgumentsSymbol(symbol: typescript.ts.Symbol): Bool;
	function isUnknownSymbol(symbol: typescript.ts.Symbol): Bool;
	function getConstantValue(node: haxe.extern.EitherType<typescript.ts.EnumMember, haxe.extern.EitherType<typescript.ts.PropertyAccessExpression, typescript.ts.ElementAccessExpression>>): Null<haxe.extern.EitherType<String, Float>>;
	function isValidPropertyAccess(node: haxe.extern.EitherType<typescript.ts.PropertyAccessExpression, haxe.extern.EitherType<typescript.ts.QualifiedName, typescript.ts.ImportTypeNode>>, propertyName: String): Bool;
	/**
	Follow all aliases to get the original symbol.
	**/
	function getAliasedSymbol(symbol: typescript.ts.Symbol): typescript.ts.Symbol;
	function getExportsOfModule(moduleSymbol: typescript.ts.Symbol): Array<typescript.ts.Symbol>;
	function getJsxIntrinsicTagNamesAt(location: typescript.ts.Node): Array<typescript.ts.Symbol>;
	function isOptionalParameter(node: typescript.ts.ParameterDeclaration): Bool;
	function getAmbientModules(): Array<typescript.ts.Symbol>;
	function tryGetMemberInModuleExports(memberName: String, moduleSymbol: typescript.ts.Symbol): Null<typescript.ts.Symbol>;
	function getApparentType(type: typescript.ts.Type): typescript.ts.Type;
	function getBaseConstraintOfType(type: typescript.ts.Type): Null<typescript.ts.Type>;
	function getDefaultFromTypeParameter(type: typescript.ts.Type): Null<typescript.ts.Type>;
	/**
	Depending on the operation performed, it may be appropriate to throw away the checker
	if the cancellation token is triggered. Typically, if it is used for error checking
	and the operation is cancelled, then it should be discarded, otherwise it is safe to keep.
	**/
	function runWithCancellationToken<T>(token: typescript.ts.CancellationToken, cb: (checker: typescript.ts.TypeChecker) -> T): T;
}

