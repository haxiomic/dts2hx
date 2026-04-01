package vscode;

/**
	A location in the editor at which progress information can be shown. It depends on the
	location how progress is visually represented.
**/
@:jsRequire("vscode", "ProgressLocation") extern enum abstract ProgressLocation(Int) from Int to Int {
	/**
		Show progress for the source control viewlet, as overlay for the icon and as progress bar
		inside the viewlet (when visible). Neither supports cancellation nor discrete progress.
	**/
	var SourceControl;
	/**
		Show progress in the status bar of the editor. Neither supports cancellation nor discrete progress.
	**/
	var Window;
	/**
		Show progress as notification with an optional cancel button. Supports to show infinite and discrete progress.
	**/
	var Notification;
}