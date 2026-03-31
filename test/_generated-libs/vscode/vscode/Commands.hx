package vscode;

/**
	Namespace for dealing with commands. In short, a command is a function with a
	unique identifier. The function is sometimes also called _command handler_.
	
	Commands can be added to the editor using the [registerCommand](#commands.registerCommand)
	and [registerTextEditorCommand](#commands.registerTextEditorCommand) functions. Commands
	can be executed [manually](#commands.executeCommand) or from a UI gesture. Those are:
	
	* palette - Use the `commands`-section in `package.json` to make a command show in
	the [command palette](https://code.visualstudio.com/docs/getstarted/userinterface#_command-palette).
	* keybinding - Use the `keybindings`-section in `package.json` to enable
	[keybindings](https://code.visualstudio.com/docs/getstarted/keybindings#_customizing-shortcuts)
	for your extension.
	
	Commands from other extensions and from the editor itself are accessible to an extension. However,
	when invoking an editor command not all argument types are supported.
	
	This is a sample that registers a command handler and adds an entry for that command to the palette. First
	register a command handler with the identifier `extension.sayHello`.
	```javascript
	commands.registerCommand('extension.sayHello', () => {
	    window.showInformationMessage('Hello World!');
	});
	```
	Second, bind the command identifier to a title under which it will show in the palette (`package.json`).
	```json
	{
	    "contributes": {
	        "commands": [{
	            "command": "extension.sayHello",
	            "title": "Hello World"
	        }]
	    }
	}
	```
**/
@:jsRequire("vscode", "commands") @valueModuleOnly extern class Commands {
	/**
		Registers a command that can be invoked via a keyboard shortcut,
		a menu item, an action, or directly.
		
		Registering a command with an existing command identifier twice
		will cause an error.
	**/
	static function registerCommand(command:String, callback:(args:haxe.extern.Rest<Dynamic>) -> Dynamic, ?thisArg:Dynamic):Disposable;
	/**
		Registers a text editor command that can be invoked via a keyboard shortcut,
		a menu item, an action, or directly.
		
		Text editor commands are different from ordinary [commands](#commands.registerCommand) as
		they only execute when there is an active editor when the command is called. Also, the
		command handler of an editor command has access to the active editor and to an
		[edit](#TextEditorEdit)-builder.
	**/
	static function registerTextEditorCommand(command:String, callback:(textEditor:TextEditor, edit:TextEditorEdit, args:haxe.extern.Rest<Dynamic>) -> Void, ?thisArg:Dynamic):Disposable;
	/**
		Executes the command denoted by the given command identifier.
		
		* *Note 1:* When executing an editor command not all types are allowed to
		be passed as arguments. Allowed are the primitive types `string`, `boolean`,
		`number`, `undefined`, and `null`, as well as [`Position`](#Position), [`Range`](#Range), [`Uri`](#Uri) and [`Location`](#Location).
		* *Note 2:* There are no restrictions when executing commands that have been contributed
		by extensions.
	**/
	static function executeCommand<T>(command:String, rest:haxe.extern.Rest<Dynamic>):global.Thenable<Null<T>>;
	/**
		Retrieve the list of all available commands. Commands starting with an underscore are
		treated as internal commands.
	**/
	static function getCommands(?filterInternal:Bool):global.Thenable<Array<String>>;
}