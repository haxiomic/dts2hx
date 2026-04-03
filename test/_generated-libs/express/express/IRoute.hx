package express;

@:forward
abstract IRoute(IRouteTypedef) from IRouteTypedef to IRouteTypedef {
	public var m_search(get, set):haxe.extern.Rest<express_serve_static_core.RequestHandler<express_serve_static_core.ParamsDictionary, Dynamic, Dynamic, qs.ParsedQs, haxe.DynamicAccess<Dynamic>>> -> IRoute;
	inline function get_m_search():haxe.extern.Rest<express_serve_static_core.RequestHandler<express_serve_static_core.ParamsDictionary, Dynamic, Dynamic, qs.ParsedQs, haxe.DynamicAccess<Dynamic>>> -> IRoute return js.Syntax.field(cast this, 'm-search');
	inline function set_m_search(v:haxe.extern.Rest<express_serve_static_core.RequestHandler<express_serve_static_core.ParamsDictionary, Dynamic, Dynamic, qs.ParsedQs, haxe.DynamicAccess<Dynamic>>> -> IRoute):haxe.extern.Rest<express_serve_static_core.RequestHandler<express_serve_static_core.ParamsDictionary, Dynamic, Dynamic, qs.ParsedQs, haxe.DynamicAccess<Dynamic>>> -> IRoute { js.Syntax.code("{0}[{1}] = {2}", this, 'm-search', v); return v; }
}
