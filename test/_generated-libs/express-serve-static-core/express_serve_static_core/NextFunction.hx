package express_serve_static_core;

typedef NextFunction = {
	@:overload(function(deferToNext:String):Void { })
	@:selfCall
	function call(?err:Dynamic):Void;
};