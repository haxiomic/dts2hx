package js.html;
/**
	Provides contains information about a MIME type associated with a particular plugin. NavigatorPlugins.mimeTypes returns an array of this object.
**/
@:native("MimeType") extern class MimeType {
	function new();
	/**
		Returns the MIME type's description.
	**/
	final description : String;
	/**
		Returns the Plugin object that implements this MIME type.
	**/
	final enabledPlugin : js.lib.IPlugin;
	/**
		Returns the MIME type's typical file extensions, in a comma-separated list.
	**/
	final suffixes : String;
	/**
		Returns the MIME type.
	**/
	final type : String;
	static var prototype : IMimeType;
}