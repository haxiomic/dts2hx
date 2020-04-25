package node.repl;
extern interface REPLCommand {
	/**
		Help text to be displayed when `.help` is entered.
	**/
	@:optional
	var help : Null<String>;
	/**
		The function to execute, optionally accepting a single string argument.
	**/
	var action : (text:String) -> Void;
}