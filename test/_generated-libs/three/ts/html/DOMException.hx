package ts.html;
/**
	An abnormal event (called an exception) which occurs as a result of calling a method or accessing a property of a web API.
**/
@:native("DOMException") extern class DOMException {
	function new(?message:String, ?name:String);
	final code : Float;
	final message : String;
	final name : String;
	final ABORT_ERR : Float;
	final DATA_CLONE_ERR : Float;
	final DOMSTRING_SIZE_ERR : Float;
	final HIERARCHY_REQUEST_ERR : Float;
	final INDEX_SIZE_ERR : Float;
	final INUSE_ATTRIBUTE_ERR : Float;
	final INVALID_ACCESS_ERR : Float;
	final INVALID_CHARACTER_ERR : Float;
	final INVALID_MODIFICATION_ERR : Float;
	final INVALID_NODE_TYPE_ERR : Float;
	final INVALID_STATE_ERR : Float;
	final NAMESPACE_ERR : Float;
	final NETWORK_ERR : Float;
	final NOT_FOUND_ERR : Float;
	final NOT_SUPPORTED_ERR : Float;
	final NO_DATA_ALLOWED_ERR : Float;
	final NO_MODIFICATION_ALLOWED_ERR : Float;
	final QUOTA_EXCEEDED_ERR : Float;
	final SECURITY_ERR : Float;
	final SYNTAX_ERR : Float;
	final TIMEOUT_ERR : Float;
	final TYPE_MISMATCH_ERR : Float;
	final URL_MISMATCH_ERR : Float;
	final VALIDATION_ERR : Float;
	final WRONG_DOCUMENT_ERR : Float;
	static var prototype : IDOMException;
	@:native("ABORT_ERR")
	static final ABORT_ERR_ : Float;
	@:native("DATA_CLONE_ERR")
	static final DATA_CLONE_ERR_ : Float;
	@:native("DOMSTRING_SIZE_ERR")
	static final DOMSTRING_SIZE_ERR_ : Float;
	@:native("HIERARCHY_REQUEST_ERR")
	static final HIERARCHY_REQUEST_ERR_ : Float;
	@:native("INDEX_SIZE_ERR")
	static final INDEX_SIZE_ERR_ : Float;
	@:native("INUSE_ATTRIBUTE_ERR")
	static final INUSE_ATTRIBUTE_ERR_ : Float;
	@:native("INVALID_ACCESS_ERR")
	static final INVALID_ACCESS_ERR_ : Float;
	@:native("INVALID_CHARACTER_ERR")
	static final INVALID_CHARACTER_ERR_ : Float;
	@:native("INVALID_MODIFICATION_ERR")
	static final INVALID_MODIFICATION_ERR_ : Float;
	@:native("INVALID_NODE_TYPE_ERR")
	static final INVALID_NODE_TYPE_ERR_ : Float;
	@:native("INVALID_STATE_ERR")
	static final INVALID_STATE_ERR_ : Float;
	@:native("NAMESPACE_ERR")
	static final NAMESPACE_ERR_ : Float;
	@:native("NETWORK_ERR")
	static final NETWORK_ERR_ : Float;
	@:native("NOT_FOUND_ERR")
	static final NOT_FOUND_ERR_ : Float;
	@:native("NOT_SUPPORTED_ERR")
	static final NOT_SUPPORTED_ERR_ : Float;
	@:native("NO_DATA_ALLOWED_ERR")
	static final NO_DATA_ALLOWED_ERR_ : Float;
	@:native("NO_MODIFICATION_ALLOWED_ERR")
	static final NO_MODIFICATION_ALLOWED_ERR_ : Float;
	@:native("QUOTA_EXCEEDED_ERR")
	static final QUOTA_EXCEEDED_ERR_ : Float;
	@:native("SECURITY_ERR")
	static final SECURITY_ERR_ : Float;
	@:native("SYNTAX_ERR")
	static final SYNTAX_ERR_ : Float;
	@:native("TIMEOUT_ERR")
	static final TIMEOUT_ERR_ : Float;
	@:native("TYPE_MISMATCH_ERR")
	static final TYPE_MISMATCH_ERR_ : Float;
	@:native("URL_MISMATCH_ERR")
	static final URL_MISMATCH_ERR_ : Float;
	@:native("VALIDATION_ERR")
	static final VALIDATION_ERR_ : Float;
	@:native("WRONG_DOCUMENT_ERR")
	static final WRONG_DOCUMENT_ERR_ : Float;
}