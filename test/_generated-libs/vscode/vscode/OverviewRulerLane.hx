package vscode;

/**
	Represents different positions for rendering a decoration in an [overview ruler](#DecorationRenderOptions.overviewRulerLane).
	The overview ruler supports three lanes.
**/
@:jsRequire("vscode", "OverviewRulerLane") extern enum abstract OverviewRulerLane(Int) from Int to Int {
	var Left;
	var Center;
	var Right;
	var Full;
}