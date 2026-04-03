package global.nodejs;

typedef RequireResolveOptions = {
	/**
		Paths to resolve module location from. If present, these
		paths are used instead of the default resolution paths, with the exception
		of
		[GLOBAL\_FOLDERS](https://nodejs.org/docs/latest-v20.x/api/modules.html#loading-from-the-global-folders)
		like `$HOME/.node_modules`, which are
		always included. Each of these paths is used as a starting point for
		the module resolution algorithm, meaning that the `node_modules` hierarchy
		is checked from this location.
	**/
	@:optional
	var paths : Array<String>;
};