package js.html;
extern interface NonDocumentTypeChildNode {
	/**
		Returns the first following sibling that is an element, and null otherwise.
	**/
	final nextElementSibling : Null<Element>;
	/**
		Returns the first preceding sibling that is an element, and null otherwise.
	**/
	final previousElementSibling : Null<Element>;
}