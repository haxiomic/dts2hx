package vscode;

/**
	Represents information about programming constructs like variables, classes,
	interfaces etc.
**/
@:jsRequire("vscode", "SymbolInformation") extern class SymbolInformation {
	/**
		Creates a new symbol information object.
	**/
	@:overload(function(name:String, kind:SymbolKind, range:Range, ?uri:Uri, ?containerName:String):SymbolInformation { })
	function new(name:String, kind:SymbolKind, containerName:String, location:Location);
	/**
		The name of this symbol.
	**/
	var name : String;
	/**
		The name of the symbol containing this symbol.
	**/
	var containerName : String;
	/**
		The kind of this symbol.
	**/
	var kind : SymbolKind;
	/**
		Tags for this symbol.
	**/
	@:optional
	var tags : haxe.ds.ReadOnlyArray<Int>;
	/**
		The location of this symbol.
	**/
	var location : Location;
	static var prototype : SymbolInformation;
}