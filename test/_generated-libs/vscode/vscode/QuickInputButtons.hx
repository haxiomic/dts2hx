package vscode;

/**
	Predefined buttons for [QuickPick](#QuickPick) and [InputBox](#InputBox).
**/
@:jsRequire("vscode", "QuickInputButtons") extern class QuickInputButtons {
	private function new();
	static var prototype : QuickInputButtons;
	/**
		A back button for [QuickPick](#QuickPick) and [InputBox](#InputBox).
		
		When a navigation 'back' button is needed this one should be used for consistency.
		It comes with a predefined icon, tooltip and location.
	**/
	static final Back : QuickInputButton;
}