package ts.html;
/**
	An abnormal event (called an exception) which occurs as a result of calling a method or accessing a property of a web API.
**/
extern typedef IDOMException = {
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
};