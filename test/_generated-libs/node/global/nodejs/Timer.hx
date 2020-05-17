package global.nodejs;

typedef Timer = {
	function ref():Void;
	function refresh():Void;
	function unref():Void;
};