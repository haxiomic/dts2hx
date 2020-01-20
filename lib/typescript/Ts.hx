package typescript;



@:native('ts')
@:jsRequire('typescript')
final extern class Ts {
	static function getSymbolId(symbol: typescript.ts.Symbol): Float;
	static var versionMajorMinor: String;
	/**
	The version of the TypeScript compiler release
	**/
	static var version: String;
	static function getNodeMajorVersion(): Null<Float>;
	static var sys: typescript.ts.System;
	static function tokenToString(t: typescript.ts.SyntaxKind): Null<String>;
	static function getPositionOfLineAndCharacter(sourceFile: typescript.ts.SourceFileLike, line: Float, character: Float): Float;
	static function getLineAndCharacterOfPosition(sourceFile: typescript.ts.SourceFileLike, position: Float): typescript.ts.LineAndCharacter;
	static function isWhiteSpaceLike(ch: Float): Bool;
	/**
	Does not include line breaks. For that, see isWhiteSpaceLike.
	**/
	static function isWhiteSpaceSingleLine(ch: Float): Bool;
	static function isLineBreak(ch: Float): Bool;
	static function couldStartTrivia(text: String, pos: Float): Bool;
	@:overload(function<T, U>(text: String, pos: Float, cb: (pos: Float, end: Float, kind: typescript.ts.CommentKind, hasTrailingNewLine: Bool, state: T) -> U, state: T): Null<U> { })
	static function forEachLeadingCommentRange<U>(text: String, pos: Float, cb: (pos: Float, end: Float, kind: typescript.ts.CommentKind, hasTrailingNewLine: Bool) -> U): Null<U>;
	@:overload(function<T, U>(text: String, pos: Float, cb: (pos: Float, end: Float, kind: typescript.ts.CommentKind, hasTrailingNewLine: Bool, state: T) -> U, state: T): Null<U> { })
	static function forEachTrailingCommentRange<U>(text: String, pos: Float, cb: (pos: Float, end: Float, kind: typescript.ts.CommentKind, hasTrailingNewLine: Bool) -> U): Null<U>;
	static function reduceEachLeadingCommentRange<T, U>(text: String, pos: Float, cb: (pos: Float, end: Float, kind: typescript.ts.CommentKind, hasTrailingNewLine: Bool, state: T, memo: U) -> U, state: T, initial: U): Null<U>;
	static function reduceEachTrailingCommentRange<T, U>(text: String, pos: Float, cb: (pos: Float, end: Float, kind: typescript.ts.CommentKind, hasTrailingNewLine: Bool, state: T, memo: U) -> U, state: T, initial: U): Null<U>;
	static function getLeadingCommentRanges(text: String, pos: Float): Null<Array<typescript.ts.CommentRange>>;
	static function getTrailingCommentRanges(text: String, pos: Float): Null<Array<typescript.ts.CommentRange>>;
	/**
	Optionally, get the shebang
	**/
	static function getShebang(text: String): Null<String>;
	static function isIdentifierStart(ch: Float, languageVersion: Null<typescript.ts.ScriptTarget>): Bool;
	static function isIdentifierPart(ch: Float, languageVersion: Null<typescript.ts.ScriptTarget>): Bool;
	static function createScanner(languageVersion: typescript.ts.ScriptTarget, skipTrivia: Bool, ?languageVariant: typescript.ts.LanguageVariant, ?textInitial: String, ?onError: typescript.ts.ErrorCallback, ?start: Float, ?length: Float): typescript.ts.Scanner;
	static function isExternalModuleNameRelative(moduleName: String): Bool;
	static function sortAndDeduplicateDiagnostics<T>(diagnostics: Array<T>): typescript.ts.SortedReadonlyArray<T>;
	static function getDefaultLibFileName(options: typescript.ts.CompilerOptions): String;
	static function textSpanEnd(span: typescript.ts.TextSpan): Float;
	static function textSpanIsEmpty(span: typescript.ts.TextSpan): Bool;
	static function textSpanContainsPosition(span: typescript.ts.TextSpan, position: Float): Bool;
	static function textSpanContainsTextSpan(span: typescript.ts.TextSpan, other: typescript.ts.TextSpan): Bool;
	static function textSpanOverlapsWith(span: typescript.ts.TextSpan, other: typescript.ts.TextSpan): Bool;
	static function textSpanOverlap(span1: typescript.ts.TextSpan, span2: typescript.ts.TextSpan): Null<typescript.ts.TextSpan>;
	static function textSpanIntersectsWithTextSpan(span: typescript.ts.TextSpan, other: typescript.ts.TextSpan): Bool;
	static function textSpanIntersectsWith(span: typescript.ts.TextSpan, start: Float, length: Float): Bool;
	static function decodedTextSpanIntersectsWith(start1: Float, length1: Float, start2: Float, length2: Float): Bool;
	static function textSpanIntersectsWithPosition(span: typescript.ts.TextSpan, position: Float): Bool;
	static function textSpanIntersection(span1: typescript.ts.TextSpan, span2: typescript.ts.TextSpan): Null<typescript.ts.TextSpan>;
	static function createTextSpan(start: Float, length: Float): typescript.ts.TextSpan;
	static function createTextSpanFromBounds(start: Float, end: Float): typescript.ts.TextSpan;
	static function textChangeRangeNewSpan(range: typescript.ts.TextChangeRange): typescript.ts.TextSpan;
	static function textChangeRangeIsUnchanged(range: typescript.ts.TextChangeRange): Bool;
	static function createTextChangeRange(span: typescript.ts.TextSpan, newLength: Float): typescript.ts.TextChangeRange;
	/**
	Called to merge all the changes that occurred across several versions of a script snapshot
	into a single change.  i.e. if a user keeps making successive edits to a script we will
	have a text change from V1 to V2, V2 to V3, ..., Vn.
	
	This function will then merge those changes into a single change range valid between V1 and
	Vn.
	**/
	static function collapseTextChangeRangesAcrossMultipleVersions(changes: Array<typescript.ts.TextChangeRange>): typescript.ts.TextChangeRange;
	static function getTypeParameterOwner(d: typescript.ts.Declaration): Null<typescript.ts.Declaration>;
	static function isParameterPropertyDeclaration(node: typescript.ts.Node, parent: typescript.ts.Node): Bool;
	static function isEmptyBindingPattern(node: typescript.ts.BindingName): Bool;
	static function isEmptyBindingElement(node: typescript.ts.BindingElement): Bool;
	static function walkUpBindingElementsAndPatterns(binding: typescript.ts.BindingElement): haxe.extern.EitherType<typescript.ts.VariableDeclaration, typescript.ts.ParameterDeclaration>;
	static function getCombinedModifierFlags(node: typescript.ts.Declaration): typescript.ts.ModifierFlags;
	static function getCombinedNodeFlags(node: typescript.ts.Node): typescript.ts.NodeFlags;
	/**
	Checks to see if the locale is in the appropriate format,
	and if it is, attempts to set the appropriate language.
	**/
	static function validateLocaleAndSetLanguage(locale: String, sys: {	function getExecutingFilePath(): String; 	function resolvePath(path: String): String; 	function fileExists(fileName: String): Bool; 	function readFile(fileName: String): Null<String>;}, ?errors: typescript.ts.Push<typescript.ts.Diagnostic>): Void;
	@:overload(function<T>(node: typescript.ts.Node, nodeTest: (node: typescript.ts.Node) -> Bool): T { })
	@:overload(function(node: Null<typescript.ts.Node>): Null<typescript.ts.Node> { })
	@:overload(function<T>(node: Null<typescript.ts.Node>, nodeTest: (node: Null<typescript.ts.Node>) -> Bool): Null<T> { })
	static function getOriginalNode(node: typescript.ts.Node): typescript.ts.Node;
	/**
	Gets a value indicating whether a node originated in the parse tree.
	**/
	static function isParseTreeNode(node: typescript.ts.Node): Bool;
	/**
	Gets the original parse tree node for a node.
	
	Gets the original parse tree node for a node.
	**/
	@:overload(function<T>(node: Null<typescript.ts.Node>, ?nodeTest: (node: typescript.ts.Node) -> Bool): Null<T> { })
	static function getParseTreeNode(node: typescript.ts.Node): typescript.ts.Node;
	/**
	Add an extra underscore to identifiers that start with two underscores to avoid issues with magic names like '__proto__'
	**/
	static function escapeLeadingUnderscores(identifier: String): typescript.ts.__String;
	/**
	Remove extra underscore from escaped identifier text content.
	**/
	static function unescapeLeadingUnderscores(identifier: typescript.ts.__String): String;
	static function idText(identifier: typescript.ts.Identifier): String;
	static function symbolName(symbol: typescript.ts.Symbol): String;
	static function getNameOfJSDocTypedef(declaration: typescript.ts.JSDocTypedefTag): Null<typescript.ts.Identifier>;
	static function getNameOfDeclaration(declaration: haxe.extern.EitherType<typescript.ts.Declaration, typescript.ts.Expression>): Null<typescript.ts.DeclarationName>;
	/**
	Gets the JSDoc parameter tags for the node if present.
	**/
	static function getJSDocParameterTags(param: typescript.ts.ParameterDeclaration): Array<typescript.ts.JSDocParameterTag>;
	/**
	Gets the JSDoc type parameter tags for the node if present.
	**/
	static function getJSDocTypeParameterTags(param: typescript.ts.TypeParameterDeclaration): Array<typescript.ts.JSDocTemplateTag>;
	/**
	Return true if the node has JSDoc parameter tags.
	**/
	static function hasJSDocParameterTags(node: haxe.extern.EitherType<typescript.ts.FunctionLikeDeclaration, typescript.ts.SignatureDeclaration>): Bool;
	/**
	Gets the JSDoc augments tag for the node if present
	**/
	static function getJSDocAugmentsTag(node: typescript.ts.Node): Null<typescript.ts.JSDocAugmentsTag>;
	/**
	Gets the JSDoc class tag for the node if present
	**/
	static function getJSDocClassTag(node: typescript.ts.Node): Null<typescript.ts.JSDocClassTag>;
	/**
	Gets the JSDoc enum tag for the node if present
	**/
	static function getJSDocEnumTag(node: typescript.ts.Node): Null<typescript.ts.JSDocEnumTag>;
	/**
	Gets the JSDoc this tag for the node if present
	**/
	static function getJSDocThisTag(node: typescript.ts.Node): Null<typescript.ts.JSDocThisTag>;
	/**
	Gets the JSDoc return tag for the node if present
	**/
	static function getJSDocReturnTag(node: typescript.ts.Node): Null<typescript.ts.JSDocReturnTag>;
	/**
	Gets the JSDoc template tag for the node if present
	**/
	static function getJSDocTemplateTag(node: typescript.ts.Node): Null<typescript.ts.JSDocTemplateTag>;
	/**
	Gets the JSDoc type tag for the node if present and valid
	**/
	static function getJSDocTypeTag(node: typescript.ts.Node): Null<typescript.ts.JSDocTypeTag>;
	/**
	Gets the type node for the node if provided via JSDoc.
	**/
	static function getJSDocType(node: typescript.ts.Node): Null<typescript.ts.TypeNode>;
	/**
	Gets the return type node for the node if provided via JSDoc return tag or type tag.
	**/
	static function getJSDocReturnType(node: typescript.ts.Node): Null<typescript.ts.TypeNode>;
	/**
	Get all JSDoc tags related to a node, including those on parent nodes.
	**/
	static function getJSDocTags(node: typescript.ts.Node): Array<typescript.ts.JSDocTag>;
	/**
	Gets all JSDoc tags of a specified kind, or undefined if not present.
	**/
	static function getAllJSDocTagsOfKind(node: typescript.ts.Node, kind: typescript.ts.SyntaxKind): Array<typescript.ts.JSDocTag>;
	/**
	Gets the effective type parameters. If the node was parsed in a
	JavaScript file, gets the type parameters from the `@template` tag from JSDoc.
	**/
	static function getEffectiveTypeParameterDeclarations(node: typescript.ts.DeclarationWithTypeParameters): Array<typescript.ts.TypeParameterDeclaration>;
	static function getEffectiveConstraintOfTypeParameter(node: typescript.ts.TypeParameterDeclaration): Null<typescript.ts.TypeNode>;
	static var unchangedTextChangeRange: typescript.ts.TextChangeRange;
	static function isNumericLiteral(node: typescript.ts.Node): Bool;
	static function isBigIntLiteral(node: typescript.ts.Node): Bool;
	static function isStringLiteral(node: typescript.ts.Node): Bool;
	static function isJsxText(node: typescript.ts.Node): Bool;
	static function isRegularExpressionLiteral(node: typescript.ts.Node): Bool;
	static function isNoSubstitutionTemplateLiteral(node: typescript.ts.Node): Bool;
	static function isTemplateHead(node: typescript.ts.Node): Bool;
	static function isTemplateMiddle(node: typescript.ts.Node): Bool;
	static function isTemplateTail(node: typescript.ts.Node): Bool;
	static function isIdentifier(node: typescript.ts.Node): Bool;
	static function isQualifiedName(node: typescript.ts.Node): Bool;
	static function isComputedPropertyName(node: typescript.ts.Node): Bool;
	static function isTypeParameterDeclaration(node: typescript.ts.Node): Bool;
	static function isParameter(node: typescript.ts.Node): Bool;
	static function isDecorator(node: typescript.ts.Node): Bool;
	static function isPropertySignature(node: typescript.ts.Node): Bool;
	static function isPropertyDeclaration(node: typescript.ts.Node): Bool;
	static function isMethodSignature(node: typescript.ts.Node): Bool;
	static function isMethodDeclaration(node: typescript.ts.Node): Bool;
	static function isConstructorDeclaration(node: typescript.ts.Node): Bool;
	static function isGetAccessorDeclaration(node: typescript.ts.Node): Bool;
	static function isSetAccessorDeclaration(node: typescript.ts.Node): Bool;
	static function isCallSignatureDeclaration(node: typescript.ts.Node): Bool;
	static function isConstructSignatureDeclaration(node: typescript.ts.Node): Bool;
	static function isIndexSignatureDeclaration(node: typescript.ts.Node): Bool;
	static function isTypePredicateNode(node: typescript.ts.Node): Bool;
	static function isTypeReferenceNode(node: typescript.ts.Node): Bool;
	static function isFunctionTypeNode(node: typescript.ts.Node): Bool;
	static function isConstructorTypeNode(node: typescript.ts.Node): Bool;
	static function isTypeQueryNode(node: typescript.ts.Node): Bool;
	static function isTypeLiteralNode(node: typescript.ts.Node): Bool;
	static function isArrayTypeNode(node: typescript.ts.Node): Bool;
	static function isTupleTypeNode(node: typescript.ts.Node): Bool;
	static function isUnionTypeNode(node: typescript.ts.Node): Bool;
	static function isIntersectionTypeNode(node: typescript.ts.Node): Bool;
	static function isConditionalTypeNode(node: typescript.ts.Node): Bool;
	static function isInferTypeNode(node: typescript.ts.Node): Bool;
	static function isParenthesizedTypeNode(node: typescript.ts.Node): Bool;
	static function isThisTypeNode(node: typescript.ts.Node): Bool;
	static function isTypeOperatorNode(node: typescript.ts.Node): Bool;
	static function isIndexedAccessTypeNode(node: typescript.ts.Node): Bool;
	static function isMappedTypeNode(node: typescript.ts.Node): Bool;
	static function isLiteralTypeNode(node: typescript.ts.Node): Bool;
	static function isImportTypeNode(node: typescript.ts.Node): Bool;
	static function isObjectBindingPattern(node: typescript.ts.Node): Bool;
	static function isArrayBindingPattern(node: typescript.ts.Node): Bool;
	static function isBindingElement(node: typescript.ts.Node): Bool;
	static function isArrayLiteralExpression(node: typescript.ts.Node): Bool;
	static function isObjectLiteralExpression(node: typescript.ts.Node): Bool;
	static function isPropertyAccessExpression(node: typescript.ts.Node): Bool;
	static function isPropertyAccessChain(node: typescript.ts.Node): Bool;
	static function isElementAccessExpression(node: typescript.ts.Node): Bool;
	static function isElementAccessChain(node: typescript.ts.Node): Bool;
	static function isCallExpression(node: typescript.ts.Node): Bool;
	static function isCallChain(node: typescript.ts.Node): Bool;
	static function isOptionalChain(node: typescript.ts.Node): Bool;
	static function isNullishCoalesce(node: typescript.ts.Node): Bool;
	static function isNewExpression(node: typescript.ts.Node): Bool;
	static function isTaggedTemplateExpression(node: typescript.ts.Node): Bool;
	static function isTypeAssertion(node: typescript.ts.Node): Bool;
	static function isConstTypeReference(node: typescript.ts.Node): Bool;
	static function isParenthesizedExpression(node: typescript.ts.Node): Bool;
	@:overload(function(node: typescript.ts.Node): typescript.ts.Node { })
	static function skipPartiallyEmittedExpressions(node: typescript.ts.Expression): typescript.ts.Expression;
	static function isFunctionExpression(node: typescript.ts.Node): Bool;
	static function isArrowFunction(node: typescript.ts.Node): Bool;
	static function isDeleteExpression(node: typescript.ts.Node): Bool;
	static function isTypeOfExpression(node: typescript.ts.Node): Bool;
	static function isVoidExpression(node: typescript.ts.Node): Bool;
	static function isAwaitExpression(node: typescript.ts.Node): Bool;
	static function isPrefixUnaryExpression(node: typescript.ts.Node): Bool;
	static function isPostfixUnaryExpression(node: typescript.ts.Node): Bool;
	static function isBinaryExpression(node: typescript.ts.Node): Bool;
	static function isConditionalExpression(node: typescript.ts.Node): Bool;
	static function isTemplateExpression(node: typescript.ts.Node): Bool;
	static function isYieldExpression(node: typescript.ts.Node): Bool;
	static function isSpreadElement(node: typescript.ts.Node): Bool;
	static function isClassExpression(node: typescript.ts.Node): Bool;
	static function isOmittedExpression(node: typescript.ts.Node): Bool;
	static function isExpressionWithTypeArguments(node: typescript.ts.Node): Bool;
	static function isAsExpression(node: typescript.ts.Node): Bool;
	static function isNonNullExpression(node: typescript.ts.Node): Bool;
	static function isMetaProperty(node: typescript.ts.Node): Bool;
	static function isTemplateSpan(node: typescript.ts.Node): Bool;
	static function isSemicolonClassElement(node: typescript.ts.Node): Bool;
	static function isBlock(node: typescript.ts.Node): Bool;
	static function isVariableStatement(node: typescript.ts.Node): Bool;
	static function isEmptyStatement(node: typescript.ts.Node): Bool;
	static function isExpressionStatement(node: typescript.ts.Node): Bool;
	static function isIfStatement(node: typescript.ts.Node): Bool;
	static function isDoStatement(node: typescript.ts.Node): Bool;
	static function isWhileStatement(node: typescript.ts.Node): Bool;
	static function isForStatement(node: typescript.ts.Node): Bool;
	static function isForInStatement(node: typescript.ts.Node): Bool;
	static function isForOfStatement(node: typescript.ts.Node): Bool;
	static function isContinueStatement(node: typescript.ts.Node): Bool;
	static function isBreakStatement(node: typescript.ts.Node): Bool;
	static function isBreakOrContinueStatement(node: typescript.ts.Node): Bool;
	static function isReturnStatement(node: typescript.ts.Node): Bool;
	static function isWithStatement(node: typescript.ts.Node): Bool;
	static function isSwitchStatement(node: typescript.ts.Node): Bool;
	static function isLabeledStatement(node: typescript.ts.Node): Bool;
	static function isThrowStatement(node: typescript.ts.Node): Bool;
	static function isTryStatement(node: typescript.ts.Node): Bool;
	static function isDebuggerStatement(node: typescript.ts.Node): Bool;
	static function isVariableDeclaration(node: typescript.ts.Node): Bool;
	static function isVariableDeclarationList(node: typescript.ts.Node): Bool;
	static function isFunctionDeclaration(node: typescript.ts.Node): Bool;
	static function isClassDeclaration(node: typescript.ts.Node): Bool;
	static function isInterfaceDeclaration(node: typescript.ts.Node): Bool;
	static function isTypeAliasDeclaration(node: typescript.ts.Node): Bool;
	static function isEnumDeclaration(node: typescript.ts.Node): Bool;
	static function isModuleDeclaration(node: typescript.ts.Node): Bool;
	static function isModuleBlock(node: typescript.ts.Node): Bool;
	static function isCaseBlock(node: typescript.ts.Node): Bool;
	static function isNamespaceExportDeclaration(node: typescript.ts.Node): Bool;
	static function isImportEqualsDeclaration(node: typescript.ts.Node): Bool;
	static function isImportDeclaration(node: typescript.ts.Node): Bool;
	static function isImportClause(node: typescript.ts.Node): Bool;
	static function isNamespaceImport(node: typescript.ts.Node): Bool;
	static function isNamedImports(node: typescript.ts.Node): Bool;
	static function isImportSpecifier(node: typescript.ts.Node): Bool;
	static function isExportAssignment(node: typescript.ts.Node): Bool;
	static function isExportDeclaration(node: typescript.ts.Node): Bool;
	static function isNamedExports(node: typescript.ts.Node): Bool;
	static function isExportSpecifier(node: typescript.ts.Node): Bool;
	static function isMissingDeclaration(node: typescript.ts.Node): Bool;
	static function isExternalModuleReference(node: typescript.ts.Node): Bool;
	static function isJsxElement(node: typescript.ts.Node): Bool;
	static function isJsxSelfClosingElement(node: typescript.ts.Node): Bool;
	static function isJsxOpeningElement(node: typescript.ts.Node): Bool;
	static function isJsxClosingElement(node: typescript.ts.Node): Bool;
	static function isJsxFragment(node: typescript.ts.Node): Bool;
	static function isJsxOpeningFragment(node: typescript.ts.Node): Bool;
	static function isJsxClosingFragment(node: typescript.ts.Node): Bool;
	static function isJsxAttribute(node: typescript.ts.Node): Bool;
	static function isJsxAttributes(node: typescript.ts.Node): Bool;
	static function isJsxSpreadAttribute(node: typescript.ts.Node): Bool;
	static function isJsxExpression(node: typescript.ts.Node): Bool;
	static function isCaseClause(node: typescript.ts.Node): Bool;
	static function isDefaultClause(node: typescript.ts.Node): Bool;
	static function isHeritageClause(node: typescript.ts.Node): Bool;
	static function isCatchClause(node: typescript.ts.Node): Bool;
	static function isPropertyAssignment(node: typescript.ts.Node): Bool;
	static function isShorthandPropertyAssignment(node: typescript.ts.Node): Bool;
	static function isSpreadAssignment(node: typescript.ts.Node): Bool;
	static function isEnumMember(node: typescript.ts.Node): Bool;
	static function isSourceFile(node: typescript.ts.Node): Bool;
	static function isBundle(node: typescript.ts.Node): Bool;
	static function isUnparsedSource(node: typescript.ts.Node): Bool;
	static function isUnparsedPrepend(node: typescript.ts.Node): Bool;
	static function isUnparsedTextLike(node: typescript.ts.Node): Bool;
	static function isUnparsedNode(node: typescript.ts.Node): Bool;
	static function isJSDocTypeExpression(node: typescript.ts.Node): Bool;
	static function isJSDocAllType(node: typescript.ts.Node): Bool;
	static function isJSDocUnknownType(node: typescript.ts.Node): Bool;
	static function isJSDocNullableType(node: typescript.ts.Node): Bool;
	static function isJSDocNonNullableType(node: typescript.ts.Node): Bool;
	static function isJSDocOptionalType(node: typescript.ts.Node): Bool;
	static function isJSDocFunctionType(node: typescript.ts.Node): Bool;
	static function isJSDocVariadicType(node: typescript.ts.Node): Bool;
	static function isJSDoc(node: typescript.ts.Node): Bool;
	static function isJSDocAuthorTag(node: typescript.ts.Node): Bool;
	static function isJSDocAugmentsTag(node: typescript.ts.Node): Bool;
	static function isJSDocClassTag(node: typescript.ts.Node): Bool;
	static function isJSDocEnumTag(node: typescript.ts.Node): Bool;
	static function isJSDocThisTag(node: typescript.ts.Node): Bool;
	static function isJSDocParameterTag(node: typescript.ts.Node): Bool;
	static function isJSDocReturnTag(node: typescript.ts.Node): Bool;
	static function isJSDocTypeTag(node: typescript.ts.Node): Bool;
	static function isJSDocTemplateTag(node: typescript.ts.Node): Bool;
	static function isJSDocTypedefTag(node: typescript.ts.Node): Bool;
	static function isJSDocPropertyTag(node: typescript.ts.Node): Bool;
	static function isJSDocPropertyLikeTag(node: typescript.ts.Node): Bool;
	static function isJSDocTypeLiteral(node: typescript.ts.Node): Bool;
	static function isJSDocCallbackTag(node: typescript.ts.Node): Bool;
	static function isJSDocSignature(node: typescript.ts.Node): Bool;
	/**
	True if node is of some token syntax kind.
	For example, this is true for an IfKeyword but not for an IfStatement.
	Literals are considered tokens, except TemplateLiteral, but does include TemplateHead/Middle/Tail.
	**/
	static function isToken(n: typescript.ts.Node): Bool;
	static function isLiteralExpression(node: typescript.ts.Node): Bool;
	static function isTemplateLiteralToken(node: typescript.ts.Node): Bool;
	static function isTemplateMiddleOrTemplateTail(node: typescript.ts.Node): Bool;
	static function isImportOrExportSpecifier(node: typescript.ts.Node): Bool;
	static function isStringTextContainingNode(node: typescript.ts.Node): Bool;
	static function isModifier(node: typescript.ts.Node): Bool;
	static function isEntityName(node: typescript.ts.Node): Bool;
	static function isPropertyName(node: typescript.ts.Node): Bool;
	static function isBindingName(node: typescript.ts.Node): Bool;
	static function isFunctionLike(node: typescript.ts.Node): Bool;
	static function isClassElement(node: typescript.ts.Node): Bool;
	static function isClassLike(node: typescript.ts.Node): Bool;
	static function isAccessor(node: typescript.ts.Node): Bool;
	static function isTypeElement(node: typescript.ts.Node): Bool;
	static function isClassOrTypeElement(node: typescript.ts.Node): Bool;
	static function isObjectLiteralElementLike(node: typescript.ts.Node): Bool;
	/**
	Node test that determines whether a node is a valid type node.
	This differs from the `isPartOfTypeNode` function which determines whether a node is *part*
	of a TypeNode.
	**/
	static function isTypeNode(node: typescript.ts.Node): Bool;
	static function isFunctionOrConstructorTypeNode(node: typescript.ts.Node): Bool;
	static function isPropertyAccessOrQualifiedName(node: typescript.ts.Node): Bool;
	static function isCallLikeExpression(node: typescript.ts.Node): Bool;
	static function isCallOrNewExpression(node: typescript.ts.Node): Bool;
	static function isTemplateLiteral(node: typescript.ts.Node): Bool;
	static function isAssertionExpression(node: typescript.ts.Node): Bool;
	@:overload(function(node: typescript.ts.Node, lookInLabeledStatements: Bool): Bool { })
	static function isIterationStatement(node: typescript.ts.Node, lookInLabeledStatements: Bool): Bool;
	static function isJsxOpeningLikeElement(node: typescript.ts.Node): Bool;
	static function isCaseOrDefaultClause(node: typescript.ts.Node): Bool;
	/**
	True if node is of a kind that may contain comment text.
	**/
	static function isJSDocCommentContainingNode(node: typescript.ts.Node): Bool;
	static function isSetAccessor(node: typescript.ts.Node): Bool;
	static function isGetAccessor(node: typescript.ts.Node): Bool;
	static function isObjectLiteralElement(node: typescript.ts.Node): Bool;
	static function isStringLiteralLike(node: typescript.ts.Node): Bool;
	static function createNode(kind: typescript.ts.SyntaxKind, ?pos: Float, ?end: Float): typescript.ts.Node;
	/**
	Invokes a callback for each child of the given node. The 'cbNode' callback is invoked for all child nodes
	stored in properties. If a 'cbNodes' callback is specified, it is invoked for embedded arrays; otherwise,
	embedded arrays are flattened and the 'cbNode' callback is invoked for each element. If a callback returns
	a truthy value, iteration stops and that value is returned. Otherwise, undefined is returned.
	**/
	static function forEachChild<T>(node: typescript.ts.Node, cbNode: (node: typescript.ts.Node) -> Null<T>, ?cbNodes: (nodes: typescript.ts.NodeArray<typescript.ts.Node>) -> Null<T>): Null<T>;
	static function createSourceFile(fileName: String, sourceText: String, languageVersion: typescript.ts.ScriptTarget, ?setParentNodes: Bool, ?scriptKind: typescript.ts.ScriptKind): typescript.ts.SourceFile;
	static function parseIsolatedEntityName(text: String, languageVersion: typescript.ts.ScriptTarget): Null<typescript.ts.EntityName>;
	/**
	Parse json text into SyntaxTree and return node and parse errors if any
	**/
	static function parseJsonText(fileName: String, sourceText: String): typescript.ts.JsonSourceFile;
	static function isExternalModule(file: typescript.ts.SourceFile): Bool;
	static function updateSourceFile(sourceFile: typescript.ts.SourceFile, newText: String, textChangeRange: typescript.ts.TextChangeRange, ?aggressiveChecks: Bool): typescript.ts.SourceFile;
	static function parseCommandLine(commandLine: Array<String>, ?readFile: (path: String) -> Null<String>): typescript.ts.ParsedCommandLine;
	/**
	Reads the config file, reports errors if any and exits if the config file cannot be found
	**/
	static function getParsedCommandLineOfConfigFile(configFileName: String, optionsToExtend: typescript.ts.CompilerOptions, host: typescript.ts.ParseConfigFileHost, ?extendedConfigCache: typescript.ts.Map<typescript.ts.ExtendedConfigCacheEntry>): Null<typescript.ts.ParsedCommandLine>;
	/**
	Read tsconfig.json file
	**/
	static function readConfigFile(fileName: String, readFile: (path: String) -> Null<String>): {	@:optional var config: Any; 	@:optional var error: typescript.ts.Diagnostic;};
	/**
	Parse the text of the tsconfig.json file
	**/
	static function parseConfigFileTextToJson(fileName: String, jsonText: String): {	@:optional var config: Any; 	@:optional var error: typescript.ts.Diagnostic;};
	/**
	Read tsconfig.json file
	**/
	static function readJsonConfigFile(fileName: String, readFile: (path: String) -> Null<String>): typescript.ts.TsConfigSourceFile;
	/**
	Convert the json syntax tree into the json value
	**/
	static function convertToObject(sourceFile: typescript.ts.JsonSourceFile, errors: typescript.ts.Push<typescript.ts.Diagnostic>): Any;
	/**
	Parse the contents of a config file (tsconfig.json).
	**/
	static function parseJsonConfigFileContent(json: Any, host: typescript.ts.ParseConfigHost, basePath: String, ?existingOptions: typescript.ts.CompilerOptions, ?configFileName: String, ?resolutionStack: Array<typescript.ts.Path>, ?extraFileExtensions: Array<typescript.ts.FileExtensionInfo>, ?extendedConfigCache: typescript.ts.Map<typescript.ts.ExtendedConfigCacheEntry>): typescript.ts.ParsedCommandLine;
	/**
	Parse the contents of a config file (tsconfig.json).
	**/
	static function parseJsonSourceFileConfigFileContent(sourceFile: typescript.ts.TsConfigSourceFile, host: typescript.ts.ParseConfigHost, basePath: String, ?existingOptions: typescript.ts.CompilerOptions, ?configFileName: String, ?resolutionStack: Array<typescript.ts.Path>, ?extraFileExtensions: Array<typescript.ts.FileExtensionInfo>, ?extendedConfigCache: typescript.ts.Map<typescript.ts.ExtendedConfigCacheEntry>): typescript.ts.ParsedCommandLine;
	static function convertCompilerOptionsFromJson(jsonOptions: Any, basePath: String, ?configFileName: String): {	var options: typescript.ts.CompilerOptions; 	var errors: Array<typescript.ts.Diagnostic>;};
	static function convertTypeAcquisitionFromJson(jsonOptions: Any, basePath: String, ?configFileName: String): {	var options: typescript.ts.TypeAcquisition; 	var errors: Array<typescript.ts.Diagnostic>;};
	static function getEffectiveTypeRoots(options: typescript.ts.CompilerOptions, host: typescript.ts.GetEffectiveTypeRootsHost): Null<Array<String>>;
	static function resolveTypeReferenceDirective(typeReferenceDirectiveName: String, containingFile: Null<String>, options: typescript.ts.CompilerOptions, host: typescript.ts.ModuleResolutionHost, ?redirectedReference: typescript.ts.ResolvedProjectReference): typescript.ts.ResolvedTypeReferenceDirectiveWithFailedLookupLocations;
	/**
	Given a set of options, returns the set of type directive names
	   that should be included for this program automatically.
	This list could either come from the config file,
	   or from enumerating the types root + initial secondary types lookup location.
	More type directives might appear in the program later as a result of loading actual source files;
	   this list is only the set of defaults that are implicitly included.
	**/
	static function getAutomaticTypeDirectiveNames(options: typescript.ts.CompilerOptions, host: typescript.ts.ModuleResolutionHost): Array<String>;
	static function createModuleResolutionCache(currentDirectory: String, getCanonicalFileName: (s: String) -> String, ?options: typescript.ts.CompilerOptions): typescript.ts.ModuleResolutionCache;
	static function resolveModuleNameFromCache(moduleName: String, containingFile: String, cache: typescript.ts.ModuleResolutionCache): Null<typescript.ts.ResolvedModuleWithFailedLookupLocations>;
	static function resolveModuleName(moduleName: String, containingFile: String, compilerOptions: typescript.ts.CompilerOptions, host: typescript.ts.ModuleResolutionHost, ?cache: typescript.ts.ModuleResolutionCache, ?redirectedReference: typescript.ts.ResolvedProjectReference): typescript.ts.ResolvedModuleWithFailedLookupLocations;
	static function nodeModuleNameResolver(moduleName: String, containingFile: String, compilerOptions: typescript.ts.CompilerOptions, host: typescript.ts.ModuleResolutionHost, ?cache: typescript.ts.ModuleResolutionCache, ?redirectedReference: typescript.ts.ResolvedProjectReference): typescript.ts.ResolvedModuleWithFailedLookupLocations;
	static function classicNameResolver(moduleName: String, containingFile: String, compilerOptions: typescript.ts.CompilerOptions, host: typescript.ts.ModuleResolutionHost, ?cache: typescript.ts.NonRelativeModuleNameResolutionCache, ?redirectedReference: typescript.ts.ResolvedProjectReference): typescript.ts.ResolvedModuleWithFailedLookupLocations;
	static function createNodeArray<T>(?elements: Array<T>, ?hasTrailingComma: Bool): typescript.ts.NodeArray<T>;
	/**
	If a node is passed, creates a string literal whose source text is read from a source node during emit.
	**/
	@:overload(function(value: haxe.extern.EitherType<Float, typescript.ts.PseudoBigInt>): typescript.ts.NumericLiteral { })
	@:overload(function(value: Bool): typescript.ts.BooleanLiteral { })
	@:overload(function(value: haxe.extern.EitherType<String, haxe.extern.EitherType<Float, haxe.extern.EitherType<typescript.ts.PseudoBigInt, Bool>>>): typescript.ts.PrimaryExpression { })
	static function createLiteral(value: haxe.extern.EitherType<String, haxe.extern.EitherType<typescript.ts.StringLiteral, haxe.extern.EitherType<typescript.ts.NoSubstitutionTemplateLiteral, haxe.extern.EitherType<typescript.ts.NumericLiteral, typescript.ts.Identifier>>>>): typescript.ts.StringLiteral;
	static function createNumericLiteral(value: String, ?numericLiteralFlags: typescript.ts.TokenFlags): typescript.ts.NumericLiteral;
	static function createBigIntLiteral(value: String): typescript.ts.BigIntLiteral;
	static function createStringLiteral(text: String): typescript.ts.StringLiteral;
	static function createRegularExpressionLiteral(text: String): typescript.ts.RegularExpressionLiteral;
	static function createIdentifier(text: String): typescript.ts.Identifier;
	static function updateIdentifier(node: typescript.ts.Identifier): typescript.ts.Identifier;
	/**
	Create a unique temporary variable.
	**/
	static function createTempVariable(recordTempVariable: Null<(node: typescript.ts.Identifier) -> Void>): typescript.ts.Identifier;
	/**
	Create a unique temporary variable for use in a loop.
	**/
	static function createLoopVariable(): typescript.ts.Identifier;
	/**
	Create a unique name based on the supplied text.
	**/
	static function createUniqueName(text: String): typescript.ts.Identifier;
	/**
	Create a unique name based on the supplied text.
	**/
	static function createOptimisticUniqueName(text: String): typescript.ts.Identifier;
	/**
	Create a unique name based on the supplied text. This does not consider names injected by the transformer.
	**/
	static function createFileLevelUniqueName(text: String): typescript.ts.Identifier;
	/**
	Create a unique name generated for a node.
	**/
	static function getGeneratedNameForNode(node: Null<typescript.ts.Node>): typescript.ts.Identifier;
	static function createToken<TKind>(token: TKind): typescript.ts.Token<TKind>;
	static function createSuper(): typescript.ts.SuperExpression;
	static function createThis(): Any;
	static function createNull(): Any;
	static function createTrue(): Any;
	static function createFalse(): Any;
	static function createModifier<T>(kind: T): typescript.ts.Token<T>;
	static function createModifiersFromModifierFlags(flags: typescript.ts.ModifierFlags): Array<typescript.ts.Modifier>;
	static function createQualifiedName(left: typescript.ts.EntityName, right: haxe.extern.EitherType<String, typescript.ts.Identifier>): typescript.ts.QualifiedName;
	static function updateQualifiedName(node: typescript.ts.QualifiedName, left: typescript.ts.EntityName, right: typescript.ts.Identifier): typescript.ts.QualifiedName;
	static function createComputedPropertyName(expression: typescript.ts.Expression): typescript.ts.ComputedPropertyName;
	static function updateComputedPropertyName(node: typescript.ts.ComputedPropertyName, expression: typescript.ts.Expression): typescript.ts.ComputedPropertyName;
	static function createTypeParameterDeclaration(name: haxe.extern.EitherType<String, typescript.ts.Identifier>, ?constraint: typescript.ts.TypeNode, ?defaultType: typescript.ts.TypeNode): typescript.ts.TypeParameterDeclaration;
	static function updateTypeParameterDeclaration(node: typescript.ts.TypeParameterDeclaration, name: typescript.ts.Identifier, constraint: Null<typescript.ts.TypeNode>, defaultType: Null<typescript.ts.TypeNode>): typescript.ts.TypeParameterDeclaration;
	static function createParameter(decorators: Null<Array<typescript.ts.Decorator>>, modifiers: Null<Array<typescript.ts.Modifier>>, dotDotDotToken: Null<typescript.ts.DotDotDotToken>, name: haxe.extern.EitherType<String, typescript.ts.BindingName>, ?questionToken: typescript.ts.QuestionToken, ?type: typescript.ts.TypeNode, ?initializer: typescript.ts.Expression): typescript.ts.ParameterDeclaration;
	static function updateParameter(node: typescript.ts.ParameterDeclaration, decorators: Null<Array<typescript.ts.Decorator>>, modifiers: Null<Array<typescript.ts.Modifier>>, dotDotDotToken: Null<typescript.ts.DotDotDotToken>, name: haxe.extern.EitherType<String, typescript.ts.BindingName>, questionToken: Null<typescript.ts.QuestionToken>, type: Null<typescript.ts.TypeNode>, initializer: Null<typescript.ts.Expression>): typescript.ts.ParameterDeclaration;
	static function createDecorator(expression: typescript.ts.Expression): typescript.ts.Decorator;
	static function updateDecorator(node: typescript.ts.Decorator, expression: typescript.ts.Expression): typescript.ts.Decorator;
	static function createPropertySignature(modifiers: Null<Array<typescript.ts.Modifier>>, name: haxe.extern.EitherType<typescript.ts.PropertyName, String>, questionToken: Null<typescript.ts.QuestionToken>, type: Null<typescript.ts.TypeNode>, initializer: Null<typescript.ts.Expression>): typescript.ts.PropertySignature;
	static function updatePropertySignature(node: typescript.ts.PropertySignature, modifiers: Null<Array<typescript.ts.Modifier>>, name: typescript.ts.PropertyName, questionToken: Null<typescript.ts.QuestionToken>, type: Null<typescript.ts.TypeNode>, initializer: Null<typescript.ts.Expression>): typescript.ts.PropertySignature;
	static function createProperty(decorators: Null<Array<typescript.ts.Decorator>>, modifiers: Null<Array<typescript.ts.Modifier>>, name: haxe.extern.EitherType<String, typescript.ts.PropertyName>, questionOrExclamationToken: Null<haxe.extern.EitherType<typescript.ts.QuestionToken, typescript.ts.ExclamationToken>>, type: Null<typescript.ts.TypeNode>, initializer: Null<typescript.ts.Expression>): typescript.ts.PropertyDeclaration;
	static function updateProperty(node: typescript.ts.PropertyDeclaration, decorators: Null<Array<typescript.ts.Decorator>>, modifiers: Null<Array<typescript.ts.Modifier>>, name: haxe.extern.EitherType<String, typescript.ts.PropertyName>, questionOrExclamationToken: Null<haxe.extern.EitherType<typescript.ts.QuestionToken, typescript.ts.ExclamationToken>>, type: Null<typescript.ts.TypeNode>, initializer: Null<typescript.ts.Expression>): typescript.ts.PropertyDeclaration;
	static function createMethodSignature(typeParameters: Null<Array<typescript.ts.TypeParameterDeclaration>>, parameters: Array<typescript.ts.ParameterDeclaration>, type: Null<typescript.ts.TypeNode>, name: haxe.extern.EitherType<String, typescript.ts.PropertyName>, questionToken: Null<typescript.ts.QuestionToken>): typescript.ts.MethodSignature;
	static function updateMethodSignature(node: typescript.ts.MethodSignature, typeParameters: Null<typescript.ts.NodeArray<typescript.ts.TypeParameterDeclaration>>, parameters: typescript.ts.NodeArray<typescript.ts.ParameterDeclaration>, type: Null<typescript.ts.TypeNode>, name: typescript.ts.PropertyName, questionToken: Null<typescript.ts.QuestionToken>): typescript.ts.MethodSignature;
	static function createMethod(decorators: Null<Array<typescript.ts.Decorator>>, modifiers: Null<Array<typescript.ts.Modifier>>, asteriskToken: Null<typescript.ts.AsteriskToken>, name: haxe.extern.EitherType<String, typescript.ts.PropertyName>, questionToken: Null<typescript.ts.QuestionToken>, typeParameters: Null<Array<typescript.ts.TypeParameterDeclaration>>, parameters: Array<typescript.ts.ParameterDeclaration>, type: Null<typescript.ts.TypeNode>, body: Null<typescript.ts.Block>): typescript.ts.MethodDeclaration;
	static function updateMethod(node: typescript.ts.MethodDeclaration, decorators: Null<Array<typescript.ts.Decorator>>, modifiers: Null<Array<typescript.ts.Modifier>>, asteriskToken: Null<typescript.ts.AsteriskToken>, name: typescript.ts.PropertyName, questionToken: Null<typescript.ts.QuestionToken>, typeParameters: Null<Array<typescript.ts.TypeParameterDeclaration>>, parameters: Array<typescript.ts.ParameterDeclaration>, type: Null<typescript.ts.TypeNode>, body: Null<typescript.ts.Block>): typescript.ts.MethodDeclaration;
	static function createConstructor(decorators: Null<Array<typescript.ts.Decorator>>, modifiers: Null<Array<typescript.ts.Modifier>>, parameters: Array<typescript.ts.ParameterDeclaration>, body: Null<typescript.ts.Block>): typescript.ts.ConstructorDeclaration;
	static function updateConstructor(node: typescript.ts.ConstructorDeclaration, decorators: Null<Array<typescript.ts.Decorator>>, modifiers: Null<Array<typescript.ts.Modifier>>, parameters: Array<typescript.ts.ParameterDeclaration>, body: Null<typescript.ts.Block>): typescript.ts.ConstructorDeclaration;
	static function createGetAccessor(decorators: Null<Array<typescript.ts.Decorator>>, modifiers: Null<Array<typescript.ts.Modifier>>, name: haxe.extern.EitherType<String, typescript.ts.PropertyName>, parameters: Array<typescript.ts.ParameterDeclaration>, type: Null<typescript.ts.TypeNode>, body: Null<typescript.ts.Block>): typescript.ts.GetAccessorDeclaration;
	static function updateGetAccessor(node: typescript.ts.GetAccessorDeclaration, decorators: Null<Array<typescript.ts.Decorator>>, modifiers: Null<Array<typescript.ts.Modifier>>, name: typescript.ts.PropertyName, parameters: Array<typescript.ts.ParameterDeclaration>, type: Null<typescript.ts.TypeNode>, body: Null<typescript.ts.Block>): typescript.ts.GetAccessorDeclaration;
	static function createSetAccessor(decorators: Null<Array<typescript.ts.Decorator>>, modifiers: Null<Array<typescript.ts.Modifier>>, name: haxe.extern.EitherType<String, typescript.ts.PropertyName>, parameters: Array<typescript.ts.ParameterDeclaration>, body: Null<typescript.ts.Block>): typescript.ts.SetAccessorDeclaration;
	static function updateSetAccessor(node: typescript.ts.SetAccessorDeclaration, decorators: Null<Array<typescript.ts.Decorator>>, modifiers: Null<Array<typescript.ts.Modifier>>, name: typescript.ts.PropertyName, parameters: Array<typescript.ts.ParameterDeclaration>, body: Null<typescript.ts.Block>): typescript.ts.SetAccessorDeclaration;
	static function createCallSignature(typeParameters: Null<Array<typescript.ts.TypeParameterDeclaration>>, parameters: Array<typescript.ts.ParameterDeclaration>, type: Null<typescript.ts.TypeNode>): typescript.ts.CallSignatureDeclaration;
	static function updateCallSignature(node: typescript.ts.CallSignatureDeclaration, typeParameters: Null<typescript.ts.NodeArray<typescript.ts.TypeParameterDeclaration>>, parameters: typescript.ts.NodeArray<typescript.ts.ParameterDeclaration>, type: Null<typescript.ts.TypeNode>): typescript.ts.CallSignatureDeclaration;
	static function createConstructSignature(typeParameters: Null<Array<typescript.ts.TypeParameterDeclaration>>, parameters: Array<typescript.ts.ParameterDeclaration>, type: Null<typescript.ts.TypeNode>): typescript.ts.ConstructSignatureDeclaration;
	static function updateConstructSignature(node: typescript.ts.ConstructSignatureDeclaration, typeParameters: Null<typescript.ts.NodeArray<typescript.ts.TypeParameterDeclaration>>, parameters: typescript.ts.NodeArray<typescript.ts.ParameterDeclaration>, type: Null<typescript.ts.TypeNode>): typescript.ts.ConstructSignatureDeclaration;
	static function createIndexSignature(decorators: Null<Array<typescript.ts.Decorator>>, modifiers: Null<Array<typescript.ts.Modifier>>, parameters: Array<typescript.ts.ParameterDeclaration>, type: typescript.ts.TypeNode): typescript.ts.IndexSignatureDeclaration;
	static function updateIndexSignature(node: typescript.ts.IndexSignatureDeclaration, decorators: Null<Array<typescript.ts.Decorator>>, modifiers: Null<Array<typescript.ts.Modifier>>, parameters: Array<typescript.ts.ParameterDeclaration>, type: typescript.ts.TypeNode): typescript.ts.IndexSignatureDeclaration;
	static function createKeywordTypeNode(kind: typescript.ts.SyntaxKind): typescript.ts.KeywordTypeNode;
	static function createTypePredicateNode(parameterName: haxe.extern.EitherType<typescript.ts.Identifier, haxe.extern.EitherType<typescript.ts.ThisTypeNode, String>>, type: typescript.ts.TypeNode): typescript.ts.TypePredicateNode;
	static function createTypePredicateNodeWithModifier(assertsModifier: Null<typescript.ts.AssertsToken>, parameterName: haxe.extern.EitherType<typescript.ts.Identifier, haxe.extern.EitherType<typescript.ts.ThisTypeNode, String>>, type: Null<typescript.ts.TypeNode>): typescript.ts.TypePredicateNode;
	static function updateTypePredicateNode(node: typescript.ts.TypePredicateNode, parameterName: haxe.extern.EitherType<typescript.ts.Identifier, typescript.ts.ThisTypeNode>, type: typescript.ts.TypeNode): typescript.ts.TypePredicateNode;
	static function updateTypePredicateNodeWithModifier(node: typescript.ts.TypePredicateNode, assertsModifier: Null<typescript.ts.AssertsToken>, parameterName: haxe.extern.EitherType<typescript.ts.Identifier, typescript.ts.ThisTypeNode>, type: Null<typescript.ts.TypeNode>): typescript.ts.TypePredicateNode;
	static function createTypeReferenceNode(typeName: haxe.extern.EitherType<String, typescript.ts.EntityName>, typeArguments: Null<Array<typescript.ts.TypeNode>>): typescript.ts.TypeReferenceNode;
	static function updateTypeReferenceNode(node: typescript.ts.TypeReferenceNode, typeName: typescript.ts.EntityName, typeArguments: Null<typescript.ts.NodeArray<typescript.ts.TypeNode>>): typescript.ts.TypeReferenceNode;
	static function createFunctionTypeNode(typeParameters: Null<Array<typescript.ts.TypeParameterDeclaration>>, parameters: Array<typescript.ts.ParameterDeclaration>, type: Null<typescript.ts.TypeNode>): typescript.ts.FunctionTypeNode;
	static function updateFunctionTypeNode(node: typescript.ts.FunctionTypeNode, typeParameters: Null<typescript.ts.NodeArray<typescript.ts.TypeParameterDeclaration>>, parameters: typescript.ts.NodeArray<typescript.ts.ParameterDeclaration>, type: Null<typescript.ts.TypeNode>): typescript.ts.FunctionTypeNode;
	static function createConstructorTypeNode(typeParameters: Null<Array<typescript.ts.TypeParameterDeclaration>>, parameters: Array<typescript.ts.ParameterDeclaration>, type: Null<typescript.ts.TypeNode>): typescript.ts.ConstructorTypeNode;
	static function updateConstructorTypeNode(node: typescript.ts.ConstructorTypeNode, typeParameters: Null<typescript.ts.NodeArray<typescript.ts.TypeParameterDeclaration>>, parameters: typescript.ts.NodeArray<typescript.ts.ParameterDeclaration>, type: Null<typescript.ts.TypeNode>): typescript.ts.ConstructorTypeNode;
	static function createTypeQueryNode(exprName: typescript.ts.EntityName): typescript.ts.TypeQueryNode;
	static function updateTypeQueryNode(node: typescript.ts.TypeQueryNode, exprName: typescript.ts.EntityName): typescript.ts.TypeQueryNode;
	static function createTypeLiteralNode(members: Null<Array<typescript.ts.TypeElement>>): typescript.ts.TypeLiteralNode;
	static function updateTypeLiteralNode(node: typescript.ts.TypeLiteralNode, members: typescript.ts.NodeArray<typescript.ts.TypeElement>): typescript.ts.TypeLiteralNode;
	static function createArrayTypeNode(elementType: typescript.ts.TypeNode): typescript.ts.ArrayTypeNode;
	static function updateArrayTypeNode(node: typescript.ts.ArrayTypeNode, elementType: typescript.ts.TypeNode): typescript.ts.ArrayTypeNode;
	static function createTupleTypeNode(elementTypes: Array<typescript.ts.TypeNode>): typescript.ts.TupleTypeNode;
	static function updateTupleTypeNode(node: typescript.ts.TupleTypeNode, elementTypes: Array<typescript.ts.TypeNode>): typescript.ts.TupleTypeNode;
	static function createOptionalTypeNode(type: typescript.ts.TypeNode): typescript.ts.OptionalTypeNode;
	static function updateOptionalTypeNode(node: typescript.ts.OptionalTypeNode, type: typescript.ts.TypeNode): typescript.ts.OptionalTypeNode;
	static function createRestTypeNode(type: typescript.ts.TypeNode): typescript.ts.RestTypeNode;
	static function updateRestTypeNode(node: typescript.ts.RestTypeNode, type: typescript.ts.TypeNode): typescript.ts.RestTypeNode;
	static function createUnionTypeNode(types: Array<typescript.ts.TypeNode>): typescript.ts.UnionTypeNode;
	static function updateUnionTypeNode(node: typescript.ts.UnionTypeNode, types: typescript.ts.NodeArray<typescript.ts.TypeNode>): typescript.ts.UnionTypeNode;
	static function createIntersectionTypeNode(types: Array<typescript.ts.TypeNode>): typescript.ts.IntersectionTypeNode;
	static function updateIntersectionTypeNode(node: typescript.ts.IntersectionTypeNode, types: typescript.ts.NodeArray<typescript.ts.TypeNode>): typescript.ts.IntersectionTypeNode;
	static function createUnionOrIntersectionTypeNode(kind: typescript.ts.SyntaxKind, types: Array<typescript.ts.TypeNode>): typescript.ts.UnionOrIntersectionTypeNode;
	static function createConditionalTypeNode(checkType: typescript.ts.TypeNode, extendsType: typescript.ts.TypeNode, trueType: typescript.ts.TypeNode, falseType: typescript.ts.TypeNode): typescript.ts.ConditionalTypeNode;
	static function updateConditionalTypeNode(node: typescript.ts.ConditionalTypeNode, checkType: typescript.ts.TypeNode, extendsType: typescript.ts.TypeNode, trueType: typescript.ts.TypeNode, falseType: typescript.ts.TypeNode): typescript.ts.ConditionalTypeNode;
	static function createInferTypeNode(typeParameter: typescript.ts.TypeParameterDeclaration): typescript.ts.InferTypeNode;
	static function updateInferTypeNode(node: typescript.ts.InferTypeNode, typeParameter: typescript.ts.TypeParameterDeclaration): typescript.ts.InferTypeNode;
	static function createImportTypeNode(argument: typescript.ts.TypeNode, ?qualifier: typescript.ts.EntityName, ?typeArguments: Array<typescript.ts.TypeNode>, ?isTypeOf: Bool): typescript.ts.ImportTypeNode;
	static function updateImportTypeNode(node: typescript.ts.ImportTypeNode, argument: typescript.ts.TypeNode, ?qualifier: typescript.ts.EntityName, ?typeArguments: Array<typescript.ts.TypeNode>, ?isTypeOf: Bool): typescript.ts.ImportTypeNode;
	static function createParenthesizedType(type: typescript.ts.TypeNode): typescript.ts.ParenthesizedTypeNode;
	static function updateParenthesizedType(node: typescript.ts.ParenthesizedTypeNode, type: typescript.ts.TypeNode): typescript.ts.ParenthesizedTypeNode;
	static function createThisTypeNode(): typescript.ts.ThisTypeNode;
	@:overload(function(operator_: typescript.ts.SyntaxKind, type: typescript.ts.TypeNode): typescript.ts.TypeOperatorNode { })
	static function createTypeOperatorNode(type: typescript.ts.TypeNode): typescript.ts.TypeOperatorNode;
	static function updateTypeOperatorNode(node: typescript.ts.TypeOperatorNode, type: typescript.ts.TypeNode): typescript.ts.TypeOperatorNode;
	static function createIndexedAccessTypeNode(objectType: typescript.ts.TypeNode, indexType: typescript.ts.TypeNode): typescript.ts.IndexedAccessTypeNode;
	static function updateIndexedAccessTypeNode(node: typescript.ts.IndexedAccessTypeNode, objectType: typescript.ts.TypeNode, indexType: typescript.ts.TypeNode): typescript.ts.IndexedAccessTypeNode;
	static function createMappedTypeNode(readonlyToken: Null<haxe.extern.EitherType<typescript.ts.ReadonlyToken, haxe.extern.EitherType<typescript.ts.PlusToken, typescript.ts.MinusToken>>>, typeParameter: typescript.ts.TypeParameterDeclaration, questionToken: Null<haxe.extern.EitherType<typescript.ts.QuestionToken, haxe.extern.EitherType<typescript.ts.PlusToken, typescript.ts.MinusToken>>>, type: Null<typescript.ts.TypeNode>): typescript.ts.MappedTypeNode;
	static function updateMappedTypeNode(node: typescript.ts.MappedTypeNode, readonlyToken: Null<haxe.extern.EitherType<typescript.ts.ReadonlyToken, haxe.extern.EitherType<typescript.ts.PlusToken, typescript.ts.MinusToken>>>, typeParameter: typescript.ts.TypeParameterDeclaration, questionToken: Null<haxe.extern.EitherType<typescript.ts.QuestionToken, haxe.extern.EitherType<typescript.ts.PlusToken, typescript.ts.MinusToken>>>, type: Null<typescript.ts.TypeNode>): typescript.ts.MappedTypeNode;
	static function createLiteralTypeNode(literal: haxe.extern.EitherType<typescript.ts.LiteralExpression, haxe.extern.EitherType<typescript.ts.BooleanLiteral, typescript.ts.PrefixUnaryExpression>>): typescript.ts.LiteralTypeNode;
	static function updateLiteralTypeNode(node: typescript.ts.LiteralTypeNode, literal: haxe.extern.EitherType<typescript.ts.LiteralExpression, haxe.extern.EitherType<typescript.ts.BooleanLiteral, typescript.ts.PrefixUnaryExpression>>): typescript.ts.LiteralTypeNode;
	static function createObjectBindingPattern(elements: Array<typescript.ts.BindingElement>): typescript.ts.ObjectBindingPattern;
	static function updateObjectBindingPattern(node: typescript.ts.ObjectBindingPattern, elements: Array<typescript.ts.BindingElement>): typescript.ts.ObjectBindingPattern;
	static function createArrayBindingPattern(elements: Array<typescript.ts.ArrayBindingElement>): typescript.ts.ArrayBindingPattern;
	static function updateArrayBindingPattern(node: typescript.ts.ArrayBindingPattern, elements: Array<typescript.ts.ArrayBindingElement>): typescript.ts.ArrayBindingPattern;
	static function createBindingElement(dotDotDotToken: Null<typescript.ts.DotDotDotToken>, propertyName: Null<haxe.extern.EitherType<String, typescript.ts.PropertyName>>, name: haxe.extern.EitherType<String, typescript.ts.BindingName>, ?initializer: typescript.ts.Expression): typescript.ts.BindingElement;
	static function updateBindingElement(node: typescript.ts.BindingElement, dotDotDotToken: Null<typescript.ts.DotDotDotToken>, propertyName: Null<typescript.ts.PropertyName>, name: typescript.ts.BindingName, initializer: Null<typescript.ts.Expression>): typescript.ts.BindingElement;
	static function createArrayLiteral(?elements: Array<typescript.ts.Expression>, ?multiLine: Bool): typescript.ts.ArrayLiteralExpression;
	static function updateArrayLiteral(node: typescript.ts.ArrayLiteralExpression, elements: Array<typescript.ts.Expression>): typescript.ts.ArrayLiteralExpression;
	static function createObjectLiteral(?properties: Array<typescript.ts.ObjectLiteralElementLike>, ?multiLine: Bool): typescript.ts.ObjectLiteralExpression;
	static function updateObjectLiteral(node: typescript.ts.ObjectLiteralExpression, properties: Array<typescript.ts.ObjectLiteralElementLike>): typescript.ts.ObjectLiteralExpression;
	static function createPropertyAccess(expression: typescript.ts.Expression, name: haxe.extern.EitherType<String, typescript.ts.Identifier>): typescript.ts.PropertyAccessExpression;
	static function updatePropertyAccess(node: typescript.ts.PropertyAccessExpression, expression: typescript.ts.Expression, name: typescript.ts.Identifier): typescript.ts.PropertyAccessExpression;
	static function createPropertyAccessChain(expression: typescript.ts.Expression, questionDotToken: Null<typescript.ts.QuestionDotToken>, name: haxe.extern.EitherType<String, typescript.ts.Identifier>): typescript.ts.PropertyAccessChain;
	static function updatePropertyAccessChain(node: typescript.ts.PropertyAccessChain, expression: typescript.ts.Expression, questionDotToken: Null<typescript.ts.QuestionDotToken>, name: typescript.ts.Identifier): typescript.ts.PropertyAccessChain;
	static function createElementAccess(expression: typescript.ts.Expression, index: haxe.extern.EitherType<Float, typescript.ts.Expression>): typescript.ts.ElementAccessExpression;
	static function updateElementAccess(node: typescript.ts.ElementAccessExpression, expression: typescript.ts.Expression, argumentExpression: typescript.ts.Expression): typescript.ts.ElementAccessExpression;
	static function createElementAccessChain(expression: typescript.ts.Expression, questionDotToken: Null<typescript.ts.QuestionDotToken>, index: haxe.extern.EitherType<Float, typescript.ts.Expression>): typescript.ts.ElementAccessChain;
	static function updateElementAccessChain(node: typescript.ts.ElementAccessChain, expression: typescript.ts.Expression, questionDotToken: Null<typescript.ts.QuestionDotToken>, argumentExpression: typescript.ts.Expression): typescript.ts.ElementAccessChain;
	static function createCall(expression: typescript.ts.Expression, typeArguments: Null<Array<typescript.ts.TypeNode>>, argumentsArray: Null<Array<typescript.ts.Expression>>): typescript.ts.CallExpression;
	static function updateCall(node: typescript.ts.CallExpression, expression: typescript.ts.Expression, typeArguments: Null<Array<typescript.ts.TypeNode>>, argumentsArray: Array<typescript.ts.Expression>): typescript.ts.CallExpression;
	static function createCallChain(expression: typescript.ts.Expression, questionDotToken: Null<typescript.ts.QuestionDotToken>, typeArguments: Null<Array<typescript.ts.TypeNode>>, argumentsArray: Null<Array<typescript.ts.Expression>>): typescript.ts.CallChain;
	static function updateCallChain(node: typescript.ts.CallChain, expression: typescript.ts.Expression, questionDotToken: Null<typescript.ts.QuestionDotToken>, typeArguments: Null<Array<typescript.ts.TypeNode>>, argumentsArray: Array<typescript.ts.Expression>): typescript.ts.CallChain;
	static function createNew(expression: typescript.ts.Expression, typeArguments: Null<Array<typescript.ts.TypeNode>>, argumentsArray: Null<Array<typescript.ts.Expression>>): typescript.ts.NewExpression;
	static function updateNew(node: typescript.ts.NewExpression, expression: typescript.ts.Expression, typeArguments: Null<Array<typescript.ts.TypeNode>>, argumentsArray: Null<Array<typescript.ts.Expression>>): typescript.ts.NewExpression;
	@:overload(function(tag: typescript.ts.Expression, typeArguments: Null<Array<typescript.ts.TypeNode>>, template: typescript.ts.TemplateLiteral): typescript.ts.TaggedTemplateExpression { })
	static function createTaggedTemplate(tag: typescript.ts.Expression, template: typescript.ts.TemplateLiteral): typescript.ts.TaggedTemplateExpression;
	@:overload(function(node: typescript.ts.TaggedTemplateExpression, tag: typescript.ts.Expression, typeArguments: Null<Array<typescript.ts.TypeNode>>, template: typescript.ts.TemplateLiteral): typescript.ts.TaggedTemplateExpression { })
	static function updateTaggedTemplate(node: typescript.ts.TaggedTemplateExpression, tag: typescript.ts.Expression, template: typescript.ts.TemplateLiteral): typescript.ts.TaggedTemplateExpression;
	static function createTypeAssertion(type: typescript.ts.TypeNode, expression: typescript.ts.Expression): typescript.ts.TypeAssertion;
	static function updateTypeAssertion(node: typescript.ts.TypeAssertion, type: typescript.ts.TypeNode, expression: typescript.ts.Expression): typescript.ts.TypeAssertion;
	static function createParen(expression: typescript.ts.Expression): typescript.ts.ParenthesizedExpression;
	static function updateParen(node: typescript.ts.ParenthesizedExpression, expression: typescript.ts.Expression): typescript.ts.ParenthesizedExpression;
	static function createFunctionExpression(modifiers: Null<Array<typescript.ts.Modifier>>, asteriskToken: Null<typescript.ts.AsteriskToken>, name: Null<haxe.extern.EitherType<String, typescript.ts.Identifier>>, typeParameters: Null<Array<typescript.ts.TypeParameterDeclaration>>, parameters: Null<Array<typescript.ts.ParameterDeclaration>>, type: Null<typescript.ts.TypeNode>, body: typescript.ts.Block): typescript.ts.FunctionExpression;
	static function updateFunctionExpression(node: typescript.ts.FunctionExpression, modifiers: Null<Array<typescript.ts.Modifier>>, asteriskToken: Null<typescript.ts.AsteriskToken>, name: Null<typescript.ts.Identifier>, typeParameters: Null<Array<typescript.ts.TypeParameterDeclaration>>, parameters: Array<typescript.ts.ParameterDeclaration>, type: Null<typescript.ts.TypeNode>, body: typescript.ts.Block): typescript.ts.FunctionExpression;
	static function createArrowFunction(modifiers: Null<Array<typescript.ts.Modifier>>, typeParameters: Null<Array<typescript.ts.TypeParameterDeclaration>>, parameters: Array<typescript.ts.ParameterDeclaration>, type: Null<typescript.ts.TypeNode>, equalsGreaterThanToken: Null<typescript.ts.EqualsGreaterThanToken>, body: typescript.ts.ConciseBody): typescript.ts.ArrowFunction;
	static function updateArrowFunction(node: typescript.ts.ArrowFunction, modifiers: Null<Array<typescript.ts.Modifier>>, typeParameters: Null<Array<typescript.ts.TypeParameterDeclaration>>, parameters: Array<typescript.ts.ParameterDeclaration>, type: Null<typescript.ts.TypeNode>, equalsGreaterThanToken: typescript.ts.Token<typescript.ts.SyntaxKind>, body: typescript.ts.ConciseBody): typescript.ts.ArrowFunction;
	static function createDelete(expression: typescript.ts.Expression): typescript.ts.DeleteExpression;
	static function updateDelete(node: typescript.ts.DeleteExpression, expression: typescript.ts.Expression): typescript.ts.DeleteExpression;
	static function createTypeOf(expression: typescript.ts.Expression): typescript.ts.TypeOfExpression;
	static function updateTypeOf(node: typescript.ts.TypeOfExpression, expression: typescript.ts.Expression): typescript.ts.TypeOfExpression;
	static function createVoid(expression: typescript.ts.Expression): typescript.ts.VoidExpression;
	static function updateVoid(node: typescript.ts.VoidExpression, expression: typescript.ts.Expression): typescript.ts.VoidExpression;
	static function createAwait(expression: typescript.ts.Expression): typescript.ts.AwaitExpression;
	static function updateAwait(node: typescript.ts.AwaitExpression, expression: typescript.ts.Expression): typescript.ts.AwaitExpression;
	static function createPrefix(operator_: typescript.ts.PrefixUnaryOperator, operand: typescript.ts.Expression): typescript.ts.PrefixUnaryExpression;
	static function updatePrefix(node: typescript.ts.PrefixUnaryExpression, operand: typescript.ts.Expression): typescript.ts.PrefixUnaryExpression;
	static function createPostfix(operand: typescript.ts.Expression, operator_: typescript.ts.PostfixUnaryOperator): typescript.ts.PostfixUnaryExpression;
	static function updatePostfix(node: typescript.ts.PostfixUnaryExpression, operand: typescript.ts.Expression): typescript.ts.PostfixUnaryExpression;
	static function createBinary(left: typescript.ts.Expression, operator_: haxe.extern.EitherType<typescript.ts.BinaryOperator, typescript.ts.BinaryOperatorToken>, right: typescript.ts.Expression): typescript.ts.BinaryExpression;
	static function updateBinary(node: typescript.ts.BinaryExpression, left: typescript.ts.Expression, right: typescript.ts.Expression, ?operator_: haxe.extern.EitherType<typescript.ts.BinaryOperator, typescript.ts.BinaryOperatorToken>): typescript.ts.BinaryExpression;
	@:overload(function(condition: typescript.ts.Expression, questionToken: typescript.ts.QuestionToken, whenTrue: typescript.ts.Expression, colonToken: typescript.ts.ColonToken, whenFalse: typescript.ts.Expression): typescript.ts.ConditionalExpression { })
	static function createConditional(condition: typescript.ts.Expression, whenTrue: typescript.ts.Expression, whenFalse: typescript.ts.Expression): typescript.ts.ConditionalExpression;
	static function updateConditional(node: typescript.ts.ConditionalExpression, condition: typescript.ts.Expression, questionToken: typescript.ts.Token<typescript.ts.SyntaxKind>, whenTrue: typescript.ts.Expression, colonToken: typescript.ts.Token<typescript.ts.SyntaxKind>, whenFalse: typescript.ts.Expression): typescript.ts.ConditionalExpression;
	static function createTemplateExpression(head: typescript.ts.TemplateHead, templateSpans: Array<typescript.ts.TemplateSpan>): typescript.ts.TemplateExpression;
	static function updateTemplateExpression(node: typescript.ts.TemplateExpression, head: typescript.ts.TemplateHead, templateSpans: Array<typescript.ts.TemplateSpan>): typescript.ts.TemplateExpression;
	static function createTemplateHead(text: String, ?rawText: String): typescript.ts.TemplateHead;
	static function createTemplateMiddle(text: String, ?rawText: String): typescript.ts.TemplateMiddle;
	static function createTemplateTail(text: String, ?rawText: String): typescript.ts.TemplateTail;
	static function createNoSubstitutionTemplateLiteral(text: String, ?rawText: String): typescript.ts.NoSubstitutionTemplateLiteral;
	@:overload(function(asteriskToken: Null<typescript.ts.AsteriskToken>, expression: typescript.ts.Expression): typescript.ts.YieldExpression { })
	static function createYield(?expression: typescript.ts.Expression): typescript.ts.YieldExpression;
	static function updateYield(node: typescript.ts.YieldExpression, asteriskToken: Null<typescript.ts.AsteriskToken>, expression: typescript.ts.Expression): typescript.ts.YieldExpression;
	static function createSpread(expression: typescript.ts.Expression): typescript.ts.SpreadElement;
	static function updateSpread(node: typescript.ts.SpreadElement, expression: typescript.ts.Expression): typescript.ts.SpreadElement;
	static function createClassExpression(modifiers: Null<Array<typescript.ts.Modifier>>, name: Null<haxe.extern.EitherType<String, typescript.ts.Identifier>>, typeParameters: Null<Array<typescript.ts.TypeParameterDeclaration>>, heritageClauses: Null<Array<typescript.ts.HeritageClause>>, members: Array<typescript.ts.ClassElement>): typescript.ts.ClassExpression;
	static function updateClassExpression(node: typescript.ts.ClassExpression, modifiers: Null<Array<typescript.ts.Modifier>>, name: Null<typescript.ts.Identifier>, typeParameters: Null<Array<typescript.ts.TypeParameterDeclaration>>, heritageClauses: Null<Array<typescript.ts.HeritageClause>>, members: Array<typescript.ts.ClassElement>): typescript.ts.ClassExpression;
	static function createOmittedExpression(): typescript.ts.OmittedExpression;
	static function createExpressionWithTypeArguments(typeArguments: Null<Array<typescript.ts.TypeNode>>, expression: typescript.ts.Expression): typescript.ts.ExpressionWithTypeArguments;
	static function updateExpressionWithTypeArguments(node: typescript.ts.ExpressionWithTypeArguments, typeArguments: Null<Array<typescript.ts.TypeNode>>, expression: typescript.ts.Expression): typescript.ts.ExpressionWithTypeArguments;
	static function createAsExpression(expression: typescript.ts.Expression, type: typescript.ts.TypeNode): typescript.ts.AsExpression;
	static function updateAsExpression(node: typescript.ts.AsExpression, expression: typescript.ts.Expression, type: typescript.ts.TypeNode): typescript.ts.AsExpression;
	static function createNonNullExpression(expression: typescript.ts.Expression): typescript.ts.NonNullExpression;
	static function updateNonNullExpression(node: typescript.ts.NonNullExpression, expression: typescript.ts.Expression): typescript.ts.NonNullExpression;
	static function createMetaProperty(keywordToken: typescript.ts.SyntaxKind, name: typescript.ts.Identifier): typescript.ts.MetaProperty;
	static function updateMetaProperty(node: typescript.ts.MetaProperty, name: typescript.ts.Identifier): typescript.ts.MetaProperty;
	static function createTemplateSpan(expression: typescript.ts.Expression, literal: haxe.extern.EitherType<typescript.ts.TemplateMiddle, typescript.ts.TemplateTail>): typescript.ts.TemplateSpan;
	static function updateTemplateSpan(node: typescript.ts.TemplateSpan, expression: typescript.ts.Expression, literal: haxe.extern.EitherType<typescript.ts.TemplateMiddle, typescript.ts.TemplateTail>): typescript.ts.TemplateSpan;
	static function createSemicolonClassElement(): typescript.ts.SemicolonClassElement;
	static function createBlock(statements: Array<typescript.ts.Statement>, ?multiLine: Bool): typescript.ts.Block;
	static function updateBlock(node: typescript.ts.Block, statements: Array<typescript.ts.Statement>): typescript.ts.Block;
	static function createVariableStatement(modifiers: Null<Array<typescript.ts.Modifier>>, declarationList: haxe.extern.EitherType<typescript.ts.VariableDeclarationList, Array<typescript.ts.VariableDeclaration>>): typescript.ts.VariableStatement;
	static function updateVariableStatement(node: typescript.ts.VariableStatement, modifiers: Null<Array<typescript.ts.Modifier>>, declarationList: typescript.ts.VariableDeclarationList): typescript.ts.VariableStatement;
	static function createEmptyStatement(): typescript.ts.EmptyStatement;
	static function createExpressionStatement(expression: typescript.ts.Expression): typescript.ts.ExpressionStatement;
	static function updateExpressionStatement(node: typescript.ts.ExpressionStatement, expression: typescript.ts.Expression): typescript.ts.ExpressionStatement;
	static function createIf(expression: typescript.ts.Expression, thenStatement: typescript.ts.Statement, ?elseStatement: typescript.ts.Statement): typescript.ts.IfStatement;
	static function updateIf(node: typescript.ts.IfStatement, expression: typescript.ts.Expression, thenStatement: typescript.ts.Statement, elseStatement: Null<typescript.ts.Statement>): typescript.ts.IfStatement;
	static function createDo(statement: typescript.ts.Statement, expression: typescript.ts.Expression): typescript.ts.DoStatement;
	static function updateDo(node: typescript.ts.DoStatement, statement: typescript.ts.Statement, expression: typescript.ts.Expression): typescript.ts.DoStatement;
	static function createWhile(expression: typescript.ts.Expression, statement: typescript.ts.Statement): typescript.ts.WhileStatement;
	static function updateWhile(node: typescript.ts.WhileStatement, expression: typescript.ts.Expression, statement: typescript.ts.Statement): typescript.ts.WhileStatement;
	static function createFor(initializer: Null<typescript.ts.ForInitializer>, condition: Null<typescript.ts.Expression>, incrementor: Null<typescript.ts.Expression>, statement: typescript.ts.Statement): typescript.ts.ForStatement;
	static function updateFor(node: typescript.ts.ForStatement, initializer: Null<typescript.ts.ForInitializer>, condition: Null<typescript.ts.Expression>, incrementor: Null<typescript.ts.Expression>, statement: typescript.ts.Statement): typescript.ts.ForStatement;
	static function createForIn(initializer: typescript.ts.ForInitializer, expression: typescript.ts.Expression, statement: typescript.ts.Statement): typescript.ts.ForInStatement;
	static function updateForIn(node: typescript.ts.ForInStatement, initializer: typescript.ts.ForInitializer, expression: typescript.ts.Expression, statement: typescript.ts.Statement): typescript.ts.ForInStatement;
	static function createForOf(awaitModifier: Null<typescript.ts.AwaitKeywordToken>, initializer: typescript.ts.ForInitializer, expression: typescript.ts.Expression, statement: typescript.ts.Statement): typescript.ts.ForOfStatement;
	static function updateForOf(node: typescript.ts.ForOfStatement, awaitModifier: Null<typescript.ts.AwaitKeywordToken>, initializer: typescript.ts.ForInitializer, expression: typescript.ts.Expression, statement: typescript.ts.Statement): typescript.ts.ForOfStatement;
	static function createContinue(?label: haxe.extern.EitherType<String, typescript.ts.Identifier>): typescript.ts.ContinueStatement;
	static function updateContinue(node: typescript.ts.ContinueStatement, label: Null<typescript.ts.Identifier>): typescript.ts.ContinueStatement;
	static function createBreak(?label: haxe.extern.EitherType<String, typescript.ts.Identifier>): typescript.ts.BreakStatement;
	static function updateBreak(node: typescript.ts.BreakStatement, label: Null<typescript.ts.Identifier>): typescript.ts.BreakStatement;
	static function createReturn(?expression: typescript.ts.Expression): typescript.ts.ReturnStatement;
	static function updateReturn(node: typescript.ts.ReturnStatement, expression: Null<typescript.ts.Expression>): typescript.ts.ReturnStatement;
	static function createWith(expression: typescript.ts.Expression, statement: typescript.ts.Statement): typescript.ts.WithStatement;
	static function updateWith(node: typescript.ts.WithStatement, expression: typescript.ts.Expression, statement: typescript.ts.Statement): typescript.ts.WithStatement;
	static function createSwitch(expression: typescript.ts.Expression, caseBlock: typescript.ts.CaseBlock): typescript.ts.SwitchStatement;
	static function updateSwitch(node: typescript.ts.SwitchStatement, expression: typescript.ts.Expression, caseBlock: typescript.ts.CaseBlock): typescript.ts.SwitchStatement;
	static function createLabel(label: haxe.extern.EitherType<String, typescript.ts.Identifier>, statement: typescript.ts.Statement): typescript.ts.LabeledStatement;
	static function updateLabel(node: typescript.ts.LabeledStatement, label: typescript.ts.Identifier, statement: typescript.ts.Statement): typescript.ts.LabeledStatement;
	static function createThrow(expression: typescript.ts.Expression): typescript.ts.ThrowStatement;
	static function updateThrow(node: typescript.ts.ThrowStatement, expression: typescript.ts.Expression): typescript.ts.ThrowStatement;
	static function createTry(tryBlock: typescript.ts.Block, catchClause: Null<typescript.ts.CatchClause>, finallyBlock: Null<typescript.ts.Block>): typescript.ts.TryStatement;
	static function updateTry(node: typescript.ts.TryStatement, tryBlock: typescript.ts.Block, catchClause: Null<typescript.ts.CatchClause>, finallyBlock: Null<typescript.ts.Block>): typescript.ts.TryStatement;
	static function createDebuggerStatement(): typescript.ts.DebuggerStatement;
	static function createVariableDeclaration(name: haxe.extern.EitherType<String, typescript.ts.BindingName>, ?type: typescript.ts.TypeNode, ?initializer: typescript.ts.Expression): typescript.ts.VariableDeclaration;
	static function updateVariableDeclaration(node: typescript.ts.VariableDeclaration, name: typescript.ts.BindingName, type: Null<typescript.ts.TypeNode>, initializer: Null<typescript.ts.Expression>): typescript.ts.VariableDeclaration;
	static function createVariableDeclarationList(declarations: Array<typescript.ts.VariableDeclaration>, ?flags: typescript.ts.NodeFlags): typescript.ts.VariableDeclarationList;
	static function updateVariableDeclarationList(node: typescript.ts.VariableDeclarationList, declarations: Array<typescript.ts.VariableDeclaration>): typescript.ts.VariableDeclarationList;
	static function createFunctionDeclaration(decorators: Null<Array<typescript.ts.Decorator>>, modifiers: Null<Array<typescript.ts.Modifier>>, asteriskToken: Null<typescript.ts.AsteriskToken>, name: Null<haxe.extern.EitherType<String, typescript.ts.Identifier>>, typeParameters: Null<Array<typescript.ts.TypeParameterDeclaration>>, parameters: Array<typescript.ts.ParameterDeclaration>, type: Null<typescript.ts.TypeNode>, body: Null<typescript.ts.Block>): typescript.ts.FunctionDeclaration;
	static function updateFunctionDeclaration(node: typescript.ts.FunctionDeclaration, decorators: Null<Array<typescript.ts.Decorator>>, modifiers: Null<Array<typescript.ts.Modifier>>, asteriskToken: Null<typescript.ts.AsteriskToken>, name: Null<typescript.ts.Identifier>, typeParameters: Null<Array<typescript.ts.TypeParameterDeclaration>>, parameters: Array<typescript.ts.ParameterDeclaration>, type: Null<typescript.ts.TypeNode>, body: Null<typescript.ts.Block>): typescript.ts.FunctionDeclaration;
	static function createClassDeclaration(decorators: Null<Array<typescript.ts.Decorator>>, modifiers: Null<Array<typescript.ts.Modifier>>, name: Null<haxe.extern.EitherType<String, typescript.ts.Identifier>>, typeParameters: Null<Array<typescript.ts.TypeParameterDeclaration>>, heritageClauses: Null<Array<typescript.ts.HeritageClause>>, members: Array<typescript.ts.ClassElement>): typescript.ts.ClassDeclaration;
	static function updateClassDeclaration(node: typescript.ts.ClassDeclaration, decorators: Null<Array<typescript.ts.Decorator>>, modifiers: Null<Array<typescript.ts.Modifier>>, name: Null<typescript.ts.Identifier>, typeParameters: Null<Array<typescript.ts.TypeParameterDeclaration>>, heritageClauses: Null<Array<typescript.ts.HeritageClause>>, members: Array<typescript.ts.ClassElement>): typescript.ts.ClassDeclaration;
	static function createInterfaceDeclaration(decorators: Null<Array<typescript.ts.Decorator>>, modifiers: Null<Array<typescript.ts.Modifier>>, name: haxe.extern.EitherType<String, typescript.ts.Identifier>, typeParameters: Null<Array<typescript.ts.TypeParameterDeclaration>>, heritageClauses: Null<Array<typescript.ts.HeritageClause>>, members: Array<typescript.ts.TypeElement>): typescript.ts.InterfaceDeclaration;
	static function updateInterfaceDeclaration(node: typescript.ts.InterfaceDeclaration, decorators: Null<Array<typescript.ts.Decorator>>, modifiers: Null<Array<typescript.ts.Modifier>>, name: typescript.ts.Identifier, typeParameters: Null<Array<typescript.ts.TypeParameterDeclaration>>, heritageClauses: Null<Array<typescript.ts.HeritageClause>>, members: Array<typescript.ts.TypeElement>): typescript.ts.InterfaceDeclaration;
	static function createTypeAliasDeclaration(decorators: Null<Array<typescript.ts.Decorator>>, modifiers: Null<Array<typescript.ts.Modifier>>, name: haxe.extern.EitherType<String, typescript.ts.Identifier>, typeParameters: Null<Array<typescript.ts.TypeParameterDeclaration>>, type: typescript.ts.TypeNode): typescript.ts.TypeAliasDeclaration;
	static function updateTypeAliasDeclaration(node: typescript.ts.TypeAliasDeclaration, decorators: Null<Array<typescript.ts.Decorator>>, modifiers: Null<Array<typescript.ts.Modifier>>, name: typescript.ts.Identifier, typeParameters: Null<Array<typescript.ts.TypeParameterDeclaration>>, type: typescript.ts.TypeNode): typescript.ts.TypeAliasDeclaration;
	static function createEnumDeclaration(decorators: Null<Array<typescript.ts.Decorator>>, modifiers: Null<Array<typescript.ts.Modifier>>, name: haxe.extern.EitherType<String, typescript.ts.Identifier>, members: Array<typescript.ts.EnumMember>): typescript.ts.EnumDeclaration;
	static function updateEnumDeclaration(node: typescript.ts.EnumDeclaration, decorators: Null<Array<typescript.ts.Decorator>>, modifiers: Null<Array<typescript.ts.Modifier>>, name: typescript.ts.Identifier, members: Array<typescript.ts.EnumMember>): typescript.ts.EnumDeclaration;
	static function createModuleDeclaration(decorators: Null<Array<typescript.ts.Decorator>>, modifiers: Null<Array<typescript.ts.Modifier>>, name: typescript.ts.ModuleName, body: Null<typescript.ts.ModuleBody>, ?flags: typescript.ts.NodeFlags): typescript.ts.ModuleDeclaration;
	static function updateModuleDeclaration(node: typescript.ts.ModuleDeclaration, decorators: Null<Array<typescript.ts.Decorator>>, modifiers: Null<Array<typescript.ts.Modifier>>, name: typescript.ts.ModuleName, body: Null<typescript.ts.ModuleBody>): typescript.ts.ModuleDeclaration;
	static function createModuleBlock(statements: Array<typescript.ts.Statement>): typescript.ts.ModuleBlock;
	static function updateModuleBlock(node: typescript.ts.ModuleBlock, statements: Array<typescript.ts.Statement>): typescript.ts.ModuleBlock;
	static function createCaseBlock(clauses: Array<typescript.ts.CaseOrDefaultClause>): typescript.ts.CaseBlock;
	static function updateCaseBlock(node: typescript.ts.CaseBlock, clauses: Array<typescript.ts.CaseOrDefaultClause>): typescript.ts.CaseBlock;
	static function createNamespaceExportDeclaration(name: haxe.extern.EitherType<String, typescript.ts.Identifier>): typescript.ts.NamespaceExportDeclaration;
	static function updateNamespaceExportDeclaration(node: typescript.ts.NamespaceExportDeclaration, name: typescript.ts.Identifier): typescript.ts.NamespaceExportDeclaration;
	static function createImportEqualsDeclaration(decorators: Null<Array<typescript.ts.Decorator>>, modifiers: Null<Array<typescript.ts.Modifier>>, name: haxe.extern.EitherType<String, typescript.ts.Identifier>, moduleReference: typescript.ts.ModuleReference): typescript.ts.ImportEqualsDeclaration;
	static function updateImportEqualsDeclaration(node: typescript.ts.ImportEqualsDeclaration, decorators: Null<Array<typescript.ts.Decorator>>, modifiers: Null<Array<typescript.ts.Modifier>>, name: typescript.ts.Identifier, moduleReference: typescript.ts.ModuleReference): typescript.ts.ImportEqualsDeclaration;
	static function createImportDeclaration(decorators: Null<Array<typescript.ts.Decorator>>, modifiers: Null<Array<typescript.ts.Modifier>>, importClause: Null<typescript.ts.ImportClause>, moduleSpecifier: typescript.ts.Expression): typescript.ts.ImportDeclaration;
	static function updateImportDeclaration(node: typescript.ts.ImportDeclaration, decorators: Null<Array<typescript.ts.Decorator>>, modifiers: Null<Array<typescript.ts.Modifier>>, importClause: Null<typescript.ts.ImportClause>, moduleSpecifier: typescript.ts.Expression): typescript.ts.ImportDeclaration;
	static function createImportClause(name: Null<typescript.ts.Identifier>, namedBindings: Null<typescript.ts.NamedImportBindings>): typescript.ts.ImportClause;
	static function updateImportClause(node: typescript.ts.ImportClause, name: Null<typescript.ts.Identifier>, namedBindings: Null<typescript.ts.NamedImportBindings>): typescript.ts.ImportClause;
	static function createNamespaceImport(name: typescript.ts.Identifier): typescript.ts.NamespaceImport;
	static function updateNamespaceImport(node: typescript.ts.NamespaceImport, name: typescript.ts.Identifier): typescript.ts.NamespaceImport;
	static function createNamedImports(elements: Array<typescript.ts.ImportSpecifier>): typescript.ts.NamedImports;
	static function updateNamedImports(node: typescript.ts.NamedImports, elements: Array<typescript.ts.ImportSpecifier>): typescript.ts.NamedImports;
	static function createImportSpecifier(propertyName: Null<typescript.ts.Identifier>, name: typescript.ts.Identifier): typescript.ts.ImportSpecifier;
	static function updateImportSpecifier(node: typescript.ts.ImportSpecifier, propertyName: Null<typescript.ts.Identifier>, name: typescript.ts.Identifier): typescript.ts.ImportSpecifier;
	static function createExportAssignment(decorators: Null<Array<typescript.ts.Decorator>>, modifiers: Null<Array<typescript.ts.Modifier>>, isExportEquals: Null<Bool>, expression: typescript.ts.Expression): typescript.ts.ExportAssignment;
	static function updateExportAssignment(node: typescript.ts.ExportAssignment, decorators: Null<Array<typescript.ts.Decorator>>, modifiers: Null<Array<typescript.ts.Modifier>>, expression: typescript.ts.Expression): typescript.ts.ExportAssignment;
	static function createExportDeclaration(decorators: Null<Array<typescript.ts.Decorator>>, modifiers: Null<Array<typescript.ts.Modifier>>, exportClause: Null<typescript.ts.NamedExports>, ?moduleSpecifier: typescript.ts.Expression): typescript.ts.ExportDeclaration;
	static function updateExportDeclaration(node: typescript.ts.ExportDeclaration, decorators: Null<Array<typescript.ts.Decorator>>, modifiers: Null<Array<typescript.ts.Modifier>>, exportClause: Null<typescript.ts.NamedExports>, moduleSpecifier: Null<typescript.ts.Expression>): typescript.ts.ExportDeclaration;
	static function createNamedExports(elements: Array<typescript.ts.ExportSpecifier>): typescript.ts.NamedExports;
	static function updateNamedExports(node: typescript.ts.NamedExports, elements: Array<typescript.ts.ExportSpecifier>): typescript.ts.NamedExports;
	static function createExportSpecifier(propertyName: Null<haxe.extern.EitherType<String, typescript.ts.Identifier>>, name: haxe.extern.EitherType<String, typescript.ts.Identifier>): typescript.ts.ExportSpecifier;
	static function updateExportSpecifier(node: typescript.ts.ExportSpecifier, propertyName: Null<typescript.ts.Identifier>, name: typescript.ts.Identifier): typescript.ts.ExportSpecifier;
	static function createExternalModuleReference(expression: typescript.ts.Expression): typescript.ts.ExternalModuleReference;
	static function updateExternalModuleReference(node: typescript.ts.ExternalModuleReference, expression: typescript.ts.Expression): typescript.ts.ExternalModuleReference;
	static function createJsxElement(openingElement: typescript.ts.JsxOpeningElement, children: Array<typescript.ts.JsxChild>, closingElement: typescript.ts.JsxClosingElement): typescript.ts.JsxElement;
	static function updateJsxElement(node: typescript.ts.JsxElement, openingElement: typescript.ts.JsxOpeningElement, children: Array<typescript.ts.JsxChild>, closingElement: typescript.ts.JsxClosingElement): typescript.ts.JsxElement;
	static function createJsxSelfClosingElement(tagName: typescript.ts.JsxTagNameExpression, typeArguments: Null<Array<typescript.ts.TypeNode>>, attributes: typescript.ts.JsxAttributes): typescript.ts.JsxSelfClosingElement;
	static function updateJsxSelfClosingElement(node: typescript.ts.JsxSelfClosingElement, tagName: typescript.ts.JsxTagNameExpression, typeArguments: Null<Array<typescript.ts.TypeNode>>, attributes: typescript.ts.JsxAttributes): typescript.ts.JsxSelfClosingElement;
	static function createJsxOpeningElement(tagName: typescript.ts.JsxTagNameExpression, typeArguments: Null<Array<typescript.ts.TypeNode>>, attributes: typescript.ts.JsxAttributes): typescript.ts.JsxOpeningElement;
	static function updateJsxOpeningElement(node: typescript.ts.JsxOpeningElement, tagName: typescript.ts.JsxTagNameExpression, typeArguments: Null<Array<typescript.ts.TypeNode>>, attributes: typescript.ts.JsxAttributes): typescript.ts.JsxOpeningElement;
	static function createJsxClosingElement(tagName: typescript.ts.JsxTagNameExpression): typescript.ts.JsxClosingElement;
	static function updateJsxClosingElement(node: typescript.ts.JsxClosingElement, tagName: typescript.ts.JsxTagNameExpression): typescript.ts.JsxClosingElement;
	static function createJsxFragment(openingFragment: typescript.ts.JsxOpeningFragment, children: Array<typescript.ts.JsxChild>, closingFragment: typescript.ts.JsxClosingFragment): typescript.ts.JsxFragment;
	static function createJsxText(text: String, ?containsOnlyTriviaWhiteSpaces: Bool): typescript.ts.JsxText;
	static function updateJsxText(node: typescript.ts.JsxText, text: String, ?containsOnlyTriviaWhiteSpaces: Bool): typescript.ts.JsxText;
	static function createJsxOpeningFragment(): typescript.ts.JsxOpeningFragment;
	static function createJsxJsxClosingFragment(): typescript.ts.JsxClosingFragment;
	static function updateJsxFragment(node: typescript.ts.JsxFragment, openingFragment: typescript.ts.JsxOpeningFragment, children: Array<typescript.ts.JsxChild>, closingFragment: typescript.ts.JsxClosingFragment): typescript.ts.JsxFragment;
	static function createJsxAttribute(name: typescript.ts.Identifier, initializer: haxe.extern.EitherType<typescript.ts.StringLiteral, typescript.ts.JsxExpression>): typescript.ts.JsxAttribute;
	static function updateJsxAttribute(node: typescript.ts.JsxAttribute, name: typescript.ts.Identifier, initializer: haxe.extern.EitherType<typescript.ts.StringLiteral, typescript.ts.JsxExpression>): typescript.ts.JsxAttribute;
	static function createJsxAttributes(properties: Array<typescript.ts.JsxAttributeLike>): typescript.ts.JsxAttributes;
	static function updateJsxAttributes(node: typescript.ts.JsxAttributes, properties: Array<typescript.ts.JsxAttributeLike>): typescript.ts.JsxAttributes;
	static function createJsxSpreadAttribute(expression: typescript.ts.Expression): typescript.ts.JsxSpreadAttribute;
	static function updateJsxSpreadAttribute(node: typescript.ts.JsxSpreadAttribute, expression: typescript.ts.Expression): typescript.ts.JsxSpreadAttribute;
	static function createJsxExpression(dotDotDotToken: Null<typescript.ts.DotDotDotToken>, expression: Null<typescript.ts.Expression>): typescript.ts.JsxExpression;
	static function updateJsxExpression(node: typescript.ts.JsxExpression, expression: Null<typescript.ts.Expression>): typescript.ts.JsxExpression;
	static function createCaseClause(expression: typescript.ts.Expression, statements: Array<typescript.ts.Statement>): typescript.ts.CaseClause;
	static function updateCaseClause(node: typescript.ts.CaseClause, expression: typescript.ts.Expression, statements: Array<typescript.ts.Statement>): typescript.ts.CaseClause;
	static function createDefaultClause(statements: Array<typescript.ts.Statement>): typescript.ts.DefaultClause;
	static function updateDefaultClause(node: typescript.ts.DefaultClause, statements: Array<typescript.ts.Statement>): typescript.ts.DefaultClause;
	static function createHeritageClause(token: typescript.ts.SyntaxKind, types: Array<typescript.ts.ExpressionWithTypeArguments>): typescript.ts.HeritageClause;
	static function updateHeritageClause(node: typescript.ts.HeritageClause, types: Array<typescript.ts.ExpressionWithTypeArguments>): typescript.ts.HeritageClause;
	static function createCatchClause(variableDeclaration: Null<haxe.extern.EitherType<String, typescript.ts.VariableDeclaration>>, block: typescript.ts.Block): typescript.ts.CatchClause;
	static function updateCatchClause(node: typescript.ts.CatchClause, variableDeclaration: Null<typescript.ts.VariableDeclaration>, block: typescript.ts.Block): typescript.ts.CatchClause;
	static function createPropertyAssignment(name: haxe.extern.EitherType<String, typescript.ts.PropertyName>, initializer: typescript.ts.Expression): typescript.ts.PropertyAssignment;
	static function updatePropertyAssignment(node: typescript.ts.PropertyAssignment, name: typescript.ts.PropertyName, initializer: typescript.ts.Expression): typescript.ts.PropertyAssignment;
	static function createShorthandPropertyAssignment(name: haxe.extern.EitherType<String, typescript.ts.Identifier>, ?objectAssignmentInitializer: typescript.ts.Expression): typescript.ts.ShorthandPropertyAssignment;
	static function updateShorthandPropertyAssignment(node: typescript.ts.ShorthandPropertyAssignment, name: typescript.ts.Identifier, objectAssignmentInitializer: Null<typescript.ts.Expression>): typescript.ts.ShorthandPropertyAssignment;
	static function createSpreadAssignment(expression: typescript.ts.Expression): typescript.ts.SpreadAssignment;
	static function updateSpreadAssignment(node: typescript.ts.SpreadAssignment, expression: typescript.ts.Expression): typescript.ts.SpreadAssignment;
	static function createEnumMember(name: haxe.extern.EitherType<String, typescript.ts.PropertyName>, ?initializer: typescript.ts.Expression): typescript.ts.EnumMember;
	static function updateEnumMember(node: typescript.ts.EnumMember, name: typescript.ts.PropertyName, initializer: Null<typescript.ts.Expression>): typescript.ts.EnumMember;
	static function updateSourceFileNode(node: typescript.ts.SourceFile, statements: Array<typescript.ts.Statement>, ?isDeclarationFile: Bool, ?referencedFiles: Any, ?typeReferences: Any, ?hasNoDefaultLib: Bool, ?libReferences: Any): typescript.ts.SourceFile;
	/**
	Creates a shallow, memberwise clone of a node for mutation.
	**/
	static function getMutableClone<T>(node: T): T;
	/**
	Creates a synthetic statement to act as a placeholder for a not-emitted statement in
	order to preserve comments.
	**/
	static function createNotEmittedStatement(original: typescript.ts.Node): typescript.ts.NotEmittedStatement;
	/**
	Creates a synthetic expression to act as a placeholder for a not-emitted expression in
	order to preserve comments or sourcemap positions.
	**/
	static function createPartiallyEmittedExpression(expression: typescript.ts.Expression, ?original: typescript.ts.Node): typescript.ts.PartiallyEmittedExpression;
	static function updatePartiallyEmittedExpression(node: typescript.ts.PartiallyEmittedExpression, expression: typescript.ts.Expression): typescript.ts.PartiallyEmittedExpression;
	static function createCommaList(elements: Array<typescript.ts.Expression>): typescript.ts.CommaListExpression;
	static function updateCommaList(node: typescript.ts.CommaListExpression, elements: Array<typescript.ts.Expression>): typescript.ts.CommaListExpression;
	static function createBundle(sourceFiles: Array<typescript.ts.SourceFile>, ?prepends: Array<haxe.extern.EitherType<typescript.ts.UnparsedSource, typescript.ts.InputFiles>>): typescript.ts.Bundle;
	@:overload(function(inputFile: typescript.ts.InputFiles, type: String, ?stripInternal: Bool): typescript.ts.UnparsedSource { })
	@:overload(function(text: String, mapPath: Null<String>, map: Null<String>): typescript.ts.UnparsedSource { })
	static function createUnparsedSourceFile(text: String): typescript.ts.UnparsedSource;
	@:overload(function(readFileText: (path: String) -> Null<String>, javascriptPath: String, javascriptMapPath: Null<String>, declarationPath: String, declarationMapPath: Null<String>, buildInfoPath: Null<String>): typescript.ts.InputFiles { })
	@:overload(function(javascriptText: String, declarationText: String, javascriptMapPath: Null<String>, javascriptMapText: Null<String>, declarationMapPath: Null<String>, declarationMapText: Null<String>): typescript.ts.InputFiles { })
	static function createInputFiles(javascriptText: String, declarationText: String): typescript.ts.InputFiles;
	static function updateBundle(node: typescript.ts.Bundle, sourceFiles: Array<typescript.ts.SourceFile>, ?prepends: Array<haxe.extern.EitherType<typescript.ts.UnparsedSource, typescript.ts.InputFiles>>): typescript.ts.Bundle;
	@:overload(function(statements: Array<typescript.ts.Statement>, param: typescript.ts.ParameterDeclaration, paramValue: typescript.ts.Expression): typescript.ts.CallExpression { })
	static function createImmediatelyInvokedFunctionExpression(statements: Array<typescript.ts.Statement>): typescript.ts.CallExpression;
	@:overload(function(statements: Array<typescript.ts.Statement>, param: typescript.ts.ParameterDeclaration, paramValue: typescript.ts.Expression): typescript.ts.CallExpression { })
	static function createImmediatelyInvokedArrowFunction(statements: Array<typescript.ts.Statement>): typescript.ts.CallExpression;
	static function createComma(left: typescript.ts.Expression, right: typescript.ts.Expression): typescript.ts.Expression;
	static function createLessThan(left: typescript.ts.Expression, right: typescript.ts.Expression): typescript.ts.Expression;
	@:overload(function(left: typescript.ts.Expression, right: typescript.ts.Expression): typescript.ts.BinaryExpression { })
	static function createAssignment(left: haxe.extern.EitherType<typescript.ts.ObjectLiteralExpression, typescript.ts.ArrayLiteralExpression>, right: typescript.ts.Expression): typescript.ts.DestructuringAssignment;
	static function createStrictEquality(left: typescript.ts.Expression, right: typescript.ts.Expression): typescript.ts.BinaryExpression;
	static function createStrictInequality(left: typescript.ts.Expression, right: typescript.ts.Expression): typescript.ts.BinaryExpression;
	static function createAdd(left: typescript.ts.Expression, right: typescript.ts.Expression): typescript.ts.BinaryExpression;
	static function createSubtract(left: typescript.ts.Expression, right: typescript.ts.Expression): typescript.ts.BinaryExpression;
	static function createPostfixIncrement(operand: typescript.ts.Expression): typescript.ts.PostfixUnaryExpression;
	static function createLogicalAnd(left: typescript.ts.Expression, right: typescript.ts.Expression): typescript.ts.BinaryExpression;
	static function createLogicalOr(left: typescript.ts.Expression, right: typescript.ts.Expression): typescript.ts.BinaryExpression;
	static function createNullishCoalesce(left: typescript.ts.Expression, right: typescript.ts.Expression): typescript.ts.BinaryExpression;
	static function createLogicalNot(operand: typescript.ts.Expression): typescript.ts.PrefixUnaryExpression;
	static function createVoidZero(): typescript.ts.VoidExpression;
	static function createExportDefault(expression: typescript.ts.Expression): typescript.ts.ExportAssignment;
	static function createExternalModuleExport(exportName: typescript.ts.Identifier): typescript.ts.ExportDeclaration;
	/**
	Clears any EmitNode entries from parse-tree nodes.
	**/
	static function disposeEmitNodes(sourceFile: typescript.ts.SourceFile): Void;
	static function setTextRange<T>(range: T, location: Null<typescript.ts.TextRange>): T;
	/**
	Sets flags that control emit behavior of a node.
	**/
	static function setEmitFlags<T>(node: T, emitFlags: typescript.ts.EmitFlags): T;
	/**
	Gets a custom text range to use when emitting source maps.
	**/
	static function getSourceMapRange(node: typescript.ts.Node): typescript.ts.SourceMapRange;
	/**
	Sets a custom text range to use when emitting source maps.
	**/
	static function setSourceMapRange<T>(node: T, range: Null<typescript.ts.SourceMapRange>): T;
	/**
	Create an external source map source file reference
	**/
	static function createSourceMapSource(fileName: String, text: String, ?skipTrivia: (pos: Float) -> Float): typescript.ts.SourceMapSource;
	/**
	Gets the TextRange to use for source maps for a token of a node.
	**/
	static function getTokenSourceMapRange(node: typescript.ts.Node, token: typescript.ts.SyntaxKind): Null<typescript.ts.SourceMapRange>;
	/**
	Sets the TextRange to use for source maps for a token of a node.
	**/
	static function setTokenSourceMapRange<T>(node: T, token: typescript.ts.SyntaxKind, range: Null<typescript.ts.SourceMapRange>): T;
	/**
	Gets a custom text range to use when emitting comments.
	**/
	static function getCommentRange(node: typescript.ts.Node): typescript.ts.TextRange;
	/**
	Sets a custom text range to use when emitting comments.
	**/
	static function setCommentRange<T>(node: T, range: typescript.ts.TextRange): T;
	static function getSyntheticLeadingComments(node: typescript.ts.Node): Null<Array<typescript.ts.SynthesizedComment>>;
	static function setSyntheticLeadingComments<T>(node: T, comments: Null<Array<typescript.ts.SynthesizedComment>>): T;
	static function addSyntheticLeadingComment<T>(node: T, kind: typescript.ts.SyntaxKind, text: String, ?hasTrailingNewLine: Bool): T;
	static function getSyntheticTrailingComments(node: typescript.ts.Node): Null<Array<typescript.ts.SynthesizedComment>>;
	static function setSyntheticTrailingComments<T>(node: T, comments: Null<Array<typescript.ts.SynthesizedComment>>): T;
	static function addSyntheticTrailingComment<T>(node: T, kind: typescript.ts.SyntaxKind, text: String, ?hasTrailingNewLine: Bool): T;
	static function moveSyntheticComments<T>(node: T, original: typescript.ts.Node): T;
	/**
	Gets the constant value to emit for an expression.
	**/
	static function getConstantValue(node: haxe.extern.EitherType<typescript.ts.PropertyAccessExpression, typescript.ts.ElementAccessExpression>): Null<haxe.extern.EitherType<String, Float>>;
	/**
	Sets the constant value to emit for an expression.
	**/
	static function setConstantValue(node: haxe.extern.EitherType<typescript.ts.PropertyAccessExpression, typescript.ts.ElementAccessExpression>, value: haxe.extern.EitherType<String, Float>): haxe.extern.EitherType<typescript.ts.ElementAccessExpression, typescript.ts.PropertyAccessExpression>;
	/**
	Adds an EmitHelper to a node.
	**/
	static function addEmitHelper<T>(node: T, helper: typescript.ts.EmitHelper): T;
	/**
	Add EmitHelpers to a node.
	**/
	static function addEmitHelpers<T>(node: T, helpers: Null<Array<typescript.ts.EmitHelper>>): T;
	/**
	Removes an EmitHelper from a node.
	**/
	static function removeEmitHelper(node: typescript.ts.Node, helper: typescript.ts.EmitHelper): Bool;
	/**
	Gets the EmitHelpers of a node.
	**/
	static function getEmitHelpers(node: typescript.ts.Node): Null<Array<typescript.ts.EmitHelper>>;
	/**
	Moves matching emit helpers from a source node to a target node.
	**/
	static function moveEmitHelpers(source: typescript.ts.Node, target: typescript.ts.Node, predicate: (helper: typescript.ts.EmitHelper) -> Bool): Void;
	static function setOriginalNode<T>(node: T, original: Null<typescript.ts.Node>): T;
	static var createStatement: (expression: typescript.ts.Expression) -> typescript.ts.ExpressionStatement;
	static var updateStatement: (node: typescript.ts.ExpressionStatement, expression: typescript.ts.Expression) -> typescript.ts.ExpressionStatement;
	/**
	Visits a Node using the supplied visitor, possibly returning a new Node in its place.
	
	Visits a Node using the supplied visitor, possibly returning a new Node in its place.
	**/
	@:overload(function<T>(node: Null<T>, visitor: Null<typescript.ts.Visitor>, ?test: (node: typescript.ts.Node) -> Bool, ?lift: (node: typescript.ts.NodeArray<typescript.ts.Node>) -> T): Null<T> { })
	static function visitNode<T>(node: Null<T>, visitor: Null<typescript.ts.Visitor>, ?test: (node: typescript.ts.Node) -> Bool, ?lift: (node: typescript.ts.NodeArray<typescript.ts.Node>) -> T): T;
	/**
	Visits a NodeArray using the supplied visitor, possibly returning a new NodeArray in its place.
	
	Visits a NodeArray using the supplied visitor, possibly returning a new NodeArray in its place.
	**/
	@:overload(function<T>(nodes: Null<typescript.ts.NodeArray<T>>, visitor: typescript.ts.Visitor, ?test: (node: typescript.ts.Node) -> Bool, ?start: Float, ?count: Float): Null<typescript.ts.NodeArray<T>> { })
	static function visitNodes<T>(nodes: Null<typescript.ts.NodeArray<T>>, visitor: typescript.ts.Visitor, ?test: (node: typescript.ts.Node) -> Bool, ?start: Float, ?count: Float): typescript.ts.NodeArray<T>;
	/**
	Starts a new lexical environment and visits a statement list, ending the lexical environment
	and merging hoisted declarations upon completion.
	**/
	static function visitLexicalEnvironment(statements: typescript.ts.NodeArray<typescript.ts.Statement>, visitor: typescript.ts.Visitor, context: typescript.ts.TransformationContext, ?start: Float, ?ensureUseStrict: Bool): typescript.ts.NodeArray<typescript.ts.Statement>;
	/**
	Starts a new lexical environment and visits a parameter list, suspending the lexical
	environment upon completion.
	**/
	static function visitParameterList(nodes: Null<typescript.ts.NodeArray<typescript.ts.ParameterDeclaration>>, visitor: typescript.ts.Visitor, context: typescript.ts.TransformationContext, ?nodesVisitor: Any): typescript.ts.NodeArray<typescript.ts.ParameterDeclaration>;
	/**
	Resumes a suspended lexical environment and visits a function body, ending the lexical
	environment and merging hoisted declarations upon completion.
	
	Resumes a suspended lexical environment and visits a function body, ending the lexical
	environment and merging hoisted declarations upon completion.
	
	Resumes a suspended lexical environment and visits a concise body, ending the lexical
	environment and merging hoisted declarations upon completion.
	**/
	@:overload(function(node: Null<typescript.ts.FunctionBody>, visitor: typescript.ts.Visitor, context: typescript.ts.TransformationContext): Null<typescript.ts.FunctionBody> { })
	@:overload(function(node: typescript.ts.ConciseBody, visitor: typescript.ts.Visitor, context: typescript.ts.TransformationContext): typescript.ts.ConciseBody { })
	static function visitFunctionBody(node: typescript.ts.FunctionBody, visitor: typescript.ts.Visitor, context: typescript.ts.TransformationContext): typescript.ts.FunctionBody;
	/**
	Visits each child of a Node using the supplied visitor, possibly returning a new Node of the same kind in its place.
	
	Visits each child of a Node using the supplied visitor, possibly returning a new Node of the same kind in its place.
	**/
	@:overload(function<T>(node: Null<T>, visitor: typescript.ts.Visitor, context: typescript.ts.TransformationContext, ?nodesVisitor: Any, ?tokenVisitor: typescript.ts.Visitor): Null<T> { })
	static function visitEachChild<T>(node: T, visitor: typescript.ts.Visitor, context: typescript.ts.TransformationContext): T;
	static function getTsBuildInfoEmitOutputFilePath(options: typescript.ts.CompilerOptions): Null<String>;
	static function getOutputFileNames(commandLine: typescript.ts.ParsedCommandLine, inputFileName: String, ignoreCase: Bool): Array<String>;
	static function createPrinter(?printerOptions: typescript.ts.PrinterOptions, ?handlers: typescript.ts.PrintHandlers): typescript.ts.Printer;
	static function findConfigFile(searchPath: String, fileExists: (fileName: String) -> Bool, ?configName: String): Null<String>;
	static function resolveTripleslashReference(moduleName: String, containingFile: String): String;
	static function createCompilerHost(options: typescript.ts.CompilerOptions, ?setParentNodes: Bool): typescript.ts.CompilerHost;
	static function getPreEmitDiagnostics(program: typescript.ts.Program, ?sourceFile: typescript.ts.SourceFile, ?cancellationToken: typescript.ts.CancellationToken): Array<typescript.ts.Diagnostic>;
	static function formatDiagnostics(diagnostics: Array<typescript.ts.Diagnostic>, host: typescript.ts.FormatDiagnosticsHost): String;
	static function formatDiagnostic(diagnostic: typescript.ts.Diagnostic, host: typescript.ts.FormatDiagnosticsHost): String;
	static function formatDiagnosticsWithColorAndContext(diagnostics: Array<typescript.ts.Diagnostic>, host: typescript.ts.FormatDiagnosticsHost): String;
	static function flattenDiagnosticMessageText(diag: Null<haxe.extern.EitherType<String, typescript.ts.DiagnosticMessageChain>>, newLine: String, ?indent: Float): String;
	static function getConfigFileParsingDiagnostics(configFileParseResult: typescript.ts.ParsedCommandLine): Array<typescript.ts.Diagnostic>;
	/**
	Create a new 'Program' instance. A Program is an immutable collection of 'SourceFile's and a 'CompilerOptions'
	that represent a compilation unit.
	
	Creating a program proceeds from a set of root files, expanding the set of inputs by following imports and
	triple-slash-reference-path directives transitively. '@types' and triple-slash-reference-types are also pulled in.
	
	Create a new 'Program' instance. A Program is an immutable collection of 'SourceFile's and a 'CompilerOptions'
	that represent a compilation unit.
	
	Creating a program proceeds from a set of root files, expanding the set of inputs by following imports and
	triple-slash-reference-path directives transitively. '@types' and triple-slash-reference-types are also pulled in.
	**/
	@:overload(function(rootNames: Array<String>, options: typescript.ts.CompilerOptions, ?host: typescript.ts.CompilerHost, ?oldProgram: typescript.ts.Program, ?configFileParsingDiagnostics: Array<typescript.ts.Diagnostic>): typescript.ts.Program { })
	static function createProgram(createProgramOptions: typescript.ts.CreateProgramOptions): typescript.ts.Program;
	/**
	Returns the target config filename of a project reference.
	Note: The file might not exist.
	**/
	@:overload(function(host: typescript.ts.ResolveProjectReferencePathHost, ref: typescript.ts.ProjectReference): typescript.ts.ResolvedConfigFileName { })
	static function resolveProjectReferencePath(ref: typescript.ts.ProjectReference): typescript.ts.ResolvedConfigFileName;
	/**
	Create the builder to manage semantic diagnostics and cache them
	**/
	@:overload(function(rootNames: Null<Array<String>>, options: Null<typescript.ts.CompilerOptions>, ?host: typescript.ts.CompilerHost, ?oldProgram: typescript.ts.SemanticDiagnosticsBuilderProgram, ?configFileParsingDiagnostics: Array<typescript.ts.Diagnostic>, ?projectReferences: Array<typescript.ts.ProjectReference>): typescript.ts.SemanticDiagnosticsBuilderProgram { })
	static function createSemanticDiagnosticsBuilderProgram(newProgram: typescript.ts.Program, host: typescript.ts.BuilderProgramHost, ?oldProgram: typescript.ts.SemanticDiagnosticsBuilderProgram, ?configFileParsingDiagnostics: Array<typescript.ts.Diagnostic>): typescript.ts.SemanticDiagnosticsBuilderProgram;
	/**
	Create the builder that can handle the changes in program and iterate through changed files
	to emit the those files and manage semantic diagnostics cache as well
	**/
	@:overload(function(rootNames: Null<Array<String>>, options: Null<typescript.ts.CompilerOptions>, ?host: typescript.ts.CompilerHost, ?oldProgram: typescript.ts.EmitAndSemanticDiagnosticsBuilderProgram, ?configFileParsingDiagnostics: Array<typescript.ts.Diagnostic>, ?projectReferences: Array<typescript.ts.ProjectReference>): typescript.ts.EmitAndSemanticDiagnosticsBuilderProgram { })
	static function createEmitAndSemanticDiagnosticsBuilderProgram(newProgram: typescript.ts.Program, host: typescript.ts.BuilderProgramHost, ?oldProgram: typescript.ts.EmitAndSemanticDiagnosticsBuilderProgram, ?configFileParsingDiagnostics: Array<typescript.ts.Diagnostic>): typescript.ts.EmitAndSemanticDiagnosticsBuilderProgram;
	/**
	Creates a builder thats just abstraction over program and can be used with watch
	**/
	@:overload(function(rootNames: Null<Array<String>>, options: Null<typescript.ts.CompilerOptions>, ?host: typescript.ts.CompilerHost, ?oldProgram: typescript.ts.BuilderProgram, ?configFileParsingDiagnostics: Array<typescript.ts.Diagnostic>, ?projectReferences: Array<typescript.ts.ProjectReference>): typescript.ts.BuilderProgram { })
	static function createAbstractBuilder(newProgram: typescript.ts.Program, host: typescript.ts.BuilderProgramHost, ?oldProgram: typescript.ts.BuilderProgram, ?configFileParsingDiagnostics: Array<typescript.ts.Diagnostic>): typescript.ts.BuilderProgram;
	static function readBuilderProgram(compilerOptions: typescript.ts.CompilerOptions, host: typescript.ts.ReadBuildProgramHost): Null<typescript.ts.EmitAndSemanticDiagnosticsBuilderProgram>;
	static function createIncrementalCompilerHost(options: typescript.ts.CompilerOptions, ?system: typescript.ts.System): typescript.ts.CompilerHost;
	static function createIncrementalProgram<T>(/* <UNHANDLED ObjectBindingPattern>*/ bindingIdent: typescript.ts.IncrementalProgramOptions<T>): T;
	/**
	Create the watch compiler host for either configFile or fileNames and its options
	**/
	@:overload(function<T>(rootFiles: Array<String>, options: typescript.ts.CompilerOptions, system: typescript.ts.System, ?createProgram: typescript.ts.CreateProgram<T>, ?reportDiagnostic: typescript.ts.DiagnosticReporter, ?reportWatchStatus: typescript.ts.WatchStatusReporter, ?projectReferences: Array<typescript.ts.ProjectReference>): typescript.ts.WatchCompilerHostOfFilesAndCompilerOptions<T> { })
	static function createWatchCompilerHost<T>(configFileName: String, optionsToExtend: Null<typescript.ts.CompilerOptions>, system: typescript.ts.System, ?createProgram: typescript.ts.CreateProgram<T>, ?reportDiagnostic: typescript.ts.DiagnosticReporter, ?reportWatchStatus: typescript.ts.WatchStatusReporter): typescript.ts.WatchCompilerHostOfConfigFile<T>;
	/**
	Creates the watch from the host for root files and compiler options
	
	Creates the watch from the host for config file
	**/
	@:overload(function<T>(host: typescript.ts.WatchCompilerHostOfConfigFile<T>): typescript.ts.WatchOfConfigFile<T> { })
	static function createWatchProgram<T>(host: typescript.ts.WatchCompilerHostOfFilesAndCompilerOptions<T>): typescript.ts.WatchOfFilesAndCompilerOptions<T>;
	/**
	Create a function that reports watch status by writing to the system and handles the formating of the diagnostic
	**/
	static function createBuilderStatusReporter(system: typescript.ts.System, ?pretty: Bool): typescript.ts.DiagnosticReporter;
	static function createSolutionBuilderHost<T>(?system: typescript.ts.System, ?createProgram: typescript.ts.CreateProgram<T>, ?reportDiagnostic: typescript.ts.DiagnosticReporter, ?reportSolutionBuilderStatus: typescript.ts.DiagnosticReporter, ?reportErrorSummary: typescript.ts.ReportEmitErrorSummary): typescript.ts.SolutionBuilderHost<T>;
	static function createSolutionBuilderWithWatchHost<T>(?system: typescript.ts.System, ?createProgram: typescript.ts.CreateProgram<T>, ?reportDiagnostic: typescript.ts.DiagnosticReporter, ?reportSolutionBuilderStatus: typescript.ts.DiagnosticReporter, ?reportWatchStatus: typescript.ts.WatchStatusReporter): typescript.ts.SolutionBuilderWithWatchHost<T>;
	static function createSolutionBuilder<T>(host: typescript.ts.SolutionBuilderHost<T>, rootNames: Array<String>, defaultOptions: typescript.ts.BuildOptions): typescript.ts.SolutionBuilder<T>;
	static function createSolutionBuilderWithWatch<T>(host: typescript.ts.SolutionBuilderWithWatchHost<T>, rootNames: Array<String>, defaultOptions: typescript.ts.BuildOptions): typescript.ts.SolutionBuilder<T>;
	static function getDefaultFormatCodeSettings(?newLineCharacter: String): typescript.ts.FormatCodeSettings;
	/**
	The classifier is used for syntactic highlighting in editors via the TSServer
	**/
	static function createClassifier(): typescript.ts.Classifier;
	static function createDocumentRegistry(?useCaseSensitiveFileNames: Bool, ?currentDirectory: String): typescript.ts.DocumentRegistry;
	static function preProcessFile(sourceText: String, ?readImportFiles: Bool, ?detectJavaScriptImports: Bool): typescript.ts.PreProcessedFileInfo;
	static function transpileModule(input: String, transpileOptions: typescript.ts.TranspileOptions): typescript.ts.TranspileOutput;
	static function transpile(input: String, ?compilerOptions: typescript.ts.CompilerOptions, ?fileName: String, ?diagnostics: Array<typescript.ts.Diagnostic>, ?moduleName: String): String;
	static function toEditorSettings(options: haxe.extern.EitherType<typescript.ts.EditorOptions, typescript.ts.EditorSettings>): typescript.ts.EditorSettings;
	static function displayPartsToString(displayParts: Null<Array<typescript.ts.SymbolDisplayPart>>): String;
	static function getDefaultCompilerOptions(): typescript.ts.CompilerOptions;
	static function getSupportedCodeFixes(): Array<String>;
	static function createLanguageServiceSourceFile(fileName: String, scriptSnapshot: typescript.ts.IScriptSnapshot, scriptTarget: typescript.ts.ScriptTarget, version: String, setNodeParents: Bool, ?scriptKind: typescript.ts.ScriptKind): typescript.ts.SourceFile;
	static function updateLanguageServiceSourceFile(sourceFile: typescript.ts.SourceFile, scriptSnapshot: typescript.ts.IScriptSnapshot, version: String, textChangeRange: Null<typescript.ts.TextChangeRange>, ?aggressiveChecks: Bool): typescript.ts.SourceFile;
	static function createLanguageService(host: typescript.ts.LanguageServiceHost, ?documentRegistry: typescript.ts.DocumentRegistry, ?syntaxOnly: Bool): typescript.ts.LanguageService;
	/**
	Get the path of the default library files (lib.d.ts) as distributed with the typescript
	node package.
	The functionality is not supported if the ts module is consumed outside of a node module.
	**/
	static function getDefaultLibFilePath(options: typescript.ts.CompilerOptions): String;
	/**
	The version of the language service API
	**/
	static var servicesVersion: String;
	static var disableIncrementalParsing: Bool;
	/**
	Transform one or more nodes using the supplied transformers.
	**/
	static function transform<T>(source: haxe.extern.EitherType<T, Array<T>>, transformers: Array<typescript.ts.TransformerFactory<T>>, ?compilerOptions: typescript.ts.CompilerOptions): typescript.ts.TransformationResult<T>;
}

