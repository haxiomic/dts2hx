package vscode;

/**
	Options to configure the behavior of the input box UI.
**/
typedef InputBoxOptions = {
	/**
		The value to prefill in the input box.
	**/
	@:optional
	var value : String;
	/**
		Selection of the prefilled [`value`](#InputBoxOptions.value). Defined as tuple of two number where the
		first is the inclusive start index and the second the exclusive end index. When `undefined` the whole
		word will be selected, when empty (start equals end) only the cursor will be set,
		otherwise the defined range will be selected.
	**/
	@:optional
	var valueSelection : ts.Tuple2<Float, Float>;
	/**
		The text to display underneath the input box.
	**/
	@:optional
	var prompt : String;
	/**
		An optional string to show as placeholder in the input box to guide the user what to type.
	**/
	@:optional
	var placeHolder : String;
	/**
		Controls if a password input is shown. Password input hides the typed text.
	**/
	@:optional
	var password : Bool;
	/**
		Set to `true` to keep the input box open when focus moves to another part of the editor or to another window.
	**/
	@:optional
	var ignoreFocusOut : Bool;
	/**
		An optional function that will be called to validate input and to give a hint
		to the user.
	**/
	@:optional
	function validateInput(value:String):Null<ts.AnyOf2<String, global.Thenable<Null<String>>>>;
};