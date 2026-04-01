package vscode;

/**
	A provider result represents the values a provider, like the [`HoverProvider`](#HoverProvider),
	may return. For once this is the actual result type `T`, like `Hover`, or a thenable that resolves
	to that type `T`. In addition, `null` and `undefined` can be returned - either directly or from a
	thenable.
	
	The snippets below are all valid implementations of the [`HoverProvider`](#HoverProvider):
	
	```ts
	let a: HoverProvider = {
	    provideHover(doc, pos, token): ProviderResult<Hover> {
	        return new Hover('Hello World');
	    }
	}
	
	let b: HoverProvider = {
	    provideHover(doc, pos, token): ProviderResult<Hover> {
	        return new Promise(resolve => {
	            resolve(new Hover('Hello World'));
	         });
	    }
	}
	
	let c: HoverProvider = {
	    provideHover(doc, pos, token): ProviderResult<Hover> {
	        return; // undefined
	    }
	}
	```
**/
typedef ProviderResult<T> = Null<ts.AnyOf2<global.Thenable<Null<T>>, T>>;