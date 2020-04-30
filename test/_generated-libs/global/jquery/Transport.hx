package global.jquery;
extern typedef Transport = {
	function send(headers:PlainObject<Any>, completeCallback:(status:Float, statusText:String, ?responses:PlainObject<Any>, ?headers:String) -> Void):Void;
	function abort():Void;
};