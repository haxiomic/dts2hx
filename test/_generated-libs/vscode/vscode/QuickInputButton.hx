package vscode;

/**
	Button for an action in a [QuickPick](#QuickPick) or [InputBox](#InputBox).
**/
typedef QuickInputButton = {
	/**
		Icon for the button.
	**/
	final iconPath : ts.AnyOf3<Uri, ThemeIcon, {
		var light : Uri;
		var dark : Uri;
	}>;
	/**
		An optional tooltip.
	**/
	@:optional
	final tooltip : String;
};