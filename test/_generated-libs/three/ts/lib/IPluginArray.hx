package ts.lib;
/**
	Used to store a list of Plugin objects describing the available plugins; it's returned by the window.navigator.plugins property. The PluginArray is not a JavaScript array, but has the length property and supports accessing individual items using bracket notation (plugins[2]), as well as via item(index) and namedItem("name") methods.
**/
extern typedef IPluginArray = {
	final length : Float;
	function item(index:Float):Null<IPlugin>;
	function namedItem(name:String):Null<IPlugin>;
	function refresh(?reload:Bool):Void;
};