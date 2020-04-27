package js.html;
extern typedef ParentNode = { final childElementCount : Float; /**
		Returns the child elements.
	**/
	final children : HTMLCollection; /**
		Returns the first child that is an element, and null otherwise.
	**/
	final firstElementChild : Null<Element>; /**
		Returns the last child that is an element, and null otherwise.
	**/
	final lastElementChild : Null<Element>; /**
		Inserts nodes after the last child of node, while replacing strings in nodes with equivalent Text nodes.
		
		Throws a "HierarchyRequestError" DOMException if the constraints of the node tree are violated.
	**/
	function append(nodes:std.Array<haxe.extern.EitherType<String, Node>>):Void; /**
		Inserts nodes before the first child of node, while replacing strings in nodes with equivalent Text nodes.
		
		Throws a "HierarchyRequestError" DOMException if the constraints of the node tree are violated.
	**/
	function prepend(nodes:std.Array<haxe.extern.EitherType<String, Node>>):Void; /**
		Returns the first element that is a descendant of node that matches selectors.
	**/
	@:overload(function<K:(String)>(selectors:K):Null<Any> { })
	@:overload(function<E:(Element)>(selectors:String):Null<E> { })
	function querySelector<K:(String)>(selectors:K):Null<Any>; /**
		Returns all element descendants of node that match selectors.
	**/
	@:overload(function<K:(String)>(selectors:K):js.lib.NodeListOf<Any> { })
	@:overload(function<E:(Element)>(selectors:String):js.lib.NodeListOf<E> { })
	function querySelectorAll<K:(String)>(selectors:K):js.lib.NodeListOf<Any>; };