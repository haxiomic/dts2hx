package vscode;

/**
	A concrete [QuickInput](#QuickInput) to let the user input a text value.
	
	Note that in many cases the more convenient [window.showInputBox](#window.showInputBox)
	is easier to use. [window.createInputBox](#window.createInputBox) should be used
	when [window.showInputBox](#window.showInputBox) does not offer the required flexibility.
**/
typedef InputBox = {
	/**
		Current input value.
	**/
	var value : String;
	/**
		Optional placeholder in the filter text.
	**/
	var placeholder : Null<String>;
	/**
		If the input value should be hidden. Defaults to false.
	**/
	var password : Bool;
	/**
		An event signaling when the value has changed.
	**/
	function onDidChangeValue(listener:(e:String) -> Dynamic, ?thisArgs:Dynamic, ?disposables:Array<Disposable>):Disposable;
	/**
		An event signaling when the user indicated acceptance of the input value.
	**/
	function onDidAccept(listener:(e:ts.Undefined) -> Dynamic, ?thisArgs:Dynamic, ?disposables:Array<Disposable>):Disposable;
	/**
		Buttons for actions in the UI.
	**/
	var buttons : haxe.ds.ReadOnlyArray<QuickInputButton>;
	/**
		An event signaling when a button was triggered.
	**/
	function onDidTriggerButton(listener:(e:QuickInputButton) -> Dynamic, ?thisArgs:Dynamic, ?disposables:Array<Disposable>):Disposable;
	/**
		An optional prompt text providing some ask or explanation to the user.
	**/
	var prompt : Null<String>;
	/**
		An optional validation message indicating a problem with the current input value.
	**/
	var validationMessage : Null<String>;
	/**
		An optional title.
	**/
	var title : Null<String>;
	/**
		An optional current step count.
	**/
	var step : Null<Float>;
	/**
		An optional total step count.
	**/
	var totalSteps : Null<Float>;
	/**
		If the UI should allow for user input. Defaults to true.
		
		Change this to false, e.g., while validating user input or
		loading data for the next step in user input.
	**/
	var enabled : Bool;
	/**
		If the UI should show a progress indicator. Defaults to false.
		
		Change this to true, e.g., while loading more data or validating
		user input.
	**/
	var busy : Bool;
	/**
		If the UI should stay open even when loosing UI focus. Defaults to false.
	**/
	var ignoreFocusOut : Bool;
	/**
		Makes the input UI visible in its current configuration. Any other input
		UI will first fire an [QuickInput.onDidHide](#QuickInput.onDidHide) event.
	**/
	function show():Void;
	/**
		Hides this input UI. This will also fire an [QuickInput.onDidHide](#QuickInput.onDidHide)
		event.
	**/
	function hide():Void;
	/**
		An event signaling when this input UI is hidden.
		
		There are several reasons why this UI might have to be hidden and
		the extension will be notified through [QuickInput.onDidHide](#QuickInput.onDidHide).
		(Examples include: an explicit call to [QuickInput.hide](#QuickInput.hide),
		the user pressing Esc, some other input UI opening, etc.)
	**/
	dynamic function onDidHide(listener:(e:ts.Undefined) -> Dynamic, ?thisArgs:Dynamic, ?disposables:Array<Disposable>):Disposable;
	/**
		Dispose of this input UI and any associated resources. If it is still
		visible, it is first hidden. After this call the input UI is no longer
		functional and no additional methods or properties on it should be
		accessed. Instead a new input UI should be created.
	**/
	function dispose():Void;
};