package ts.html;
/**
	Provides event properties that are specific to modifications to the Document Object Model (DOM) hierarchy and nodes.
**/
@:native("MutationEvent") extern class MutationEvent {
	function new();
	final attrChange : Float;
	final attrName : String;
	final newValue : String;
	final prevValue : String;
	final relatedNode : INode;
	function initMutationEvent(typeArg:String, canBubbleArg:Bool, cancelableArg:Bool, relatedNodeArg:INode, prevValueArg:String, newValueArg:String, attrNameArg:String, attrChangeArg:Float):Void;
	final ADDITION : Float;
	final MODIFICATION : Float;
	final REMOVAL : Float;
	static var prototype : IMutationEvent;
	@:native("ADDITION")
	static final ADDITION_ : Float;
	@:native("MODIFICATION")
	static final MODIFICATION_ : Float;
	@:native("REMOVAL")
	static final REMOVAL_ : Float;
}