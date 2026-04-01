package unit.typedef_patterns.typedefpatterns;

typedef WidgetFactory = {
	var defaultName : String;
	function create(name:String):Widget;
};