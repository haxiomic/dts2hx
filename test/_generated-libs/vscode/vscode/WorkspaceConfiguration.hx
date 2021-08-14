package vscode;

/**
	Represents the configuration. It is a merged view of
	
	- *Default Settings*
	- *Global (User) Settings*
	- *Workspace settings*
	- *Workspace Folder settings* - From one of the [Workspace Folders](#workspace.workspaceFolders) under which requested resource belongs to.
	- *Language settings* - Settings defined under requested language.
	
	The *effective* value (returned by [`get`](#WorkspaceConfiguration.get)) is computed by overriding or merging the values in the following order.
	
	```
	`defaultValue`
	`globalValue` (if defined)
	`workspaceValue` (if defined)
	`workspaceFolderValue` (if defined)
	`defaultLanguageValue` (if defined)
	`globalLanguageValue` (if defined)
	`workspaceLanguageValue` (if defined)
	`workspaceFolderLanguageValue` (if defined)
	```
	**Note:** Only `object` value types are merged and all other value types are overridden.
	
	Example 1: Overriding
	
	```ts
	defaultValue = 'on';
	globalValue = 'relative'
	workspaceFolderValue = 'off'
	value = 'off'
	```
	
	Example 2: Language Values
	
	```ts
	defaultValue = 'on';
	globalValue = 'relative'
	workspaceFolderValue = 'off'
	globalLanguageValue = 'on'
	value = 'on'
	```
	
	Example 3: Object Values
	
	```ts
	defaultValue = { "a": 1, "b": 2 };
	globalValue = { "b": 3, "c": 4 };
	value = { "a": 1, "b": 3, "c": 4 };
	```
	
	*Note:* Workspace and Workspace Folder configurations contains `launch` and `tasks` settings. Their basename will be
	part of the section identifier. The following snippets shows how to retrieve all configurations
	from `launch.json`:
	
	```ts
	// launch.json configuration
	const config = workspace.getConfiguration('launch', vscode.workspace.workspaceFolders[0].uri);
	
	// retrieve values
	const values = config.get('configurations');
	```
	
	Refer to [Settings](https://code.visualstudio.com/docs/getstarted/settings) for more information.
**/
typedef WorkspaceConfiguration = {
	/**
		Return a value from this configuration.
		
		Return a value from this configuration.
	**/
	@:overload(function<T>(section:String, defaultValue:T):T { })
	function get<T>(section:String):Null<T>;
	/**
		Check if this configuration has a certain value.
	**/
	function has(section:String):Bool;
	/**
		Retrieve all information about a configuration setting. A configuration value
		often consists of a *default* value, a global or installation-wide value,
		a workspace-specific value, folder-specific value
		and language-specific values (if [WorkspaceConfiguration](#WorkspaceConfiguration) is scoped to a language).
		
		Also provides all language ids under which the given configuration setting is defined.
		
		*Note:* The configuration name must denote a leaf in the configuration tree
		(`editor.fontSize` vs `editor`) otherwise no result is returned.
	**/
	function inspect<T>(section:String):Null<{
		var key : String;
		@:optional
		var defaultValue : T;
		@:optional
		var globalValue : T;
		@:optional
		var workspaceValue : T;
		@:optional
		var workspaceFolderValue : T;
		@:optional
		var defaultLanguageValue : T;
		@:optional
		var globalLanguageValue : T;
		@:optional
		var workspaceLanguageValue : T;
		@:optional
		var workspaceFolderLanguageValue : T;
		@:optional
		var languageIds : Array<String>;
	}>;
	/**
		Update a configuration value. The updated configuration values are persisted.
		
		A value can be changed in
		
		- [Global settings](#ConfigurationTarget.Global): Changes the value for all instances of the editor.
		- [Workspace settings](#ConfigurationTarget.Workspace): Changes the value for current workspace, if available.
		- [Workspace folder settings](#ConfigurationTarget.WorkspaceFolder): Changes the value for settings from one of the [Workspace Folders](#workspace.workspaceFolders) under which the requested resource belongs to.
		- Language settings: Changes the value for the requested languageId.
		
		*Note:* To remove a configuration value use `undefined`, like so: `config.update('somekey', undefined)`
	**/
	function update(section:String, value:Dynamic, ?configurationTarget:ts.AnyOf2<Bool, Int>, ?overrideInLanguage:Bool):global.Thenable<ts.Undefined>;
};