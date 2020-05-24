package vscode;

/**
	An source control resource state represents the state of an underlying workspace
	resource within a certain [source control group](#SourceControlResourceGroup).
**/
typedef SourceControlResourceState = {
	/**
		The [uri](#Uri) of the underlying resource inside the workspace.
	**/
	final resourceUri : Uri;
	/**
		The [command](#Command) which should be run when the resource
		state is open in the Source Control viewlet.
	**/
	@:optional
	final command : Command;
	/**
		The [decorations](#SourceControlResourceDecorations) for this source control
		resource state.
	**/
	@:optional
	final decorations : SourceControlResourceDecorations;
};