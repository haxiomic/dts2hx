@:jsRequire("body-parser") @valueModuleOnly extern class BodyParser {
	@:selfCall
	static function call(?options:Dynamic):connect.NextHandleFunction;
	/**
		Returns middleware that only parses json and only looks at requests
		where the Content-Type header matches the type option.
	**/
	static function json(?options:body_parser.OptionsJson):connect.NextHandleFunction;
	/**
		Returns middleware that parses all bodies as a Buffer and only looks at requests
		where the Content-Type header matches the type option.
	**/
	static function raw(?options:body_parser.Options):connect.NextHandleFunction;
	/**
		Returns middleware that parses all bodies as a string and only looks at requests
		where the Content-Type header matches the type option.
	**/
	static function text(?options:body_parser.OptionsText):connect.NextHandleFunction;
	/**
		Returns middleware that only parses urlencoded bodies and only looks at requests
		where the Content-Type header matches the type option
	**/
	static function urlencoded(?options:body_parser.OptionsUrlencoded):connect.NextHandleFunction;
}