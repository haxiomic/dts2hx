package ts.html;
@:native("CustomElementRegistry") extern class CustomElementRegistry {
	function new();
	function define(name:String, constructor:ts.lib.Function, ?options:ElementDefinitionOptions):Void;
	function get(name:String):Dynamic;
	function upgrade(root:Node):Void;
	function whenDefined(name:String):ts.lib.Promise<Void>;
	static var prototype : CustomElementRegistry;
}