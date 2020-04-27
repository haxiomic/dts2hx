package js.html;
extern typedef MutationObserverInit = { /**
		Set to a list of attribute local names (without namespace) if not all attribute mutations need to be observed and attributes is true or omitted.
	**/
	@:optional
	var attributeFilter : std.Array<String>; /**
		Set to true if attributes is true or omitted and target's attribute value before the mutation needs to be recorded.
	**/
	@:optional
	var attributeOldValue : Bool; /**
		Set to true if mutations to target's attributes are to be observed. Can be omitted if attributeOldValue or attributeFilter is specified.
	**/
	@:optional
	var attributes : Bool; /**
		Set to true if mutations to target's data are to be observed. Can be omitted if characterDataOldValue is specified.
	**/
	@:optional
	var characterData : Bool; /**
		Set to true if characterData is set to true or omitted and target's data before the mutation needs to be recorded.
	**/
	@:optional
	var characterDataOldValue : Bool; /**
		Set to true if mutations to target's children are to be observed.
	**/
	@:optional
	var childList : Bool; /**
		Set to true if mutations to not just target, but also target's descendants are to be observed.
	**/
	@:optional
	var subtree : Bool; };