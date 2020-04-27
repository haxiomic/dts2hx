package js.html;
extern typedef WritableStreamDefaultControllerWriteCallback<W> = { @:selfCall
	function call(chunk:W, controller:WritableStreamDefaultController):haxe.extern.EitherType<Void, js.lib.PromiseLike<Void>>; };