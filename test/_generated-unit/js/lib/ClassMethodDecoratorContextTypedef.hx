package js.lib;

typedef ClassMethodDecoratorContextTypedef<This, Value:((args:haxe.extern.Rest<Any>) -> Dynamic)> = {
	/**
		The kind of class element that was decorated.
	**/
	final kind : String;
	/**
		The name of the decorated class element.
	**/
	final name : ts.AnyOf2<String, js.lib.Symbol>;
	/**
		A value indicating whether the class element is a static (`true`) or instance (`false`) element.
	**/
	@:native("static")
	final static_ : Bool;
	/**
		A value indicating whether the class element has a private name.
	**/
	@:native("private")
	final private_ : Bool;
	/**
		An object that can be used to access the current value of the class element at runtime.
	**/
	final access : {
		/**
			Determines whether an object has a property with the same name as the decorated element.
		**/
		function has(object:This):Bool;
		/**
			Gets the current value of the method from the provided object.
		**/
		function get(object:This):Value;
	};
	/**
		Adds a callback to be invoked either after static methods are defined but before
		static initializers are run (when decorating a `static` element), or before instance
		initializers are run (when decorating a non-`static` element).
	**/
	function addInitializer(initializer:() -> Void):Void;
	final metadata : Null<DecoratorMetadataObject>;
};