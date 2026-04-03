package node.dns;

/**
	Uses the DNS protocol to resolve `CAA` records for the `hostname`. The `addresses` argument passed to the `callback` function
	will contain an array of certification authority authorization records
	available for the `hostname` (e.g. `[{critical: 0, iodef: 'mailto:pki@example.com'}, {critical: 128, issue: 'pki.example.com'}]`).
**/
@:jsRequire("dns", "resolveCaa") @valueModuleOnly extern class ResolveCaa {
	/**
		Uses the DNS protocol to resolve `CAA` records for the `hostname`. The `addresses` argument passed to the `callback` function
		will contain an array of certification authority authorization records
		available for the `hostname` (e.g. `[{critical: 0, iodef: 'mailto:pki@example.com'}, {critical: 128, issue: 'pki.example.com'}]`).
	**/
	@:selfCall
	static function call(hostname:String, callback:(err:Null<global.nodejs.ErrnoException>, records:Array<CaaRecord>) -> Void):Void;
}