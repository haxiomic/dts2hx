package undici_types;

@:jsRequire("undici-types/content-type") @valueModuleOnly extern class ContentType {
	/**
		Parse a string to a
		{@link
		MIMEType
		}
		object. Returns `failure` if the string
		couldn't be parsed.
	**/
	static function parseMIMEType(input:String):ts.AnyOf2<MIMEType, String>;
	/**
		Convert a MIMEType object to a string.
	**/
	static function serializeAMimeType(mimeType:MIMEType):String;
}