package js.html;
extern interface MSFileSaver {
	function msSaveBlob(blob:Any, ?defaultName:String):Bool;
	function msSaveOrOpenBlob(blob:Any, ?defaultName:String):Bool;
}