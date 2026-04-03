package express_serve_static_core;

@:forward
abstract IRoute<Route:(ts.AnyOf2<String, js.lib.RegExp>)>(IRouteTypedef<Route:(ts.AnyOf2<String, js.lib.RegExp>)>) from IRouteTypedef<Route:(ts.AnyOf2<String, js.lib.RegExp>)> to IRouteTypedef<Route:(ts.AnyOf2<String, js.lib.RegExp>)> {
	public var m_search(get, set):haxe.extern.Rest<RequestHandler<RouteParameters<Route>, Dynamic, Dynamic, qs.ParsedQs, haxe.DynamicAccess<Dynamic>>> -> IRoute<Route>;
	inline function get_m_search():haxe.extern.Rest<RequestHandler<RouteParameters<Route>, Dynamic, Dynamic, qs.ParsedQs, haxe.DynamicAccess<Dynamic>>> -> IRoute<Route> return js.Syntax.field(cast this, 'm-search');
	inline function set_m_search(v:haxe.extern.Rest<RequestHandler<RouteParameters<Route>, Dynamic, Dynamic, qs.ParsedQs, haxe.DynamicAccess<Dynamic>>> -> IRoute<Route>):haxe.extern.Rest<RequestHandler<RouteParameters<Route>, Dynamic, Dynamic, qs.ParsedQs, haxe.DynamicAccess<Dynamic>>> -> IRoute<Route> { js.Syntax.code("{0}[{1}] = {2}", this, 'm-search', v); return v; }
}
