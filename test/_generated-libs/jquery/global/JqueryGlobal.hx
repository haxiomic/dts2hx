package global;

@:native("") extern class JqueryGlobal {
	static var jQuery : global.JQueryStatic;
	@:native("$")
	static var Dollar : global.JQueryStatic;
}