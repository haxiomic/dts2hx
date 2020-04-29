package js.html;
@:native("CustomElementRegistry") extern class CustomElementRegistry {
	function new();
	function define(name:String, constructor:js.lib.IFunction, ?options:ElementDefinitionOptions):Void;
	function get(name:String):Any;
	function upgrade(root:INode):Void;
	function whenDefined(name:String):js.lib.IPromise<Void>;
	static var prototype : ICustomElementRegistry;
}