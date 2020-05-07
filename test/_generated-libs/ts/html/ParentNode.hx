package ts.html;
typedef ParentNode = {
	final childElementCount : Float;
	/**
		Returns the child elements.
	**/
	final children : HTMLCollection;
	/**
		Returns the first child that is an element, and null otherwise.
	**/
	final firstElementChild : Null<Element>;
	/**
		Returns the last child that is an element, and null otherwise.
	**/
	final lastElementChild : Null<Element>;
	/**
		Inserts nodes after the last child of node, while replacing strings in nodes with equivalent Text nodes.
		
		Throws a "HierarchyRequestError" DOMException if the constraints of the node tree are violated.
	**/
	function append(nodes:haxe.extern.Rest<ts.AnyOf2<String, Node>>):Void;
	/**
		Inserts nodes before the first child of node, while replacing strings in nodes with equivalent Text nodes.
		
		Throws a "HierarchyRequestError" DOMException if the constraints of the node tree are violated.
	**/
	function prepend(nodes:haxe.extern.Rest<ts.AnyOf2<String, Node>>):Void;
	/**
		Returns the first element that is a descendant of node that matches selectors.
	**/
	@:overload(function<K>(selectors:K):Null<Dynamic> { })
	@:overload(function<E>(selectors:String):Null<E> { })
	function querySelector<K>(selectors:K):Null<Dynamic>;
	/**
		Returns all element descendants of node that match selectors.
	**/
	@:overload(function<K>(selectors:K):NodeListOf<Dynamic> { })
	@:overload(function<E>(selectors:String):NodeListOf<E> { })
	function querySelectorAll<K>(selectors:K):NodeListOf<Dynamic>;
};