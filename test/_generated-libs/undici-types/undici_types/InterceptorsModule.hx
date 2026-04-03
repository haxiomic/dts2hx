package undici_types;

@:jsRequire("undici-types", "interceptors") @valueModuleOnly extern class InterceptorsModule {
	static function createRedirectInterceptor(opts:undici_types.interceptors.RedirectInterceptorOpts):undici_types.dispatcher.DispatcherComposeInterceptor;
	static function dump(?opts:undici_types.interceptors.DumpInterceptorOpts):undici_types.dispatcher.DispatcherComposeInterceptor;
	static function retry(?opts:undici_types.retryhandler.RetryOptions):undici_types.dispatcher.DispatcherComposeInterceptor;
	static function redirect(?opts:undici_types.interceptors.RedirectInterceptorOpts):undici_types.dispatcher.DispatcherComposeInterceptor;
	static function responseError(?opts:undici_types.interceptors.ResponseErrorInterceptorOpts):undici_types.dispatcher.DispatcherComposeInterceptor;
}