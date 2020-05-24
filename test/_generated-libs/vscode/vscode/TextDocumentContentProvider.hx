package vscode;

/**
	A text document content provider allows to add readonly documents
	to the editor, such as source from a dll or generated html from md.
	
	Content providers are [registered](#workspace.registerTextDocumentContentProvider)
	for a [uri-scheme](#Uri.scheme). When a uri with that scheme is to
	be [loaded](#workspace.openTextDocument) the content provider is
	asked.
**/
typedef TextDocumentContentProvider = {
	/**
		An event to signal a resource has changed.
	**/
	@:optional
	dynamic function onDidChange(listener:(e:Uri) -> Dynamic, ?thisArgs:Dynamic, ?disposables:Array<Disposable>):Disposable;
	/**
		Provide textual content for a given uri.
		
		The editor will use the returned string-content to create a readonly
		[document](#TextDocument). Resources allocated should be released when
		the corresponding document has been [closed](#workspace.onDidCloseTextDocument).
		
		**Note**: The contents of the created [document](#TextDocument) might not be
		identical to the provided text due to end-of-line-sequence normalization.
	**/
	function provideTextDocumentContent(uri:Uri, token:CancellationToken):ProviderResult<String>;
};