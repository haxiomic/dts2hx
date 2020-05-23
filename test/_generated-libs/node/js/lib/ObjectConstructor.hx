package js.lib;

typedef ObjectConstructor = {
	@:overload(function(value:Dynamic):Dynamic { })
	@:selfCall
	function call():Dynamic;
	/**
		A reference to the prototype for a class of objects.
	**/
	final prototype : Dynamic;
	/**
		Returns the prototype of an object.
	**/
	function getPrototypeOf(o:Dynamic):Dynamic;
	/**
		Gets the own property descriptor of the specified object.
		An own property descriptor is one that is defined directly on the object and is not inherited from the object's prototype.
	**/
	function getOwnPropertyDescriptor(o:Dynamic, p:ts.AnyOf3<String, Float, js.lib.Symbol>):Null<PropertyDescriptor>;
	/**
		Returns the names of the own properties of an object. The own properties of an object are those that are defined directly
		on that object, and are not inherited from the object's prototype. The properties of an object include both fields (objects) and functions.
	**/
	function getOwnPropertyNames(o:Dynamic):Array<String>;
	/**
		Creates an object that has the specified prototype or that has null prototype.
		
		Creates an object that has the specified prototype, and that optionally contains specified properties.
	**/
	@:overload(function(o:Null<Dynamic>, properties:PropertyDescriptorMap & ThisType<Dynamic>):Dynamic { })
	function create(o:Null<Dynamic>):Dynamic;
	/**
		Adds a property to an object, or modifies attributes of an existing property.
	**/
	function defineProperty(o:Dynamic, p:ts.AnyOf3<String, Float, js.lib.Symbol>, attributes:PropertyDescriptor & ThisType<Dynamic>):Dynamic;
	/**
		Adds one or more properties to an object, and/or modifies attributes of existing properties.
	**/
	function defineProperties(o:Dynamic, properties:PropertyDescriptorMap & ThisType<Dynamic>):Dynamic;
	/**
		Prevents the modification of attributes of existing properties, and prevents the addition of new properties.
	**/
	function seal<T>(o:T):T;
	/**
		Prevents the modification of existing property attributes and values, and prevents the addition of new properties.
		
		Prevents the modification of existing property attributes and values, and prevents the addition of new properties.
		
		Prevents the modification of existing property attributes and values, and prevents the addition of new properties.
	**/
	@:overload(function<T>(f:T):T { })
	@:overload(function<T>(o:T):T { })
	function freeze<T>(a:Array<T>):haxe.ds.ReadOnlyArray<T>;
	/**
		Prevents the addition of new properties to an object.
	**/
	function preventExtensions<T>(o:T):T;
	/**
		Returns true if existing property attributes cannot be modified in an object and new properties cannot be added to the object.
	**/
	function isSealed(o:Dynamic):Bool;
	/**
		Returns true if existing property attributes and values cannot be modified in an object, and new properties cannot be added to the object.
	**/
	function isFrozen(o:Dynamic):Bool;
	/**
		Returns a value that indicates whether new properties can be added to an object.
	**/
	function isExtensible(o:Dynamic):Bool;
	/**
		Returns the names of the enumerable string properties and methods of an object.
		
		Returns the names of the enumerable string properties and methods of an object.
	**/
	@:overload(function(o:{ }):Array<String> { })
	function keys(o:Dynamic):Array<String>;
	/**
		Copy the values of all of the enumerable own properties from one or more source objects to a
		target object. Returns the target object.
		
		Copy the values of all of the enumerable own properties from one or more source objects to a
		target object. Returns the target object.
		
		Copy the values of all of the enumerable own properties from one or more source objects to a
		target object. Returns the target object.
		
		Copy the values of all of the enumerable own properties from one or more source objects to a
		target object. Returns the target object.
	**/
	@:overload(function<T, U, V>(target:T, source1:U, source2:V):Dynamic { })
	@:overload(function<T, U, V, W>(target:T, source1:U, source2:V, source3:W):Dynamic { })
	@:overload(function(target:Dynamic, sources:haxe.extern.Rest<Dynamic>):Dynamic { })
	function assign<T, U>(target:T, source:U):Dynamic;
	/**
		Returns an array of all symbol properties found directly on object o.
	**/
	function getOwnPropertySymbols(o:Dynamic):Array<js.lib.Symbol>;
	/**
		Returns true if the values are the same value, false otherwise.
	**/
	function is(value1:Dynamic, value2:Dynamic):Bool;
	/**
		Sets the prototype of a specified object o to object proto or null. Returns the object o.
	**/
	function setPrototypeOf(o:Dynamic, proto:Null<Dynamic>):Dynamic;
	/**
		Returns an array of values of the enumerable properties of an object
		
		Returns an array of values of the enumerable properties of an object
	**/
	@:overload(function(o:{ }):Array<Dynamic> { })
	function values<T>(o:ts.AnyOf2<{ }, ArrayLike<T>>):Array<T>;
	/**
		Returns an array of key/values of the enumerable properties of an object
		
		Returns an array of key/values of the enumerable properties of an object
	**/
	@:overload(function(o:{ }):Array<ts.Tuple2<String, Dynamic>> { })
	function entries<T>(o:ts.AnyOf2<{ }, ArrayLike<T>>):Array<ts.Tuple2<String, T>>;
	/**
		Returns an object containing all own property descriptors of an object
	**/
	function getOwnPropertyDescriptors<T>(o:T):Dynamic;
};