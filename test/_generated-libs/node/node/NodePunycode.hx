package node;

@:jsRequire("node:punycode") @valueModuleOnly extern class NodePunycode {
	/**
		The `punycode.decode()` method converts a [Punycode](https://tools.ietf.org/html/rfc3492) string of ASCII-only
		characters to the equivalent string of Unicode codepoints.
		
		```js
		punycode.decode('maana-pta'); // 'mañana'
		punycode.decode('--dqo34k'); // '☃-⌘'
		```
	**/
	static function decode(string:String):String;
	/**
		The `punycode.encode()` method converts a string of Unicode codepoints to a [Punycode](https://tools.ietf.org/html/rfc3492) string of ASCII-only characters.
		
		```js
		punycode.encode('mañana'); // 'maana-pta'
		punycode.encode('☃-⌘'); // '--dqo34k'
		```
	**/
	static function encode(string:String):String;
	/**
		The `punycode.toUnicode()` method converts a string representing a domain name
		containing [Punycode](https://tools.ietf.org/html/rfc3492) encoded characters into Unicode. Only the [Punycode](https://tools.ietf.org/html/rfc3492) encoded parts of the domain name are be
		converted.
		
		```js
		// decode domain names
		punycode.toUnicode('xn--maana-pta.com'); // 'mañana.com'
		punycode.toUnicode('xn----dqo34k.com');  // '☃-⌘.com'
		punycode.toUnicode('example.com');       // 'example.com'
		```
	**/
	static function toUnicode(domain:String):String;
	/**
		The `punycode.toASCII()` method converts a Unicode string representing an
		Internationalized Domain Name to [Punycode](https://tools.ietf.org/html/rfc3492). Only the non-ASCII parts of the
		domain name will be converted. Calling `punycode.toASCII()` on a string that
		already only contains ASCII characters will have no effect.
		
		```js
		// encode domain names
		punycode.toASCII('mañana.com');  // 'xn--maana-pta.com'
		punycode.toASCII('☃-⌘.com');   // 'xn----dqo34k.com'
		punycode.toASCII('example.com'); // 'example.com'
		```
	**/
	static function toASCII(domain:String):String;
	static final ucs2 : node.punycode.Ucs2;
	static final version : String;
}