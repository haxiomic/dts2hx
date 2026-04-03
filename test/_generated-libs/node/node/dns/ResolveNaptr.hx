package node.dns;

/**
	Uses the DNS protocol to resolve regular expression-based records (`NAPTR` records) for the `hostname`. The `addresses` argument passed to the `callback` function will contain an array of
	objects with the following properties:
	
	* `flags`
	* `service`
	* `regexp`
	* `replacement`
	* `order`
	* `preference`
	
	```js
	{
	  flags: 's',
	  service: 'SIP+D2U',
	  regexp: '',
	  replacement: '_sip._udp.example.com',
	  order: 30,
	  preference: 100
	}
	```
**/
@:jsRequire("dns", "resolveNaptr") @valueModuleOnly extern class ResolveNaptr {
	/**
		Uses the DNS protocol to resolve regular expression-based records (`NAPTR` records) for the `hostname`. The `addresses` argument passed to the `callback` function will contain an array of
		objects with the following properties:
		
		* `flags`
		* `service`
		* `regexp`
		* `replacement`
		* `order`
		* `preference`
		
		```js
		{
		  flags: 's',
		  service: 'SIP+D2U',
		  regexp: '',
		  replacement: '_sip._udp.example.com',
		  order: 30,
		  preference: 100
		}
		```
	**/
	@:selfCall
	static function call(hostname:String, callback:(err:Null<global.nodejs.ErrnoException>, addresses:Array<NaptrRecord>) -> Void):Void;
}