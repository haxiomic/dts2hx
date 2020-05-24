package vscode;

/**
	The call hierarchy provider interface describes the constract between extensions
	and the call hierarchy feature which allows to browse calls and caller of function,
	methods, constructor etc.
**/
typedef CallHierarchyProvider = {
	/**
		Bootstraps call hierarchy by returning the item that is denoted by the given document
		and position. This item will be used as entry into the call graph. Providers should
		return `undefined` or `null` when there is no item at the given location.
	**/
	function prepareCallHierarchy(document:TextDocument, position:Position, token:CancellationToken):ProviderResult<ts.AnyOf2<CallHierarchyItem, Array<CallHierarchyItem>>>;
	/**
		Provide all incoming calls for an item, e.g all callers for a method. In graph terms this describes directed
		and annotated edges inside the call graph, e.g the given item is the starting node and the result is the nodes
		that can be reached.
	**/
	function provideCallHierarchyIncomingCalls(item:CallHierarchyItem, token:CancellationToken):ProviderResult<Array<CallHierarchyIncomingCall>>;
	/**
		Provide all outgoing calls for an item, e.g call calls to functions, methods, or constructors from the given item. In
		graph terms this describes directed and annotated edges inside the call graph, e.g the given item is the starting
		node and the result is the nodes that can be reached.
	**/
	function provideCallHierarchyOutgoingCalls(item:CallHierarchyItem, token:CancellationToken):ProviderResult<Array<CallHierarchyOutgoingCall>>;
};