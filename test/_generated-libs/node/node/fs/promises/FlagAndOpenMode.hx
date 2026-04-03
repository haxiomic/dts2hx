package node.fs.promises;

typedef FlagAndOpenMode = {
	@:optional
	var mode : node.fs.Mode;
	@:optional
	var flag : node.fs.OpenMode;
};