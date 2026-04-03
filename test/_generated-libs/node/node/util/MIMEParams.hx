package node.util;

/**
	The `MIMEParams` API provides read and write access to the parameters of a `MIMEType`.
**/
@:jsRequire("util", "MIMEParams") extern class MIMEParams {
	function new();
	/**
		Remove all name-value pairs whose name is `name`.
	**/
	function delete(name:String):Void;
	/**
		Returns an iterator over each of the name-value pairs in the parameters.
		Each item of the iterator is a JavaScript `Array`. The first item of the array
		is the `name`, the second item of the array is the `value`.
	**/
	function entries():global.nodejs.Iterator_<ts.Tuple2<String, String>, Dynamic, Dynamic>;
	/**
		Returns the value of the first name-value pair whose name is `name`. If there
		are no such pairs, `null` is returned.
	**/
	function get(name:String):Null<String>;
	/**
		Returns `true` if there is at least one name-value pair whose name is `name`.
	**/
	function has(name:String):Bool;
	/**
		Returns an iterator over the names of each name-value pair.
		
		```js
		import { MIMEType } from 'node:util';
		
		const { params } = new MIMEType('text/plain;foo=0;bar=1');
		for (const name of params.keys()) {
		  console.log(name);
		}
		// Prints:
		//   foo
		//   bar
		```
	**/
	function keys():global.nodejs.Iterator_<String, Dynamic, Dynamic>;
	/**
		Sets the value in the `MIMEParams` object associated with `name` to `value`. If there are any pre-existing name-value pairs whose names are `name`,
		set the first such pair's value to `value`.
		
		```js
		import { MIMEType } from 'node:util';
		
		const { params } = new MIMEType('text/plain;foo=0;bar=1');
		params.set('foo', 'def');
		params.set('baz', 'xyz');
		console.log(params.toString());
		// Prints: foo=def;bar=1;baz=xyz
		```
	**/
	function set(name:String, value:String):Void;
	/**
		Returns an iterator over the values of each name-value pair.
	**/
	function values():global.nodejs.Iterator_<String, Dynamic, Dynamic>;
	static var prototype : MIMEParams;
}