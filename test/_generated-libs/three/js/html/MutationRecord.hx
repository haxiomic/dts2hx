package js.html;
/**
	A MutationRecord represents an individual DOM mutation. It is the object that is passed to MutationObserver's callback.
**/
@:native("MutationRecord") extern class MutationRecord {
	function new();
	/**
		Return the nodes added and removed respectively.
	**/
	final addedNodes : js.lib.INodeList;
	/**
		Returns the local name of the changed attribute, and null otherwise.
	**/
	final attributeName : Null<String>;
	/**
		Returns the namespace of the changed attribute, and null otherwise.
	**/
	final attributeNamespace : Null<String>;
	/**
		Return the previous and next sibling respectively of the added or removed nodes, and null otherwise.
	**/
	final nextSibling : Null<INode>;
	/**
		The return value depends on type. For "attributes", it is the value of the changed attribute before the change. For "characterData", it is the data of the changed node before the change. For "childList", it is null.
	**/
	final oldValue : Null<String>;
	/**
		Return the previous and next sibling respectively of the added or removed nodes, and null otherwise.
	**/
	final previousSibling : Null<INode>;
	/**
		Return the nodes added and removed respectively.
	**/
	final removedNodes : js.lib.INodeList;
	/**
		Returns the node the mutation affected, depending on the type. For "attributes", it is the element whose attribute changed. For "characterData", it is the CharacterData node. For "childList", it is the node whose children changed.
	**/
	final target : INode;
	/**
		Returns "attributes" if it was an attribute mutation. "characterData" if it was a mutation to a CharacterData node. And "childList" if it was a mutation to the tree of nodes.
	**/
	final type : String;
	static var prototype : IMutationRecord;
}