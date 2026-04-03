package node;

@:jsRequire("node:url") @valueModuleOnly extern class NodeUrl {
	/**
		The `url.parse()` method takes a URL string, parses it, and returns a URL
		object.
		
		A `TypeError` is thrown if `urlString` is not a string.
		
		A `URIError` is thrown if the `auth` property is present but cannot be decoded.
		
		`url.parse()` uses a lenient, non-standard algorithm for parsing URL
		strings. It is prone to security issues such as [host name spoofing](https://hackerone.com/reports/678487) and incorrect handling of usernames and passwords. Do not use with untrusted
		input. CVEs are not issued for `url.parse()` vulnerabilities. Use the `WHATWG URL` API instead.
	**/
	@:overload(function(urlString:String, parseQueryString:Null<Bool>, ?slashesDenoteHost:Bool):node.url.UrlWithStringQuery { })
	@:overload(function(urlString:String, parseQueryString:Bool, ?slashesDenoteHost:Bool):node.url.UrlWithParsedQuery { })
	@:overload(function(urlString:String, parseQueryString:Bool, ?slashesDenoteHost:Bool):node.url.Url_ { })
	static function parse(urlString:String):node.url.UrlWithStringQuery;
	/**
		The `url.format()` method returns a formatted URL string derived from `urlObject`.
		
		```js
		import url from 'node:url';
		url.format({
		  protocol: 'https',
		  hostname: 'example.com',
		  pathname: '/some/path',
		  query: {
		    page: 1,
		    format: 'json',
		  },
		});
		
		// => 'https://example.com/some/path?page=1&#x26;format=json'
		```
		
		If `urlObject` is not an object or a string, `url.format()` will throw a `TypeError`.
		
		The formatting process operates as follows:
		
		* A new empty string `result` is created.
		* If `urlObject.protocol` is a string, it is appended as-is to `result`.
		* Otherwise, if `urlObject.protocol` is not `undefined` and is not a string, an `Error` is thrown.
		* For all string values of `urlObject.protocol` that _do not end_ with an ASCII
		colon (`:`) character, the literal string `:` will be appended to `result`.
		* If either of the following conditions is true, then the literal string `//` will be appended to `result`:
		   * `urlObject.slashes` property is true;
		   * `urlObject.protocol` begins with `http`, `https`, `ftp`, `gopher`, or `file`;
		* If the value of the `urlObject.auth` property is truthy, and either `urlObject.host` or `urlObject.hostname` are not `undefined`, the value of `urlObject.auth` will be coerced into a string
		and appended to `result` followed by the literal string `@`.
		* If the `urlObject.host` property is `undefined` then:
		   * If the `urlObject.hostname` is a string, it is appended to `result`.
		   * Otherwise, if `urlObject.hostname` is not `undefined` and is not a string,
		   an `Error` is thrown.
		   * If the `urlObject.port` property value is truthy, and `urlObject.hostname` is not `undefined`:
		         * The literal string `:` is appended to `result`, and
		         * The value of `urlObject.port` is coerced to a string and appended to `result`.
		* Otherwise, if the `urlObject.host` property value is truthy, the value of `urlObject.host` is coerced to a string and appended to `result`.
		* If the `urlObject.pathname` property is a string that is not an empty string:
		   * If the `urlObject.pathname` _does not start_ with an ASCII forward slash
		   (`/`), then the literal string `'/'` is appended to `result`.
		   * The value of `urlObject.pathname` is appended to `result`.
		* Otherwise, if `urlObject.pathname` is not `undefined` and is not a string, an `Error` is thrown.
		* If the `urlObject.search` property is `undefined` and if the `urlObject.query`property is an `Object`, the literal string `?` is appended to `result` followed by the output of calling the
		`querystring` module's `stringify()` method passing the value of `urlObject.query`.
		* Otherwise, if `urlObject.search` is a string:
		   * If the value of `urlObject.search` _does not start_ with the ASCII question
		   mark (`?`) character, the literal string `?` is appended to `result`.
		   * The value of `urlObject.search` is appended to `result`.
		* Otherwise, if `urlObject.search` is not `undefined` and is not a string, an `Error` is thrown.
		* If the `urlObject.hash` property is a string:
		   * If the value of `urlObject.hash` _does not start_ with the ASCII hash (`#`)
		   character, the literal string `#` is appended to `result`.
		   * The value of `urlObject.hash` is appended to `result`.
		* Otherwise, if the `urlObject.hash` property is not `undefined` and is not a
		string, an `Error` is thrown.
		* `result` is returned.
	**/
	@:overload(function(urlObject:ts.AnyOf2<String, node.url.UrlObject>):String { })
	static function format(urlObject:node.url.URL, ?options:node.url.URLFormatOptions):String;
	/**
		The `url.resolve()` method resolves a target URL relative to a base URL in a
		manner similar to that of a web browser resolving an anchor tag.
		
		```js
		import url from 'node:url';
		url.resolve('/one/two/three', 'four');         // '/one/two/four'
		url.resolve('http://example.com/', '/one');    // 'http://example.com/one'
		url.resolve('http://example.com/one', '/two'); // 'http://example.com/two'
		```
		
		To achieve the same result using the WHATWG URL API:
		
		```js
		function resolve(from, to) {
		  const resolvedUrl = new URL(to, new URL(from, 'resolve://'));
		  if (resolvedUrl.protocol === 'resolve:') {
		    // `from` is a relative URL.
		    const { pathname, search, hash } = resolvedUrl;
		    return pathname + search + hash;
		  }
		  return resolvedUrl.toString();
		}
		
		resolve('/one/two/three', 'four');         // '/one/two/four'
		resolve('http://example.com/', '/one');    // 'http://example.com/one'
		resolve('http://example.com/one', '/two'); // 'http://example.com/two'
		```
	**/
	static function resolve(from:String, to:String):String;
	/**
		Returns the [Punycode](https://tools.ietf.org/html/rfc5891#section-4.4) ASCII serialization of the `domain`. If `domain` is an
		invalid domain, the empty string is returned.
		
		It performs the inverse operation to
		{@link
		domainToUnicode
		}
		.
		
		```js
		import url from 'node:url';
		
		console.log(url.domainToASCII('español.com'));
		// Prints xn--espaol-zwa.com
		console.log(url.domainToASCII('中文.com'));
		// Prints xn--fiq228c.com
		console.log(url.domainToASCII('xn--iñvalid.com'));
		// Prints an empty string
		```
	**/
	static function domainToASCII(domain:String):String;
	/**
		Returns the Unicode serialization of the `domain`. If `domain` is an invalid
		domain, the empty string is returned.
		
		It performs the inverse operation to
		{@link
		domainToASCII
		}
		.
		
		```js
		import url from 'node:url';
		
		console.log(url.domainToUnicode('xn--espaol-zwa.com'));
		// Prints español.com
		console.log(url.domainToUnicode('xn--fiq228c.com'));
		// Prints 中文.com
		console.log(url.domainToUnicode('xn--iñvalid.com'));
		// Prints an empty string
		```
	**/
	static function domainToUnicode(domain:String):String;
	/**
		This function ensures the correct decodings of percent-encoded characters as
		well as ensuring a cross-platform valid absolute path string.
		
		```js
		import { fileURLToPath } from 'node:url';
		
		const __filename = fileURLToPath(import.meta.url);
		
		new URL('file:///C:/path/').pathname;      // Incorrect: /C:/path/
		fileURLToPath('file:///C:/path/');         // Correct:   C:\path\ (Windows)
		
		new URL('file://nas/foo.txt').pathname;    // Incorrect: /foo.txt
		fileURLToPath('file://nas/foo.txt');       // Correct:   \\nas\foo.txt (Windows)
		
		new URL('file:///你好.txt').pathname;      // Incorrect: /%E4%BD%A0%E5%A5%BD.txt
		fileURLToPath('file:///你好.txt');         // Correct:   /你好.txt (POSIX)
		
		new URL('file:///hello world').pathname;   // Incorrect: /hello%20world
		fileURLToPath('file:///hello world');      // Correct:   /hello world (POSIX)
		```
	**/
	static function fileURLToPath(url:ts.AnyOf2<String, node.url.URL>, ?options:node.url.FileUrlToPathOptions):String;
	/**
		This function ensures that `path` is resolved absolutely, and that the URL
		control characters are correctly encoded when converting into a File URL.
		
		```js
		import { pathToFileURL } from 'node:url';
		
		new URL('/foo#1', 'file:');           // Incorrect: file:///foo#1
		pathToFileURL('/foo#1');              // Correct:   file:///foo%231 (POSIX)
		
		new URL('/some/path%.c', 'file:');    // Incorrect: file:///some/path%.c
		pathToFileURL('/some/path%.c');       // Correct:   file:///some/path%25.c (POSIX)
		```
	**/
	static function pathToFileURL(path:String, ?options:node.url.PathToFileUrlOptions):node.url.URL;
	/**
		This utility function converts a URL object into an ordinary options object as
		expected by the `http.request()` and `https.request()` APIs.
		
		```js
		import { urlToHttpOptions } from 'node:url';
		const myURL = new URL('https://a:b@測試?abc#foo');
		
		console.log(urlToHttpOptions(myURL));
		/*
		{
		  protocol: 'https:',
		  hostname: 'xn--g6w251d',
		  hash: '#foo',
		  search: '?abc',
		  pathname: '/',
		  path: '/?abc',
		  href: 'https://a:b@xn--g6w251d/?abc#foo',
		  auth: 'a:b'
		}
		
		```
	**/
	static function urlToHttpOptions(url:node.url.URL):node.http.ClientRequestArgs;
}