package vscode;

/**
	A concrete [QuickInput](#QuickInput) to let the user pick an item from a
	list of items of type T. The items can be filtered through a filter text field and
	there is an option [canSelectMany](#QuickPick.canSelectMany) to allow for
	selecting multiple items.
	
	Note that in many cases the more convenient [window.showQuickPick](#window.showQuickPick)
	is easier to use. [window.createQuickPick](#window.createQuickPick) should be used
	when [window.showQuickPick](#window.showQuickPick) does not offer the required flexibility.
**/
typedef QuickPick<T> = {
	/**
		Current value of the filter text.
	**/
	var value : String;
	/**
		Optional placeholder in the filter text.
	**/
	var placeholder : Null<String>;
	/**
		An event signaling when the value of the filter text has changed.
	**/
	function onDidChangeValue(listener:(e:String) -> Dynamic, ?thisArgs:Dynamic, ?disposables:Array<Disposable>):Disposable;
	/**
		An event signaling when the user indicated acceptance of the selected item(s).
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
		Items to pick from.
	**/
	var items : haxe.ds.ReadOnlyArray<T>;
	/**
		If multiple items can be selected at the same time. Defaults to false.
	**/
	var canSelectMany : Bool;
	/**
		If the filter text should also be matched against the description of the items. Defaults to false.
	**/
	var matchOnDescription : Bool;
	/**
		If the filter text should also be matched against the detail of the items. Defaults to false.
	**/
	var matchOnDetail : Bool;
	/**
		Active items. This can be read and updated by the extension.
	**/
	var activeItems : haxe.ds.ReadOnlyArray<T>;
	/**
		An event signaling when the active items have changed.
	**/
	function onDidChangeActive(listener:(e:Array<T>) -> Dynamic, ?thisArgs:Dynamic, ?disposables:Array<Disposable>):Disposable;
	/**
		Selected items. This can be read and updated by the extension.
	**/
	var selectedItems : haxe.ds.ReadOnlyArray<T>;
	/**
		An event signaling when the selected items have changed.
	**/
	function onDidChangeSelection(listener:(e:Array<T>) -> Dynamic, ?thisArgs:Dynamic, ?disposables:Array<Disposable>):Disposable;
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