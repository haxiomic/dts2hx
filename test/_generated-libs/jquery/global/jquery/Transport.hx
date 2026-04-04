package global.jquery;

typedef Transport = {
	function send(headers:PlainObject<Dynamic>, completeCallback:global.jquery.transport.SuccessCallback):Void;
	function abort():Void;
};