package typescript.ts;


/**
Generated from: test-definitions/typescript/typescript-extended.d.ts:5018:5
**/

typedef LanguageService = {
	function cleanupSemanticCache(): Void;
	function getSyntacticDiagnostics(fileName: String): Array<typescript.ts.DiagnosticWithLocation>;
	/**
	The first time this is called, it will return global diagnostics (no location).
	**/
	function getSemanticDiagnostics(fileName: String): Array<typescript.ts.Diagnostic>;
	function getSuggestionDiagnostics(fileName: String): Array<typescript.ts.DiagnosticWithLocation>;
	function getCompilerOptionsDiagnostics(): Array<typescript.ts.Diagnostic>;
	function getSyntacticClassifications(fileName: String, span: typescript.ts.TextSpan): Array<typescript.ts.ClassifiedSpan>;
	function getSemanticClassifications(fileName: String, span: typescript.ts.TextSpan): Array<typescript.ts.ClassifiedSpan>;
	function getEncodedSyntacticClassifications(fileName: String, span: typescript.ts.TextSpan): typescript.ts.Classifications;
	function getEncodedSemanticClassifications(fileName: String, span: typescript.ts.TextSpan): typescript.ts.Classifications;
	function getCompletionsAtPosition(fileName: String, position: Float, options: Null<typescript.ts.GetCompletionsAtPositionOptions>): Null<typescript.ts.WithMetadata<typescript.ts.CompletionInfo>>;
	function getCompletionEntryDetails(fileName: String, position: Float, name: String, formatOptions: Null<haxe.extern.EitherType<typescript.ts.FormatCodeOptions, typescript.ts.FormatCodeSettings>>, source: Null<String>, preferences: Null<typescript.ts.UserPreferences>): Null<typescript.ts.CompletionEntryDetails>;
	function getCompletionEntrySymbol(fileName: String, position: Float, name: String, source: Null<String>): Null<typescript.ts.Symbol>;
	function getQuickInfoAtPosition(fileName: String, position: Float): Null<typescript.ts.QuickInfo>;
	function getNameOrDottedNameSpan(fileName: String, startPos: Float, endPos: Float): Null<typescript.ts.TextSpan>;
	function getBreakpointStatementAtPosition(fileName: String, position: Float): Null<typescript.ts.TextSpan>;
	function getSignatureHelpItems(fileName: String, position: Float, options: Null<typescript.ts.SignatureHelpItemsOptions>): Null<typescript.ts.SignatureHelpItems>;
	function getRenameInfo(fileName: String, position: Float, ?options: typescript.ts.RenameInfoOptions): typescript.ts.RenameInfo;
	function findRenameLocations(fileName: String, position: Float, findInStrings: Bool, findInComments: Bool, ?providePrefixAndSuffixTextForRename: Bool): Null<Array<typescript.ts.RenameLocation>>;
	function getSmartSelectionRange(fileName: String, position: Float): typescript.ts.SelectionRange;
	function getDefinitionAtPosition(fileName: String, position: Float): Null<Array<typescript.ts.DefinitionInfo>>;
	function getDefinitionAndBoundSpan(fileName: String, position: Float): Null<typescript.ts.DefinitionInfoAndBoundSpan>;
	function getTypeDefinitionAtPosition(fileName: String, position: Float): Null<Array<typescript.ts.DefinitionInfo>>;
	function getImplementationAtPosition(fileName: String, position: Float): Null<Array<typescript.ts.ImplementationLocation>>;
	function getReferencesAtPosition(fileName: String, position: Float): Null<Array<typescript.ts.ReferenceEntry>>;
	function findReferences(fileName: String, position: Float): Null<Array<typescript.ts.ReferencedSymbol>>;
	function getDocumentHighlights(fileName: String, position: Float, filesToSearch: Array<String>): Null<Array<typescript.ts.DocumentHighlights>>;
	function getOccurrencesAtPosition(fileName: String, position: Float): Null<Array<typescript.ts.ReferenceEntry>>;
	function getNavigateToItems(searchValue: String, ?maxResultCount: Float, ?fileName: String, ?excludeDtsFiles: Bool): Array<typescript.ts.NavigateToItem>;
	function getNavigationBarItems(fileName: String): Array<typescript.ts.NavigationBarItem>;
	function getNavigationTree(fileName: String): typescript.ts.NavigationTree;
	function getOutliningSpans(fileName: String): Array<typescript.ts.OutliningSpan>;
	function getTodoComments(fileName: String, descriptors: Array<typescript.ts.TodoCommentDescriptor>): Array<typescript.ts.TodoComment>;
	function getBraceMatchingAtPosition(fileName: String, position: Float): Array<typescript.ts.TextSpan>;
	function getIndentationAtPosition(fileName: String, position: Float, options: haxe.extern.EitherType<typescript.ts.EditorOptions, typescript.ts.EditorSettings>): Float;
	function getFormattingEditsForRange(fileName: String, start: Float, end: Float, options: haxe.extern.EitherType<typescript.ts.FormatCodeOptions, typescript.ts.FormatCodeSettings>): Array<typescript.ts.TextChange>;
	function getFormattingEditsForDocument(fileName: String, options: haxe.extern.EitherType<typescript.ts.FormatCodeOptions, typescript.ts.FormatCodeSettings>): Array<typescript.ts.TextChange>;
	function getFormattingEditsAfterKeystroke(fileName: String, position: Float, key: String, options: haxe.extern.EitherType<typescript.ts.FormatCodeOptions, typescript.ts.FormatCodeSettings>): Array<typescript.ts.TextChange>;
	function getDocCommentTemplateAtPosition(fileName: String, position: Float): Null<typescript.ts.TextInsertion>;
	function isValidBraceCompletionAtPosition(fileName: String, position: Float, openingBrace: Float): Bool;
	/**
	This will return a defined result if the position is after the `>` of the opening tag, or somewhere in the text, of a JSXElement with no closing tag.
	Editors should call this after `>` is typed.
	**/
	function getJsxClosingTagAtPosition(fileName: String, position: Float): Null<typescript.ts.JsxClosingTagInfo>;
	function getSpanOfEnclosingComment(fileName: String, position: Float, onlyMultiLine: Bool): Null<typescript.ts.TextSpan>;
	@:optional
	function toLineColumnOffset(fileName: String, position: Float): typescript.ts.LineAndCharacter;
	function getCodeFixesAtPosition(fileName: String, start: Float, end: Float, errorCodes: Array<Float>, formatOptions: typescript.ts.FormatCodeSettings, preferences: typescript.ts.UserPreferences): Array<typescript.ts.CodeFixAction>;
	function getCombinedCodeFix(scope: typescript.ts.CombinedCodeFixScope, fixId: {}, formatOptions: typescript.ts.FormatCodeSettings, preferences: typescript.ts.UserPreferences): typescript.ts.CombinedCodeActions;
	@:overload(function(action: Array<typescript.ts.CodeActionCommand>, ?formatSettings: typescript.ts.FormatCodeSettings): js.lib.Promise<Array<typescript.ts.ApplyCodeActionCommandResult>> { })
	@:overload(function(action: haxe.extern.EitherType<typescript.ts.CodeActionCommand, Array<typescript.ts.CodeActionCommand>>, ?formatSettings: typescript.ts.FormatCodeSettings): js.lib.Promise<haxe.extern.EitherType<typescript.ts.ApplyCodeActionCommandResult, Array<typescript.ts.ApplyCodeActionCommandResult>>> { })
	@:overload(function(fileName: String, action: typescript.ts.CodeActionCommand): js.lib.Promise<typescript.ts.ApplyCodeActionCommandResult> { })
	@:overload(function(fileName: String, action: Array<typescript.ts.CodeActionCommand>): js.lib.Promise<Array<typescript.ts.ApplyCodeActionCommandResult>> { })
	@:overload(function(fileName: String, action: haxe.extern.EitherType<typescript.ts.CodeActionCommand, Array<typescript.ts.CodeActionCommand>>): js.lib.Promise<haxe.extern.EitherType<typescript.ts.ApplyCodeActionCommandResult, Array<typescript.ts.ApplyCodeActionCommandResult>>> { })
	function applyCodeActionCommand(action: typescript.ts.CodeActionCommand, ?formatSettings: typescript.ts.FormatCodeSettings): js.lib.Promise<typescript.ts.ApplyCodeActionCommandResult>;
	function getApplicableRefactors(fileName: String, positionOrRange: haxe.extern.EitherType<Float, typescript.ts.TextRange>, preferences: Null<typescript.ts.UserPreferences>): Array<typescript.ts.ApplicableRefactorInfo>;
	function getEditsForRefactor(fileName: String, formatOptions: typescript.ts.FormatCodeSettings, positionOrRange: haxe.extern.EitherType<Float, typescript.ts.TextRange>, refactorName: String, actionName: String, preferences: Null<typescript.ts.UserPreferences>): Null<typescript.ts.RefactorEditInfo>;
	function organizeImports(scope: typescript.ts.OrganizeImportsScope, formatOptions: typescript.ts.FormatCodeSettings, preferences: Null<typescript.ts.UserPreferences>): Array<typescript.ts.FileTextChanges>;
	function getEditsForFileRename(oldFilePath: String, newFilePath: String, formatOptions: typescript.ts.FormatCodeSettings, preferences: Null<typescript.ts.UserPreferences>): Array<typescript.ts.FileTextChanges>;
	function getEmitOutput(fileName: String, ?emitOnlyDtsFiles: Bool, ?forceDtsEmit: Bool): typescript.ts.EmitOutput;
	function getProgram(): Null<typescript.ts.Program>;
	function dispose(): Void;
}

