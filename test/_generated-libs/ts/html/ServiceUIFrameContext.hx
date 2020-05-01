package ts.html;
typedef ServiceUIFrameContext = {
	function getCachedFrameMessage(key:String):String;
	function postFrameMessage(key:String, data:String):Void;
};