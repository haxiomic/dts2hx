package express;
typedef NextFunction = {
	@:overload(function(deferToNext:String):Void { })
	@:selfCall
	function call(?err:Dynamic):Void;
};