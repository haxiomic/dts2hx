package vscode;

/**
	Namespace describing the environment the editor runs in.
**/
@:jsRequire("vscode", "env") @valueModuleOnly extern class Env {
	/**
		Opens a link externally using the default application. Depending on the
		used scheme this can be:
		* a browser (`http:`, `https:`)
		* a mail client (`mailto:`)
		* VSCode itself (`vscode:` from `vscode.env.uriScheme`)
		
		*Note* that [`showTextDocument`](#window.showTextDocument) is the right
		way to open a text document inside the editor, not this function.
	**/
	static function openExternal(target:Uri):global.Thenable<Bool>;
	/**
		Resolves a uri to form that is accessible externally. Currently only supports `https:`, `http:` and
		`vscode.env.uriScheme` uris.
		
		#### `http:` or `https:` scheme
		
		Resolves an *external* uri, such as a `http:` or `https:` link, from where the extension is running to a
		uri to the same resource on the client machine.
		
		This is a no-op if the extension is running on the client machine.
		
		If the extension is running remotely, this function automatically establishes a port forwarding tunnel
		from the local machine to `target` on the remote and returns a local uri to the tunnel. The lifetime of
		the port fowarding tunnel is managed by VS Code and the tunnel can be closed by the user.
		
		*Note* that uris passed through `openExternal` are automatically resolved and you should not call `asExternalUri` on them.
		
		#### `vscode.env.uriScheme`
		
		Creates a uri that - if opened in a browser (e.g. via `openExternal`) - will result in a registered [UriHandler](#UriHandler)
		to trigger.
		
		Extensions should not make any assumptions about the resulting uri and should not alter it in anyway.
		Rather, extensions can e.g. use this uri in an authentication flow, by adding the uri as callback query
		argument to the server to authenticate to.
		
		*Note* that if the server decides to add additional query parameters to the uri (e.g. a token or secret), it
		will appear in the uri that is passed to the [UriHandler](#UriHandler).
		
		**Example** of an authentication flow:
		```typescript
		vscode.window.registerUriHandler({
		  handleUri(uri: vscode.Uri): vscode.ProviderResult<void> {
		    if (uri.path === '/did-authenticate') {
		      console.log(uri.toString());
		    }
		  }
		});
		
		const callableUri = await vscode.env.asExternalUri(vscode.Uri.parse(`${vscode.env.uriScheme}://my.extension/did-authenticate`));
		await vscode.env.openExternal(callableUri);
		```
		
		*Note* that extensions should not cache the result of `asExternalUri` as the resolved uri may become invalid due to
		a system or user action — for example, in remote cases, a user may close a port forwarding tunnel that was opened by
		`asExternalUri`.
	**/
	static function asExternalUri(target:Uri):global.Thenable<Uri>;
	/**
		The application name of the editor, like 'VS Code'.
	**/
	static final appName : String;
	/**
		The application root folder from which the editor is running.
	**/
	static final appRoot : String;
	/**
		The custom uri scheme the editor registers to in the operating system.
	**/
	static final uriScheme : String;
	/**
		Represents the preferred user-language, like `de-CH`, `fr`, or `en-US`.
	**/
	static final language : String;
	/**
		The system clipboard.
	**/
	static final clipboard : Clipboard;
	/**
		A unique identifier for the computer.
	**/
	static final machineId : String;
	/**
		A unique identifier for the current session.
		Changes each time the editor is started.
	**/
	static final sessionId : String;
	/**
		The name of a remote. Defined by extensions, popular samples are `wsl` for the Windows
		Subsystem for Linux or `ssh-remote` for remotes using a secure shell.
		
		*Note* that the value is `undefined` when there is no remote extension host but that the
		value is defined in all extension hosts (local and remote) in case a remote extension host
		exists. Use [`Extension#extensionKind`](#Extension.extensionKind) to know if
		a specific extension runs remote or not.
	**/
	static final remoteName : Null<String>;
	/**
		The detected default shell for the extension host, this is overridden by the
		`terminal.integrated.shell` setting for the extension host's platform.
	**/
	static final shell : String;
	/**
		The UI kind property indicates from which UI extensions
		are accessed from. For example, extensions could be accessed
		from a desktop application or a web browser.
	**/
	static final uiKind : UIKind;
}