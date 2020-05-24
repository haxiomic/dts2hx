package vscode;

/**
	An output channel is a container for readonly textual information.
	
	To get an instance of an `OutputChannel` use
	[createOutputChannel](#window.createOutputChannel).
**/
typedef OutputChannel = {
	/**
		The human-readable name of this output channel.
	**/
	final name : String;
	/**
		Append the given value to the channel.
	**/
	function append(value:String):Void;
	/**
		Append the given value and a line feed character
		to the channel.
	**/
	function appendLine(value:String):Void;
	/**
		Removes all output from the channel.
	**/
	function clear():Void;
	/**
		Reveal this channel in the UI.
		
		~~Reveal this channel in the UI.~~
	**/
	@:overload(function(?column:ViewColumn, ?preserveFocus:Bool):Void { })
	function show(?preserveFocus:Bool):Void;
	/**
		Hide this channel from the UI.
	**/
	function hide():Void;
	/**
		Dispose and free associated resources.
	**/
	function dispose():Void;
};