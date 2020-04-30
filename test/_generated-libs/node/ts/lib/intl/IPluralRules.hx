package ts.lib.intl;
extern typedef IPluralRules = {
	function resolvedOptions():ResolvedPluralRulesOptions;
	function select(n:Float):String;
};