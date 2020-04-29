package js.html;
/**
	In the following code snippet, we make a request to open a database, and include handlers for the success and error cases. For a full working example, see our To-do Notifications app (view example live.)
**/
extern typedef IIDBFactory = {
	/**
		Compares two values as keys. Returns -1 if key1 precedes key2, 1 if key2 precedes key1, and 0 if the keys are equal.
		
		Throws a "DataError" DOMException if either input is not a valid key.
	**/
	function cmp(first:Any, second:Any):Float;
	/**
		Attempts to delete the named database. If the database already exists and there are open connections that don't close in response to a versionchange event, the request will be blocked until all they close. If the request is successful request's result will be null.
	**/
	function deleteDatabase(name:String):IIDBOpenDBRequest;
	/**
		Attempts to open a connection to the named database with the current version, or 1 if it does not already exist. If the request is successful request's result will be the connection.
	**/
	function open(name:String, ?version:Float):IIDBOpenDBRequest;
};