package node.inspector.debugger;

typedef ScriptParsedEventDataType = {
	/**
		Identifier of the script parsed.
	**/
	var scriptId : String;
	/**
		URL or name of the script parsed (if any).
	**/
	var url : String;
	/**
		Line offset of the script within the resource with given URL (for script tags).
	**/
	var startLine : Float;
	/**
		Column offset of the script within the resource with given URL.
	**/
	var startColumn : Float;
	/**
		Last line of the script.
	**/
	var endLine : Float;
	/**
		Length of the last line of the script.
	**/
	var endColumn : Float;
	/**
		Specifies script creation context.
	**/
	var executionContextId : Float;
	/**
		Content hash of the script.
	**/
	var hash : String;
	/**
		Embedder-specific auxiliary data.
	**/
	@:optional
	var executionContextAuxData : { };
	/**
		True, if this script is generated as a result of the live edit operation.
	**/
	@:optional
	var isLiveEdit : Bool;
	/**
		URL of source map associated with script (if any).
	**/
	@:optional
	var sourceMapURL : String;
	/**
		True, if this script has sourceURL.
	**/
	@:optional
	var hasSourceURL : Bool;
	/**
		True, if this script is ES6 module.
	**/
	@:optional
	var isModule : Bool;
	/**
		This script length.
	**/
	@:optional
	var length : Float;
	/**
		JavaScript top stack frame of where the script parsed event was triggered if available.
	**/
	@:optional
	var stackTrace : node.inspector.runtime.StackTrace;
};