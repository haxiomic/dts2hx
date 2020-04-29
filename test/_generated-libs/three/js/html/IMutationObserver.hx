package js.html;
/**
	Provides the ability to watch for changes being made to the DOM tree. It is designed as a replacement for the older Mutation Events feature which was part of the DOM3 Events specification.
**/
extern typedef IMutationObserver = {
	/**
		Stops observer from observing any mutations. Until the observe() method is used again, observer's callback will not be invoked.
	**/
	function disconnect():Void;
	/**
		Instructs the user agent to observe a given target (a node) and report any mutations based on the criteria given by options (an object).
		
		The options argument allows for setting mutation observation options via object members.
	**/
	function observe(target:INode, ?options:MutationObserverInit):Void;
	/**
		Empties the record queue and returns what was in there.
	**/
	function takeRecords():std.Array<IMutationRecord>;
};