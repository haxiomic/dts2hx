package ts.html;
/**
	The location (URL) of the object it is linked to. Changes done on it are reflected on the object it relates to. Both the Document and Window interface have such a linked Location, accessible via Document.location and Window.location respectively.
**/
typedef ILocation = {
	/**
		Returns a DOMStringList object listing the origins of the ancestor browsing contexts, from the parent browsing context to the top-level browsing context.
	**/
	final ancestorOrigins : ts.lib.IDOMStringList;
	/**
		Returns the Location object's URL's fragment (includes leading "#" if non-empty).
		
		Can be set, to navigate to the same URL with a changed fragment (ignores leading "#").
	**/
	var hash : String;
	/**
		Returns the Location object's URL's host and port (if different from the default port for the scheme).
		
		Can be set, to navigate to the same URL with a changed host and port.
	**/
	var host : String;
	/**
		Returns the Location object's URL's host.
		
		Can be set, to navigate to the same URL with a changed host.
	**/
	var hostname : String;
	/**
		Returns the Location object's URL.
		
		Can be set, to navigate to the given URL.
	**/
	var href : String;
	/**
		Returns the Location object's URL's origin.
	**/
	final origin : String;
	/**
		Returns the Location object's URL's path.
		
		Can be set, to navigate to the same URL with a changed path.
	**/
	var pathname : String;
	/**
		Returns the Location object's URL's port.
		
		Can be set, to navigate to the same URL with a changed port.
	**/
	var port : String;
	/**
		Returns the Location object's URL's scheme.
		
		Can be set, to navigate to the same URL with a changed scheme.
	**/
	var protocol : String;
	/**
		Returns the Location object's URL's query (includes leading "?" if non-empty).
		
		Can be set, to navigate to the same URL with a changed query (ignores leading "?").
	**/
	var search : String;
	/**
		Navigates to the given URL.
	**/
	function assign(url:String):Void;
	/**
		Reloads the current page.
	**/
	@:overload(function(forcedReload:Bool):Void { })
	function reload():Void;
	/**
		Removes the current page from the session history and navigates to the given URL.
	**/
	function replace(url:String):Void;
};