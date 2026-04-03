package undici_types.errors;

/**
	No upstream has been added to the BalancedPool.
**/
@:jsRequire("undici-types", "errors.BalancedPoolMissingUpstreamError") extern class BalancedPoolMissingUpstreamError extends UndiciError {
	static var prototype : BalancedPoolMissingUpstreamError;
}