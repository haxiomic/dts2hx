package ts.lib;
/**
	Provides functionality common to all JavaScript objects.
**/
@:native("Object") extern class Object {
	function new(?value:Dynamic);
	/**
		The initial value of Object.prototype.constructor is the standard built-in Object constructor.
	**/
	var constructor : Function;
	/**
		Returns a string representation of an object.
	**/
	function toString():String;
	/**
		Returns a date converted to a string using the current locale.
	**/
	function toLocaleString():String;
	/**
		Returns the primitive value of the specified object.
	**/
	function valueOf():Object;
	/**
		Determines whether an object has a property with the specified name.
	**/
	function hasOwnProperty(v:ts.AnyOf3<String, Float, js.lib.Symbol>):Bool;
	/**
		Determines whether an object exists in another object's prototype chain.
	**/
	function isPrototypeOf(v:Object):Bool;
	/**
		Determines whether a specified property is enumerable.
	**/
	function propertyIsEnumerable(v:ts.AnyOf3<String, Float, js.lib.Symbol>):Bool;
	@:overload(function(value:Dynamic):Dynamic { })
	@:selfCall
	static function call():Dynamic;
	/**
		A reference to the prototype for a class of objects.
	**/
	static final prototype : Object;
	/**
		Returns the prototype of an object.
	**/
	static function getPrototypeOf(o:Dynamic):Dynamic;
	/**
		Gets the own property descriptor of the specified object.
		An own property descriptor is one that is defined directly on the object and is not inherited from the object's prototype.
	**/
	static function getOwnPropertyDescriptor(o:Dynamic, p:ts.AnyOf3<String, Float, js.lib.Symbol>):Null<PropertyDescriptor>;
	/**
		Returns the names of the own properties of an object. The own properties of an object are those that are defined directly
		on that object, and are not inherited from the object's prototype. The properties of an object include both fields (objects) and functions.
	**/
	static function getOwnPropertyNames(o:Dynamic):Array<String>;
	/**
		Creates an object that has the specified prototype or that has null prototype.
		
		Creates an object that has the specified prototype, and that optionally contains specified properties.
	**/
	@:overload(function(o:Null<Dynamic>, properties:PropertyDescriptorMap & ThisType<Dynamic>):Dynamic { })
	static function create(o:Null<Dynamic>):Dynamic;
	/**
		Adds a property to an object, or modifies attributes of an existing property.
	**/
	static function defineProperty(o:Dynamic, p:ts.AnyOf3<String, Float, js.lib.Symbol>, attributes:PropertyDescriptor & ThisType<Dynamic>):Dynamic;
	/**
		Adds one or more properties to an object, and/or modifies attributes of existing properties.
	**/
	static function defineProperties(o:Dynamic, properties:PropertyDescriptorMap & ThisType<Dynamic>):Dynamic;
	/**
		Prevents the modification of attributes of existing properties, and prevents the addition of new properties.
	**/
	static function seal<T>(o:T):T;
	/**
		Prevents the modification of existing property attributes and values, and prevents the addition of new properties.
		
		Prevents the modification of existing property attributes and values, and prevents the addition of new properties.
		
		Prevents the modification of existing property attributes and values, and prevents the addition of new properties.
	**/
	@:overload(function<T>(f:T):T { })
	@:overload(function<T>(o:T):{ } { })
	static function freeze<T>(a:Array<T>):ReadonlyArray<T>;
	/**
		Prevents the addition of new properties to an object.
	**/
	static function preventExtensions<T>(o:T):T;
	/**
		Returns true if existing property attributes cannot be modified in an object and new properties cannot be added to the object.
	**/
	static function isSealed(o:Dynamic):Bool;
	/**
		Returns true if existing property attributes and values cannot be modified in an object, and new properties cannot be added to the object.
	**/
	static function isFrozen(o:Dynamic):Bool;
	/**
		Returns a value that indicates whether new properties can be added to an object.
	**/
	static function isExtensible(o:Dynamic):Bool;
	/**
		Returns the names of the enumerable string properties and methods of an object.
		
		Returns the names of the enumerable string properties and methods of an object.
	**/
	@:overload(function(o:{ }):Array<String> { })
	static function keys(o:Dynamic):Array<String>;
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
	static function assign<T, U>(target:T, source:U):Dynamic;
	/**
		Returns an array of all symbol properties found directly on object o.
	**/
	static function getOwnPropertySymbols(o:Dynamic):Array<js.lib.Symbol>;
	/**
		Returns true if the values are the same value, false otherwise.
	**/
	static function is(value1:Dynamic, value2:Dynamic):Bool;
	/**
		Sets the prototype of a specified object o to object proto or null. Returns the object o.
	**/
	static function setPrototypeOf(o:Dynamic, proto:Null<Dynamic>):Dynamic;
}