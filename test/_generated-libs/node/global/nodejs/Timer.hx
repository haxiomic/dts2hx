package global.nodejs;
extern interface Timer {
	function ref():Void;
	function refresh():Void;
	function unref():Void;
}