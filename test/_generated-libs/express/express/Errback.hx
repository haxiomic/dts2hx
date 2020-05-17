package express;
typedef Errback = {
	@:selfCall
	function call(err:ts.lib.Error):Void;
};