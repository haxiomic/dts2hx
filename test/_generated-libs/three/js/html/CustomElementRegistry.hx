package js.html;
@:native("CustomElementRegistry") @tsInterface extern class CustomElementRegistry {
	function new();
	function define(name:String, constructor:js.lib.Function, ?options:ElementDefinitionOptions):Void;
	function get(name:String):Any;
	function upgrade(root:Node):Void;
	function whenDefined(name:String):js.lib.Promise<Void>;
	static var prototype : CustomElementRegistry;
}