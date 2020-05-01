package ts.html;
extern typedef IMSBlobBuilder = {
	function append(data:Dynamic, ?endings:String):Void;
	function getBlob(?contentType:String):IBlob;
};