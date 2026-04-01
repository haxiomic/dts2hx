package vscode;

/**
	Namespace for dealing with installed extensions. Extensions are represented
	by an [extension](#Extension)-interface which enables reflection on them.
	
	Extension writers can provide APIs to other extensions by returning their API public
	surface from the `activate`-call.
	
	```javascript
	export function activate(context: vscode.ExtensionContext) {
	    let api = {
	        sum(a, b) {
	            return a + b;
	        },
	        mul(a, b) {
	            return a * b;
	        }
	    };
	    // 'export' public api-surface
	    return api;
	}
	```
	When depending on the API of another extension add an `extensionDependencies`-entry
	to `package.json`, and use the [getExtension](#extensions.getExtension)-function
	and the [exports](#Extension.exports)-property, like below:
	
	```javascript
	let mathExt = extensions.getExtension('genius.math');
	let importedApi = mathExt.exports;
	
	console.log(importedApi.mul(42, 1));
	```
**/
@:jsRequire("vscode", "extensions") @valueModuleOnly extern class Extensions {
	/**
		Get an extension by its full identifier in the form of: `publisher.name`.
	**/
	@:overload(function<T>(extensionId:String):Null<Extension<T>> { })
	static function getExtension(extensionId:String):Null<Extension<Dynamic>>;
	/**
		All extensions currently known to the system.
	**/
	static final all : haxe.ds.ReadOnlyArray<Extension<Dynamic>>;
	/**
		An event which fires when `extensions.all` changes. This can happen when extensions are
		installed, uninstalled, enabled or disabled.
	**/
	static function onDidChange(listener:(e:ts.Undefined) -> Dynamic, ?thisArgs:Dynamic, ?disposables:Array<Disposable>):Disposable;
}