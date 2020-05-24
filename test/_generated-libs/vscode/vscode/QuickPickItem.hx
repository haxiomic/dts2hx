package vscode;

/**
	Represents an item that can be selected from
	a list of items.
**/
typedef QuickPickItem = {
	/**
		A human-readable string which is rendered prominent. Supports rendering of [theme icons](#ThemeIcon) via
		the `$(<name>)`-syntax.
	**/
	var label : String;
	/**
		A human-readable string which is rendered less prominent in the same line. Supports rendering of
		[theme icons](#ThemeIcon) via the `$(<name>)`-syntax.
	**/
	@:optional
	var description : String;
	/**
		A human-readable string which is rendered less prominent in a separate line. Supports rendering of
		[theme icons](#ThemeIcon) via the `$(<name>)`-syntax.
	**/
	@:optional
	var detail : String;
	/**
		Optional flag indicating if this item is picked initially.
		(Only honored when the picker allows multiple selections.)
	**/
	@:optional
	var picked : Bool;
	/**
		Always show this item.
	**/
	@:optional
	var alwaysShow : Bool;
};