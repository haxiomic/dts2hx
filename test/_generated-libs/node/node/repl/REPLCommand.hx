package node.repl;

typedef REPLCommand = {
	/**
		Help text to be displayed when `.help` is entered.
	**/
	@:optional
	var help : String;
	/**
		The function to execute, optionally accepting a single string argument.
	**/
	dynamic function action(text:String):Void;
};