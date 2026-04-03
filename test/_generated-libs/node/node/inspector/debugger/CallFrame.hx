package node.inspector.debugger;

/**
	JavaScript call frame. Array of call frames form the call stack.
**/
@:forward
abstract CallFrame(CallFrameTypedef) from CallFrameTypedef to CallFrameTypedef {
	/**
		<code>this</code> object for this call frame.
	**/
	public var this_(get, set):node.inspector.runtime.RemoteObject;
	inline function get_this_():node.inspector.runtime.RemoteObject return js.Syntax.field(cast this, 'this');
	inline function set_this_(v:node.inspector.runtime.RemoteObject):node.inspector.runtime.RemoteObject { js.Syntax.code("{0}[{1}] = {2}", this, 'this', v); return v; }
}
