package express;
typedef Send = {
	@:selfCall
	function call(?body:Dynamic):express_serve_static_core.Response<Dynamic>;
};