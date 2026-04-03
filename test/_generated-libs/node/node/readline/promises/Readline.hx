package node.readline.promises;

@:jsRequire("readline", "promises.Readline") extern class Readline {
	function new(stream:global.nodejs.WritableStream, ?options:{ @:optional var autoCommit : Bool; });
	/**
		The `rl.clearLine()` method adds to the internal list of pending action an
		action that clears current line of the associated `stream` in a specified
		direction identified by `dir`.
		Call `rl.commit()` to see the effect of this method, unless `autoCommit: true` was passed to the constructor.
	**/
	function clearLine(dir:node.readline.Direction):Readline;
	/**
		The `rl.clearScreenDown()` method adds to the internal list of pending action an
		action that clears the associated stream from the current position of the
		cursor down.
		Call `rl.commit()` to see the effect of this method, unless `autoCommit: true` was passed to the constructor.
	**/
	function clearScreenDown():Readline;
	/**
		The `rl.commit()` method sends all the pending actions to the associated `stream` and clears the internal list of pending actions.
	**/
	function commit():js.lib.Promise<ts.Undefined>;
	/**
		The `rl.cursorTo()` method adds to the internal list of pending action an action
		that moves cursor to the specified position in the associated `stream`.
		Call `rl.commit()` to see the effect of this method, unless `autoCommit: true` was passed to the constructor.
	**/
	function cursorTo(x:Float, ?y:Float):Readline;
	/**
		The `rl.moveCursor()` method adds to the internal list of pending action an
		action that moves the cursor _relative_ to its current position in the
		associated `stream`.
		Call `rl.commit()` to see the effect of this method, unless `autoCommit: true` was passed to the constructor.
	**/
	function moveCursor(dx:Float, dy:Float):Readline;
	/**
		The `rl.rollback` methods clears the internal list of pending actions without
		sending it to the associated `stream`.
	**/
	function rollback():Readline;
	static var prototype : Readline;
}