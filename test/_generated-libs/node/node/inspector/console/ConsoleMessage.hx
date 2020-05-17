package node.inspector.console;

/**
	Console message.
**/
typedef ConsoleMessage = {
	/**
		Message source.
	**/
	var source : String;
	/**
		Message severity.
	**/
	var level : String;
	/**
		Message text.
	**/
	var text : String;
	/**
		URL of the message origin.
	**/
	@:optional
	var url : String;
	/**
		Line number in the resource that generated this message (1-based).
	**/
	@:optional
	var line : Float;
	/**
		Column number in the resource that generated this message (1-based).
	**/
	@:optional
	var column : Float;
};