package global.jquery;
typedef Transport = {
	function send(headers:PlainObject<Dynamic>, completeCallback:(status:Float, statusText:String, ?responses:PlainObject<Dynamic>, ?headers:String) -> Void):Void;
	function abort():Void;
};