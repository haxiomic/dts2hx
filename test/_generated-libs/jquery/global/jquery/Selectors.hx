package global.jquery;

typedef Selectors = {
	@:native(":")
	var Colon : global.sizzle.selectors.PseudoFunctions;
	var filter : global.sizzle.selectors.FilterFunctions;
	var cacheLength : Float;
	var match : global.sizzle.selectors.Matches;
	var find : global.sizzle.selectors.FindFunctions;
	var preFilter : global.sizzle.selectors.PreFilterFunctions;
	var attrHandle : global.sizzle.selectors.AttrHandleFunctions;
	var pseudos : global.sizzle.selectors.PseudoFunctions;
	var setFilters : global.sizzle.selectors.SetFilterFunctions;
	function createPseudo(fn:global.sizzle.selectors.CreatePseudoFunction):global.sizzle.selectors.PseudoFunction;
};