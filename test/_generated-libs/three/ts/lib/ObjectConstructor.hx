package ts.lib;
extern typedef ObjectConstructor = {
	@:overload(function(value:Any):Any { })
	@:selfCall
	function call():Any;
	/**
		A reference to the prototype for a class of objects.
	**/
	final prototype : IObject;
	/**
		Returns the prototype of an object.
	**/
	function getPrototypeOf(o:Any):Any;
	/**
		Gets the own property descriptor of the specified object.
		An own property descriptor is one that is defined directly on the object and is not inherited from the object's prototype.
	**/
	function getOwnPropertyDescriptor(o:Any, p:haxe.extern.EitherType<String, haxe.extern.EitherType<Float, js.lib.Symbol>>):Null<PropertyDescriptor>;
	/**
		Returns the names of the own properties of an object. The own properties of an object are those that are defined directly
		on that object, and are not inherited from the object's prototype. The properties of an object include both fields (objects) and functions.
	**/
	function getOwnPropertyNames(o:Any):std.Array<String>;
	/**
		Creates an object that has the specified prototype or that has null prototype.
		
		Creates an object that has the specified prototype, and that optionally contains specified properties.
	**/
	@:overload(function(o:Null<Any>, properties:PropertyDescriptorMap & ThisType<Any>):Any { })
	function create(o:Null<Any>):Any;
	/**
		Adds a property to an object, or modifies attributes of an existing property.
	**/
	function defineProperty(o:Any, p:haxe.extern.EitherType<String, haxe.extern.EitherType<Float, js.lib.Symbol>>, attributes:PropertyDescriptor & ThisType<Any>):Any;
	/**
		Adds one or more properties to an object, and/or modifies attributes of existing properties.
	**/
	function defineProperties(o:Any, properties:PropertyDescriptorMap & ThisType<Any>):Any;
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
	@:overload(function<T>(o:T):Any { })
	function freeze<T>(a:std.Array<T>):ReadonlyArray<T>;
	/**
		Prevents the addition of new properties to an object.
	**/
	function preventExtensions<T>(o:T):T;
	/**
		Returns true if existing property attributes cannot be modified in an object and new properties cannot be added to the object.
	**/
	function isSealed(o:Any):Bool;
	/**
		Returns true if existing property attributes and values cannot be modified in an object, and new properties cannot be added to the object.
	**/
	function isFrozen(o:Any):Bool;
	/**
		Returns a value that indicates whether new properties can be added to an object.
	**/
	function isExtensible(o:Any):Bool;
	/**
		Returns the names of the enumerable string properties and methods of an object.
		
		Returns the names of the enumerable string properties and methods of an object.
	**/
	@:overload(function(o:{ }):std.Array<String> { })
	function keys(o:Any):std.Array<String>;
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
	@:overload(function<T, U, V>(target:T, source1:U, source2:V):{ } { })
	@:overload(function<T, U, V, W>(target:T, source1:U, source2:V, source3:W):{ } { })
	@:overload(function(target:Any, sources:std.Array<Any>):Any { })
	function assign<T, U>(target:T, source:U):{ };
	/**
		Returns an array of all symbol properties found directly on object o.
	**/
	function getOwnPropertySymbols(o:Any):std.Array<js.lib.Symbol>;
	/**
		Returns true if the values are the same value, false otherwise.
	**/
	function is(value1:Any, value2:Any):Bool;
	/**
		Sets the prototype of a specified object o to object proto or null. Returns the object o.
	**/
	function setPrototypeOf(o:Any, proto:Null<Any>):Any;
};