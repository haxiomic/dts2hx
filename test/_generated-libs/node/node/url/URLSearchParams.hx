package node.url;

/**
	The `URLSearchParams` API provides read and write access to the query of a `URL`. The `URLSearchParams` class can also be used standalone with one of the
	four following constructors.
	The `URLSearchParams` class is also available on the global object.
	
	The WHATWG `URLSearchParams` interface and the `querystring` module have
	similar purpose, but the purpose of the `querystring` module is more
	general, as it allows the customization of delimiter characters (`&#x26;` and `=`).
	On the other hand, this API is designed purely for URL query strings.
	
	```js
	const myURL = new URL('https://example.org/?abc=123');
	console.log(myURL.searchParams.get('abc'));
	// Prints 123
	
	myURL.searchParams.append('abc', 'xyz');
	console.log(myURL.href);
	// Prints https://example.org/?abc=123&#x26;abc=xyz
	
	myURL.searchParams.delete('abc');
	myURL.searchParams.set('a', 'b');
	console.log(myURL.href);
	// Prints https://example.org/?a=b
	
	const newSearchParams = new URLSearchParams(myURL.searchParams);
	// The above is equivalent to
	// const newSearchParams = new URLSearchParams(myURL.search);
	
	newSearchParams.append('a', 'c');
	console.log(myURL.href);
	// Prints https://example.org/?a=b
	console.log(newSearchParams.toString());
	// Prints a=b&#x26;a=c
	
	// newSearchParams.toString() is implicitly called
	myURL.search = newSearchParams;
	console.log(myURL.href);
	// Prints https://example.org/?a=b&#x26;a=c
	newSearchParams.delete('a');
	console.log(myURL.href);
	// Prints https://example.org/?a=b&#x26;a=c
	```
**/
@:jsRequire("url", "URLSearchParams") extern class URLSearchParams {
	function new(?init:ts.AnyOf5<String, URLSearchParams, haxe.DynamicAccess<ts.AnyOf2<String, haxe.ds.ReadOnlyArray<String>>>, haxe.ds.ReadOnlyArray<ts.Tuple2<String, String>>, Iterable<ts.Tuple2<String, String>>>);
	/**
		Append a new name-value pair to the query string.
	**/
	function append(name:String, value:String):Void;
	/**
		If `value` is provided, removes all name-value pairs
		where name is `name` and value is `value`.
		
		If `value` is not provided, removes all name-value pairs whose name is `name`.
	**/
	function delete(name:String, ?value:String):Void;
	/**
		Returns an ES6 `Iterator` over each of the name-value pairs in the query.
		Each item of the iterator is a JavaScript `Array`. The first item of the `Array` is the `name`, the second item of the `Array` is the `value`.
		
		Alias for `urlSearchParams[@@iterator]()`.
	**/
	function entries():URLSearchParamsIterator<ts.Tuple2<String, String>>;
	/**
		Iterates over each name-value pair in the query and invokes the given function.
		
		```js
		const myURL = new URL('https://example.org/?a=b&#x26;c=d');
		myURL.searchParams.forEach((value, name, searchParams) => {
		  console.log(name, value, myURL.searchParams === searchParams);
		});
		// Prints:
		//   a b true
		//   c d true
		```
	**/
	function forEach<TThis>(fn:(value:String, name:String, searchParams:URLSearchParams) -> Void, ?thisArg:TThis):Void;
	/**
		Returns the value of the first name-value pair whose name is `name`. If there
		are no such pairs, `null` is returned.
	**/
	function get(name:String):Null<String>;
	/**
		Returns the values of all name-value pairs whose name is `name`. If there are
		no such pairs, an empty array is returned.
	**/
	function getAll(name:String):Array<String>;
	/**
		Checks if the `URLSearchParams` object contains key-value pair(s) based on `name` and an optional `value` argument.
		
		If `value` is provided, returns `true` when name-value pair with
		same `name` and `value` exists.
		
		If `value` is not provided, returns `true` if there is at least one name-value
		pair whose name is `name`.
	**/
	function has(name:String, ?value:String):Bool;
	/**
		Returns an ES6 `Iterator` over the names of each name-value pair.
		
		```js
		const params = new URLSearchParams('foo=bar&#x26;foo=baz');
		for (const name of params.keys()) {
		  console.log(name);
		}
		// Prints:
		//   foo
		//   foo
		```
	**/
	function keys():URLSearchParamsIterator<String>;
	/**
		Sets the value in the `URLSearchParams` object associated with `name` to `value`. If there are any pre-existing name-value pairs whose names are `name`,
		set the first such pair's value to `value` and remove all others. If not,
		append the name-value pair to the query string.
		
		```js
		const params = new URLSearchParams();
		params.append('foo', 'bar');
		params.append('foo', 'baz');
		params.append('abc', 'def');
		console.log(params.toString());
		// Prints foo=bar&#x26;foo=baz&#x26;abc=def
		
		params.set('foo', 'def');
		params.set('xyz', 'opq');
		console.log(params.toString());
		// Prints foo=def&#x26;abc=def&#x26;xyz=opq
		```
	**/
	function set(name:String, value:String):Void;
	/**
		The total number of parameter entries.
	**/
	final size : Float;
	/**
		Sort all existing name-value pairs in-place by their names. Sorting is done
		with a [stable sorting algorithm](https://en.wikipedia.org/wiki/Sorting_algorithm#Stability), so relative order between name-value pairs
		with the same name is preserved.
		
		This method can be used, in particular, to increase cache hits.
		
		```js
		const params = new URLSearchParams('query[]=abc&#x26;type=search&#x26;query[]=123');
		params.sort();
		console.log(params.toString());
		// Prints query%5B%5D=abc&#x26;query%5B%5D=123&#x26;type=search
		```
	**/
	function sort():Void;
	/**
		Returns the search parameters serialized as a string, with characters
		percent-encoded where necessary.
	**/
	function toString():String;
	/**
		Returns an ES6 `Iterator` over the values of each name-value pair.
	**/
	function values():URLSearchParamsIterator<String>;
	static var prototype : URLSearchParams;
}