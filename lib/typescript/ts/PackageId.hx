package typescript.ts;


/**
Unique identifier with a package name and version.
If changing this, remember to change `packageIdIsEqual`.

Generated from: test-definitions/typescript/typescript-extended.d.ts:2800:5
**/
@:native('ts.PackageId')
extern interface PackageId {
	/**
	Name of the package.
	Should not include `@types`.
	If accessing a non-index file, this should include its name e.g. "foo/bar".
	**/
	var name: String;
	/**
	Name of a submodule within this package.
	May be "".
	**/
	var subModuleName: String;
	/**
	Version of the package, e.g. "1.2.3"
	**/
	var version: String;
}

