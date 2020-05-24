package vscode;

/**
	A status bar item is a status bar contribution that can
	show text and icons and run a command on click.
**/
typedef StatusBarItem = {
	/**
		The alignment of this item.
	**/
	final alignment : StatusBarAlignment;
	/**
		The priority of this item. Higher value means the item should
		be shown more to the left.
	**/
	@:optional
	final priority : Float;
	/**
		The text to show for the entry. You can embed icons in the text by leveraging the syntax:
		
		`My text $(icon-name) contains icons like $(icon-name) this one.`
		
		Where the icon-name is taken from the [codicon](https://microsoft.github.io/vscode-codicons/dist/codicon.html) icon set, e.g.
		`light-bulb`, `thumbsup`, `zap` etc.
	**/
	var text : String;
	/**
		The tooltip text when you hover over this entry.
	**/
	var tooltip : Null<String>;
	/**
		The foreground color for this entry.
	**/
	var color : Null<ts.AnyOf2<String, ThemeColor>>;
	/**
		[`Command`](#Command) or identifier of a command to run on click.
		
		The command must be [known](#commands.getCommands).
		
		Note that if this is a [`Command`](#Command) object, only the [`command`](#Command.command) and [`arguments`](#Command.arguments)
		are used by VS Code.
	**/
	var command : Null<ts.AnyOf2<String, Command>>;
	/**
		Shows the entry in the status bar.
	**/
	function show():Void;
	/**
		Hide the entry in the status bar.
	**/
	function hide():Void;
	/**
		Dispose and free associated resources. Call
		[hide](#StatusBarItem.hide).
	**/
	function dispose():Void;
};