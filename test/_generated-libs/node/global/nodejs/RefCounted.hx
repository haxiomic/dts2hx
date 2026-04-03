package global.nodejs;

typedef RefCounted = {
	function ref():RefCounted;
	function unref():RefCounted;
};