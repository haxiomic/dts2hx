package js.html;

/**
	The **`Worklet`** interface is a lightweight version of Web Workers and gives developers access to low-level parts of the rendering pipeline.
	Available only in secure contexts.
	
	[MDN Reference](https://developer.mozilla.org/docs/Web/API/Worklet)
**/
@:native("Worklet") extern class Worklet {
	function new();
	/**
		The **`addModule()`** method of the adds it to the current `Worklet`.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Worklet/addModule)
	**/
	function addModule(moduleURL:ts.AnyOf2<String, js.html.URL>, ?options:WorkletOptions):js.lib.Promise<ts.Undefined>;
	static var prototype : Worklet;
}