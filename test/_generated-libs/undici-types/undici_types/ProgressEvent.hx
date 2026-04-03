package undici_types;

@:jsRequire("undici-types", "ProgressEvent") extern class ProgressEvent {
	function new(type:String, ?eventInitDict:ProgressEventInit);
	var __proto__ : Dynamic;
	final lengthComputable : Bool;
	final loaded : Float;
	final total : Float;
	static var prototype : ProgressEvent;
}