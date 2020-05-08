package ts.html;
/**
	A controller object that allows you to abort one or more DOM requests as and when desired.
**/
typedef IAbortController = {
	/**
		Returns the AbortSignal object associated with this object.
	**/
	final signal : AbortSignal;
	/**
		Invoking this method will set this object's AbortSignal's aborted flag and signal to any observers that the associated activity is to be aborted.
	**/
	function abort():Void;
};