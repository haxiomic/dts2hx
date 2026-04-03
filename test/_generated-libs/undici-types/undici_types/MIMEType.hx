package undici_types;

typedef MIMEType = {
	var type : String;
	var subtype : String;
	var parameters : js.lib.Map<String, String>;
	var essence : String;
};