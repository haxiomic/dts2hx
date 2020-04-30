package ts.html;
/**
	A single style sheet. CSS style sheets will further implement the more specialized CSSStyleSheet interface.
**/
extern typedef IStyleSheet = {
	var disabled : Bool;
	final href : Null<String>;
	final media : ts.lib.IMediaList;
	final ownerNode : INode;
	final parentStyleSheet : Null<IStyleSheet>;
	final title : Null<String>;
	final type : String;
};