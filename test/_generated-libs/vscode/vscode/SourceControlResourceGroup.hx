package vscode;

/**
	A source control resource group is a collection of
	[source control resource states](#SourceControlResourceState).
**/
typedef SourceControlResourceGroup = {
	/**
		The id of this source control resource group.
	**/
	final id : String;
	/**
		The label of this source control resource group.
	**/
	var label : String;
	/**
		Whether this source control resource group is hidden when it contains
		no [source control resource states](#SourceControlResourceState).
	**/
	@:optional
	var hideWhenEmpty : Bool;
	/**
		This group's collection of
		[source control resource states](#SourceControlResourceState).
	**/
	var resourceStates : Array<SourceControlResourceState>;
	/**
		Dispose this source control resource group.
	**/
	function dispose():Void;
};