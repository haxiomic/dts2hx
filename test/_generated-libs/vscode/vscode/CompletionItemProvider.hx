package vscode;

/**
	The completion item provider interface defines the contract between extensions and
	[IntelliSense](https://code.visualstudio.com/docs/editor/intellisense).
	
	Providers can delay the computation of the [`detail`](#CompletionItem.detail)
	and [`documentation`](#CompletionItem.documentation) properties by implementing the
	[`resolveCompletionItem`](#CompletionItemProvider.resolveCompletionItem)-function. However, properties that
	are needed for the initial sorting and filtering, like `sortText`, `filterText`, `insertText`, and `range`, must
	not be changed during resolve.
	
	Providers are asked for completions either explicitly by a user gesture or -depending on the configuration-
	implicitly when typing words or trigger characters.
**/
typedef CompletionItemProvider = {
	/**
		Provide completion items for the given position and document.
	**/
	function provideCompletionItems(document:TextDocument, position:Position, token:CancellationToken, context:CompletionContext):ProviderResult<ts.AnyOf2<CompletionList, Array<CompletionItem>>>;
	/**
		Given a completion item fill in more data, like [doc-comment](#CompletionItem.documentation)
		or [details](#CompletionItem.detail).
		
		The editor will only resolve a completion item once.
		
		*Note* that accepting a completion item will not wait for it to be resolved. Because of that [`insertText`](#CompletionItem.insertText),
		[`additionalTextEdits`](#CompletionItem.additionalTextEdits), and [`command`](#CompletionItem.command) should not
		be changed when resolving an item.
	**/
	@:optional
	function resolveCompletionItem(item:CompletionItem, token:CancellationToken):ProviderResult<CompletionItem>;
};