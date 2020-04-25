package node.inspector.console;
/**
	Console message.
**/
extern interface ConsoleMessage {
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
	var url : Null<String>;
	/**
		Line number in the resource that generated this message (1-based).
	**/
	@:optional
	var line : Null<Float>;
	/**
		Column number in the resource that generated this message (1-based).
	**/
	@:optional
	var column : Null<Float>;
}