package vscode;

typedef SelectionRangeProvider = {
	/**
		Provide selection ranges for the given positions.
		
		Selection ranges should be computed individually and independent for each position. The editor will merge
		and deduplicate ranges but providers must return hierarchies of selection ranges so that a range
		is [contained](#Range.contains) by its parent.
	**/
	function provideSelectionRanges(document:TextDocument, positions:Array<Position>, token:CancellationToken):ProviderResult<Array<SelectionRange>>;
};