package js.lib;

/**
	Context provided to a class method decorator.
**/
@:forward
abstract ClassMethodDecoratorContext<This, Value:((args:haxe.extern.Rest<Any>) -> Dynamic)>(ClassMethodDecoratorContext_<This, Value:((args:haxe.extern.Rest<Any>) -> Dynamic)>) from ClassMethodDecoratorContext_<This, Value:((args:haxe.extern.Rest<Any>) -> Dynamic)> to ClassMethodDecoratorContext_<This, Value:((args:haxe.extern.Rest<Any>) -> Dynamic)> {
	/**
		A value indicating whether the class element is a static (`true`) or instance (`false`) element.
	**/
	public var static_(get, set):Bool;
	inline function get_static_():Bool return js.Syntax.field(cast this, 'static');
	inline function set_static_(v:Bool):Bool { js.Syntax.code("{0}[{1}] = {2}", this, 'static', v); return v; }
	/**
		A value indicating whether the class element has a private name.
	**/
	public var private_(get, set):Bool;
	inline function get_private_():Bool return js.Syntax.field(cast this, 'private');
	inline function set_private_(v:Bool):Bool { js.Syntax.code("{0}[{1}] = {2}", this, 'private', v); return v; }
}
