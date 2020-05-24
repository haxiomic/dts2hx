package vscode;

/**
	Represents a text document, such as a source file. Text documents have
	[lines](#TextLine) and knowledge about an underlying resource like a file.
**/
typedef TextDocument = {
	/**
		The associated uri for this document.
		
		*Note* that most documents use the `file`-scheme, which means they are files on disk. However, **not** all documents are
		saved on disk and therefore the `scheme` must be checked before trying to access the underlying file or siblings on disk.
	**/
	final uri : Uri;
	/**
		The file system path of the associated resource. Shorthand
		notation for [TextDocument.uri.fsPath](#TextDocument.uri). Independent of the uri scheme.
	**/
	final fileName : String;
	/**
		Is this document representing an untitled file which has never been saved yet. *Note* that
		this does not mean the document will be saved to disk, use [`uri.scheme`](#Uri.scheme)
		to figure out where a document will be [saved](#FileSystemProvider), e.g. `file`, `ftp` etc.
	**/
	final isUntitled : Bool;
	/**
		The identifier of the language associated with this document.
	**/
	final languageId : String;
	/**
		The version number of this document (it will strictly increase after each
		change, including undo/redo).
	**/
	final version : Float;
	/**
		`true` if there are unpersisted changes.
	**/
	final isDirty : Bool;
	/**
		`true` if the document has been closed. A closed document isn't synchronized anymore
		and won't be re-used when the same resource is opened again.
	**/
	final isClosed : Bool;
	/**
		Save the underlying file.
	**/
	function save():global.Thenable<Bool>;
	/**
		The [end of line](#EndOfLine) sequence that is predominately
		used in this document.
	**/
	final eol : EndOfLine;
	/**
		The number of lines in this document.
	**/
	final lineCount : Float;
	/**
		Returns a text line denoted by the line number. Note
		that the returned object is *not* live and changes to the
		document are not reflected.
		
		Returns a text line denoted by the position. Note
		that the returned object is *not* live and changes to the
		document are not reflected.
		
		The position will be [adjusted](#TextDocument.validatePosition).
	**/
	@:overload(function(position:Position):TextLine { })
	function lineAt(line:Float):TextLine;
	/**
		Converts the position to a zero-based offset.
		
		The position will be [adjusted](#TextDocument.validatePosition).
	**/
	function offsetAt(position:Position):Float;
	/**
		Converts a zero-based offset to a position.
	**/
	function positionAt(offset:Float):Position;
	/**
		Get the text of this document. A substring can be retrieved by providing
		a range. The range will be [adjusted](#TextDocument.validateRange).
	**/
	function getText(?range:Range):String;
	/**
		Get a word-range at the given position. By default words are defined by
		common separators, like space, -, _, etc. In addition, per language custom
		[word definitions](#LanguageConfiguration.wordPattern) can be defined. It
		is also possible to provide a custom regular expression.
		
		* *Note 1:* A custom regular expression must not match the empty string and
		if it does, it will be ignored.
		* *Note 2:* A custom regular expression will fail to match multiline strings
		and in the name of speed regular expressions should not match words with
		spaces. Use [`TextLine.text`](#TextLine.text) for more complex, non-wordy, scenarios.
		
		The position will be [adjusted](#TextDocument.validatePosition).
	**/
	function getWordRangeAtPosition(position:Position, ?regex:js.lib.RegExp):Null<Range>;
	/**
		Ensure a range is completely contained in this document.
	**/
	function validateRange(range:Range):Range;
	/**
		Ensure a position is contained in the range of this document.
	**/
	function validatePosition(position:Position):Position;
};