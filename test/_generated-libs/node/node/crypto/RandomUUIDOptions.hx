package node.crypto;

typedef RandomUUIDOptions = {
	/**
		By default, to improve performance,
		Node.js will pre-emptively generate and persistently cache enough
		random data to generate up to 128 random UUIDs. To generate a UUID
		without using the cache, set `disableEntropyCache` to `true`.
	**/
	@:optional
	var disableEntropyCache : Bool;
};