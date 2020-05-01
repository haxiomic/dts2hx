package ts.lib.intl;
typedef IPluralRules = {
	function resolvedOptions():ResolvedPluralRulesOptions;
	function select(n:Float):String;
};