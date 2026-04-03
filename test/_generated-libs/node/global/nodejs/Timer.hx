package global.nodejs;

typedef Timer = {
	function hasRef():Bool;
	function refresh():Timer;
	function ref():Timer;
	function unref():Timer;
};