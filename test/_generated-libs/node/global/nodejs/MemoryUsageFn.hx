package global.nodejs;

typedef MemoryUsageFn = {
	/**
		The `process.memoryUsage()` method iterate over each page to gather informations about memory
		usage which can be slow depending on the program memory allocations.
	**/
	@:selfCall
	function call():MemoryUsage;
	/**
		method returns an integer representing the Resident Set Size (RSS) in bytes.
	**/
	function rss():Float;
};