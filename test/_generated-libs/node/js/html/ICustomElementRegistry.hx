package js.html;

/**
	The **`CustomElementRegistry`** interface provides methods for registering custom elements and querying registered elements.
	
	[MDN Reference](https://developer.mozilla.org/docs/Web/API/CustomElementRegistry)
**/
typedef ICustomElementRegistry = {
	/**
		The **`define()`** method of the CustomElementRegistry interface adds a definition for a custom element to the custom element registry, mapping its name to the constructor which will be used to create it.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CustomElementRegistry/define)
	**/
	function define(name:String, constructor:CustomElementConstructor, ?options:ElementDefinitionOptions):Void;
	/**
		The **`get()`** method of the previously-defined custom element.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CustomElementRegistry/get)
	**/
	function get(name:String):Null<CustomElementConstructor>;
	/**
		The **`getName()`** method of the previously-defined custom element.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CustomElementRegistry/getName)
	**/
	function getName(constructor:CustomElementConstructor):Null<String>;
	/**
		The **`upgrade()`** method of the elements in a Node subtree, even before they are connected to the main document.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CustomElementRegistry/upgrade)
	**/
	function upgrade(root:js.html.Node):Void;
	/**
		The **`whenDefined()`** method of the resolves when the named element is defined.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CustomElementRegistry/whenDefined)
	**/
	function whenDefined(name:String):js.lib.Promise<CustomElementConstructor>;
};