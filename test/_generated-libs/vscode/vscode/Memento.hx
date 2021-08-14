package vscode;

/**
	A memento represents a storage utility. It can store and retrieve
	values.
**/
typedef Memento = {
	/**
		Return a value.
		
		Return a value.
	**/
	@:overload(function<T>(key:String, defaultValue:T):T { })
	function get<T>(key:String):Null<T>;
	/**
		Store a value. The value must be JSON-stringifyable.
	**/
	function update(key:String, value:Dynamic):global.Thenable<ts.Undefined>;
};