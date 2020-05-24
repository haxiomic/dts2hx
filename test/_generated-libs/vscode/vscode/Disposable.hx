package vscode;

/**
	Represents a type which can release resources, such
	as event listening or a timer.
**/
@:jsRequire("vscode", "Disposable") extern class Disposable {
	/**
		Creates a new Disposable calling the provided function
		on dispose.
	**/
	function new(callOnDispose:haxe.Constraints.Function);
	/**
		Dispose this object.
	**/
	function dispose():Dynamic;
	static var prototype : Disposable;
	/**
		Combine many disposable-likes into one. Use this method
		when having objects with a dispose function which are not
		instances of Disposable.
	**/
	static function from(disposableLikes:haxe.extern.Rest<{ dynamic function dispose():Dynamic; }>):Disposable;
}