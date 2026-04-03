package node.dns;

/**
	Resolves the given `address` and `port` into a host name and service using
	the operating system's underlying `getnameinfo` implementation.
	
	If `address` is not a valid IP address, a `TypeError` will be thrown.
	The `port` will be coerced to a number. If it is not a legal port, a `TypeError` will be thrown.
	
	On an error, `err` is an [`Error`](https://nodejs.org/docs/latest-v20.x/api/errors.html#class-error) object,
	where `err.code` is the error code.
	
	```js
	import dns from 'node:dns';
	dns.lookupService('127.0.0.1', 22, (err, hostname, service) => {
	  console.log(hostname, service);
	  // Prints: localhost ssh
	});
	```
	
	If this method is invoked as its [util.promisify()](https://nodejs.org/docs/latest-v20.x/api/util.html#utilpromisifyoriginal) ed
	version, it returns a `Promise` for an `Object` with `hostname` and `service` properties.
**/
@:jsRequire("dns", "lookupService") @valueModuleOnly extern class LookupService {
	/**
		Resolves the given `address` and `port` into a host name and service using
		the operating system's underlying `getnameinfo` implementation.
		
		If `address` is not a valid IP address, a `TypeError` will be thrown.
		The `port` will be coerced to a number. If it is not a legal port, a `TypeError` will be thrown.
		
		On an error, `err` is an [`Error`](https://nodejs.org/docs/latest-v20.x/api/errors.html#class-error) object,
		where `err.code` is the error code.
		
		```js
		import dns from 'node:dns';
		dns.lookupService('127.0.0.1', 22, (err, hostname, service) => {
		  console.log(hostname, service);
		  // Prints: localhost ssh
		});
		```
		
		If this method is invoked as its [util.promisify()](https://nodejs.org/docs/latest-v20.x/api/util.html#utilpromisifyoriginal) ed
		version, it returns a `Promise` for an `Object` with `hostname` and `service` properties.
	**/
	@:selfCall
	static function call(address:String, port:Float, callback:(err:Null<global.nodejs.ErrnoException>, hostname:String, service:String) -> Void):Void;
}