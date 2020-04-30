package ts.html;
/**
	Holds useful CSS-related methods. No object with this interface are implemented: it contains only static methods and therefore is a utilitarian interface.
**/
extern typedef CSS = {
	function escape(value:String):String;
	function supports(property:String, ?value:String):Bool;
};