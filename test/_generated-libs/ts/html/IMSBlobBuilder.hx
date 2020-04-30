package ts.html;
extern typedef IMSBlobBuilder = {
	function append(data:Any, ?endings:String):Void;
	function getBlob(?contentType:String):IBlob;
};