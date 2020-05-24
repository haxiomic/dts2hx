package vscode;

@:jsRequire("vscode", "scm") @valueModuleOnly extern class Scm {
	/**
		Creates a new [source control](#SourceControl) instance.
	**/
	static function createSourceControl(id:String, label:String, ?rootUri:Uri):SourceControl;
	/**
		~~The [input box](#SourceControlInputBox) for the last source control
		created by the extension.~~
	**/
	static final inputBox : SourceControlInputBox;
}