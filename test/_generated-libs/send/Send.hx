/**
	Create a new SendStream for the given path to send to a res.
	The req is the Node.js HTTP request and the path is a urlencoded path to send (urlencoded, not the actual file-system path).
**/
@:jsRequire("send") extern class Send {
	/**
		Create a new SendStream for the given path to send to a res.
		The req is the Node.js HTTP request and the path is a urlencoded path to send (urlencoded, not the actual file-system path).
	**/
	@:selfCall
	static function call(req:node.stream.stream.Readable, path:String, ?options:send.SendOptions):send.SendStream;
}