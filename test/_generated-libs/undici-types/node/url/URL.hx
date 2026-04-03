package node.url;

/**
	Browser-compatible `URL` class, implemented by following the WHATWG URL
	Standard. [Examples of parsed URLs](https://url.spec.whatwg.org/#example-url-parsing) may be found in the Standard itself.
	The `URL` class is also available on the global object.
	
	In accordance with browser conventions, all properties of `URL` objects
	are implemented as getters and setters on the class prototype, rather than as
	data properties on the object itself. Thus, unlike `legacy urlObject`s,
	using the `delete` keyword on any properties of `URL` objects (e.g. `delete myURL.protocol`, `delete myURL.pathname`, etc) has no effect but will still
	return `true`.
**/
@:jsRequire("url", "URL") extern class URL {
	function new(input:ts.AnyOf2<String, { dynamic function toString():String; }>, ?base:ts.AnyOf2<String, URL>);
	/**
		Gets and sets the fragment portion of the URL.
		
		```js
		const myURL = new URL('https://example.org/foo#bar');
		console.log(myURL.hash);
		// Prints #bar
		
		myURL.hash = 'baz';
		console.log(myURL.href);
		// Prints https://example.org/foo#baz
		```
		
		Invalid URL characters included in the value assigned to the `hash` property
		are `percent-encoded`. The selection of which characters to
		percent-encode may vary somewhat from what the
		{@link
		parse
		}
		and
		{@link
		format
		}
		methods would produce.
	**/
	var hash : String;
	/**
		Gets and sets the host portion of the URL.
		
		```js
		const myURL = new URL('https://example.org:81/foo');
		console.log(myURL.host);
		// Prints example.org:81
		
		myURL.host = 'example.com:82';
		console.log(myURL.href);
		// Prints https://example.com:82/foo
		```
		
		Invalid host values assigned to the `host` property are ignored.
	**/
	var host : String;
	/**
		Gets and sets the host name portion of the URL. The key difference between`url.host` and `url.hostname` is that `url.hostname` does _not_ include the
		port.
		
		```js
		const myURL = new URL('https://example.org:81/foo');
		console.log(myURL.hostname);
		// Prints example.org
		
		// Setting the hostname does not change the port
		myURL.hostname = 'example.com';
		console.log(myURL.href);
		// Prints https://example.com:81/foo
		
		// Use myURL.host to change the hostname and port
		myURL.host = 'example.org:82';
		console.log(myURL.href);
		// Prints https://example.org:82/foo
		```
		
		Invalid host name values assigned to the `hostname` property are ignored.
	**/
	var hostname : String;
	/**
		Gets and sets the serialized URL.
		
		```js
		const myURL = new URL('https://example.org/foo');
		console.log(myURL.href);
		// Prints https://example.org/foo
		
		myURL.href = 'https://example.com/bar';
		console.log(myURL.href);
		// Prints https://example.com/bar
		```
		
		Getting the value of the `href` property is equivalent to calling
		{@link
		toString
		}
		.
		
		Setting the value of this property to a new value is equivalent to creating a
		new `URL` object using `new URL(value)`. Each of the `URL` object's properties will be modified.
		
		If the value assigned to the `href` property is not a valid URL, a `TypeError` will be thrown.
	**/
	var href : String;
	/**
		Gets the read-only serialization of the URL's origin.
		
		```js
		const myURL = new URL('https://example.org/foo/bar?baz');
		console.log(myURL.origin);
		// Prints https://example.org
		```
		
		```js
		const idnURL = new URL('https://測試');
		console.log(idnURL.origin);
		// Prints https://xn--g6w251d
		
		console.log(idnURL.hostname);
		// Prints xn--g6w251d
		```
	**/
	final origin : String;
	/**
		Gets and sets the password portion of the URL.
		
		```js
		const myURL = new URL('https://abc:xyz@example.com');
		console.log(myURL.password);
		// Prints xyz
		
		myURL.password = '123';
		console.log(myURL.href);
		// Prints https://abc:123@example.com/
		```
		
		Invalid URL characters included in the value assigned to the `password` property
		are `percent-encoded`. The selection of which characters to
		percent-encode may vary somewhat from what the
		{@link
		parse
		}
		and
		{@link
		format
		}
		methods would produce.
	**/
	var password : String;
	/**
		Gets and sets the path portion of the URL.
		
		```js
		const myURL = new URL('https://example.org/abc/xyz?123');
		console.log(myURL.pathname);
		// Prints /abc/xyz
		
		myURL.pathname = '/abcdef';
		console.log(myURL.href);
		// Prints https://example.org/abcdef?123
		```
		
		Invalid URL characters included in the value assigned to the `pathname` property are `percent-encoded`. The selection of which characters
		to percent-encode may vary somewhat from what the
		{@link
		parse
		}
		and
		{@link
		format
		}
		methods would produce.
	**/
	var pathname : String;
	/**
		Gets and sets the port portion of the URL.
		
		The port value may be a number or a string containing a number in the range `0` to `65535` (inclusive). Setting the value to the default port of the `URL` objects given `protocol` will
		result in the `port` value becoming
		the empty string (`''`).
		
		The port value can be an empty string in which case the port depends on
		the protocol/scheme:
		
		<omitted>
		
		Upon assigning a value to the port, the value will first be converted to a
		string using `.toString()`.
		
		If that string is invalid but it begins with a number, the leading number is
		assigned to `port`.
		If the number lies outside the range denoted above, it is ignored.
		
		```js
		const myURL = new URL('https://example.org:8888');
		console.log(myURL.port);
		// Prints 8888
		
		// Default ports are automatically transformed to the empty string
		// (HTTPS protocol's default port is 443)
		myURL.port = '443';
		console.log(myURL.port);
		// Prints the empty string
		console.log(myURL.href);
		// Prints https://example.org/
		
		myURL.port = 1234;
		console.log(myURL.port);
		// Prints 1234
		console.log(myURL.href);
		// Prints https://example.org:1234/
		
		// Completely invalid port strings are ignored
		myURL.port = 'abcd';
		console.log(myURL.port);
		// Prints 1234
		
		// Leading numbers are treated as a port number
		myURL.port = '5678abcd';
		console.log(myURL.port);
		// Prints 5678
		
		// Non-integers are truncated
		myURL.port = 1234.5678;
		console.log(myURL.port);
		// Prints 1234
		
		// Out-of-range numbers which are not represented in scientific notation
		// will be ignored.
		myURL.port = 1e10; // 10000000000, will be range-checked as described below
		console.log(myURL.port);
		// Prints 1234
		```
		
		Numbers which contain a decimal point,
		such as floating-point numbers or numbers in scientific notation,
		are not an exception to this rule.
		Leading numbers up to the decimal point will be set as the URL's port,
		assuming they are valid:
		
		```js
		myURL.port = 4.567e21;
		console.log(myURL.port);
		// Prints 4 (because it is the leading number in the string '4.567e21')
		```
	**/
	var port : String;
	/**
		Gets and sets the protocol portion of the URL.
		
		```js
		const myURL = new URL('https://example.org');
		console.log(myURL.protocol);
		// Prints https:
		
		myURL.protocol = 'ftp';
		console.log(myURL.href);
		// Prints ftp://example.org/
		```
		
		Invalid URL protocol values assigned to the `protocol` property are ignored.
	**/
	var protocol : String;
	/**
		Gets and sets the serialized query portion of the URL.
		
		```js
		const myURL = new URL('https://example.org/abc?123');
		console.log(myURL.search);
		// Prints ?123
		
		myURL.search = 'abc=xyz';
		console.log(myURL.href);
		// Prints https://example.org/abc?abc=xyz
		```
		
		Any invalid URL characters appearing in the value assigned the `search` property will be `percent-encoded`. The selection of which
		characters to percent-encode may vary somewhat from what the
		{@link
		parse
		}
		and
		{@link
		format
		}
		methods would produce.
	**/
	var search : String;
	/**
		Gets the `URLSearchParams` object representing the query parameters of the
		URL. This property is read-only but the `URLSearchParams` object it provides
		can be used to mutate the URL instance; to replace the entirety of query
		parameters of the URL, use the
		{@link
		search
		}
		setter. See `URLSearchParams` documentation for details.
		
		Use care when using `.searchParams` to modify the `URL` because,
		per the WHATWG specification, the `URLSearchParams` object uses
		different rules to determine which characters to percent-encode. For
		instance, the `URL` object will not percent encode the ASCII tilde (`~`)
		character, while `URLSearchParams` will always encode it:
		
		```js
		const myURL = new URL('https://example.org/abc?foo=~bar');
		
		console.log(myURL.search);  // prints ?foo=~bar
		
		// Modify the URL via searchParams...
		myURL.searchParams.sort();
		
		console.log(myURL.search);  // prints ?foo=%7Ebar
		```
	**/
	final searchParams : URLSearchParams;
	/**
		Gets and sets the username portion of the URL.
		
		```js
		const myURL = new URL('https://abc:xyz@example.com');
		console.log(myURL.username);
		// Prints abc
		
		myURL.username = '123';
		console.log(myURL.href);
		// Prints https://123:xyz@example.com/
		```
		
		Any invalid URL characters appearing in the value assigned the `username` property will be `percent-encoded`. The selection of which
		characters to percent-encode may vary somewhat from what the
		{@link
		parse
		}
		and
		{@link
		format
		}
		methods would produce.
	**/
	var username : String;
	/**
		The `toString()` method on the `URL` object returns the serialized URL. The
		value returned is equivalent to that of
		{@link
		href
		}
		and
		{@link
		toJSON
		}
		.
	**/
	function toString():String;
	/**
		The `toJSON()` method on the `URL` object returns the serialized URL. The
		value returned is equivalent to that of
		{@link
		href
		}
		and
		{@link
		toString
		}
		.
		
		This method is automatically called when an `URL` object is serialized
		with [`JSON.stringify()`](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/JSON/stringify).
		
		```js
		const myURLs = [
		  new URL('https://www.example.com'),
		  new URL('https://test.example.org'),
		];
		console.log(JSON.stringify(myURLs));
		// Prints ["https://www.example.com/","https://test.example.org/"]
		```
	**/
	function toJSON():String;
	static var prototype : URL;
	/**
		Creates a `'blob:nodedata:...'` URL string that represents the given `Blob` object and can be used to retrieve the `Blob` later.
		
		```js
		import {
		  Blob,
		  resolveObjectURL,
		} from 'node:buffer';
		
		const blob = new Blob(['hello']);
		const id = URL.createObjectURL(blob);
		
		// later...
		
		const otherBlob = resolveObjectURL(id);
		console.log(otherBlob.size);
		```
		
		The data stored by the registered `Blob` will be retained in memory until `URL.revokeObjectURL()` is called to remove it.
		
		`Blob` objects are registered within the current thread. If using Worker
		Threads, `Blob` objects registered within one Worker will not be available
		to other workers or the main thread.
	**/
	static function createObjectURL(blob:node.buffer.Blob):String;
	/**
		Removes the stored `Blob` identified by the given ID. Attempting to revoke a
		ID that isn't registered will silently fail.
	**/
	static function revokeObjectURL(id:String):Void;
	/**
		Checks if an `input` relative to the `base` can be parsed to a `URL`.
		
		```js
		const isValid = URL.canParse('/foo', 'https://example.org/'); // true
		
		const isNotValid = URL.canParse('/foo'); // false
		```
	**/
	static function canParse(input:String, ?base:String):Bool;
	/**
		Parses a string as a URL. If `base` is provided, it will be used as the base URL for the purpose of resolving non-absolute `input` URLs.
		Returns `null` if `input` is not a valid.
	**/
	static function parse(input:String, ?base:String):Null<URL>;
}