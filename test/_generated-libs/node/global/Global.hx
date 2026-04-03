package global;

typedef Global = {
	var URL : {
		var prototype : node.url.URL;
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
		function createObjectURL(blob:node.buffer.Blob):String;
		/**
			Removes the stored `Blob` identified by the given ID. Attempting to revoke a
			ID that isn't registered will silently fail.
		**/
		function revokeObjectURL(id:String):Void;
		/**
			Checks if an `input` relative to the `base` can be parsed to a `URL`.
			
			```js
			const isValid = URL.canParse('/foo', 'https://example.org/'); // true
			
			const isNotValid = URL.canParse('/foo'); // false
			```
		**/
		function canParse(input:String, ?base:String):Bool;
		/**
			Parses a string as a URL. If `base` is provided, it will be used as the base URL for the purpose of resolving non-absolute `input` URLs.
			Returns `null` if `input` is not a valid.
		**/
		function parse(input:String, ?base:String):Null<node.url.URL>;
	};
	var URLSearchParams : {
		var prototype : node.url.URLSearchParams;
	};
};