package vscode;

/**
	Namespace for debug functionality.
**/
@:jsRequire("vscode", "debug") @valueModuleOnly extern class Debug {
	/**
		Register a [debug configuration provider](#DebugConfigurationProvider) for a specific debug type.
		More than one provider can be registered for the same type.
	**/
	static function registerDebugConfigurationProvider(debugType:String, provider:DebugConfigurationProvider):Disposable;
	/**
		Register a [debug adapter descriptor factory](#DebugAdapterDescriptorFactory) for a specific debug type.
		An extension is only allowed to register a DebugAdapterDescriptorFactory for the debug type(s) defined by the extension. Otherwise an error is thrown.
		Registering more than one DebugAdapterDescriptorFactory for a debug type results in an error.
	**/
	static function registerDebugAdapterDescriptorFactory(debugType:String, factory:DebugAdapterDescriptorFactory):Disposable;
	/**
		Register a debug adapter tracker factory for the given debug type.
	**/
	static function registerDebugAdapterTrackerFactory(debugType:String, factory:DebugAdapterTrackerFactory):Disposable;
	/**
		Start debugging by using either a named launch or named compound configuration,
		or by directly passing a [DebugConfiguration](#DebugConfiguration).
		The named configurations are looked up in '.vscode/launch.json' found in the given folder.
		Before debugging starts, all unsaved files are saved and the launch configurations are brought up-to-date.
		Folder specific variables used in the configuration (e.g. '${workspaceFolder}') are resolved against the given folder.
	**/
	static function startDebugging(folder:Null<WorkspaceFolder>, nameOrConfiguration:ts.AnyOf2<String, DebugConfiguration>, ?parentSessionOrOptions:ts.AnyOf2<DebugSession, DebugSessionOptions>):global.Thenable<Bool>;
	/**
		Add breakpoints.
	**/
	static function addBreakpoints(breakpoints:Array<Breakpoint>):Void;
	/**
		Remove breakpoints.
	**/
	static function removeBreakpoints(breakpoints:Array<Breakpoint>):Void;
	/**
		Converts a "Source" descriptor object received via the Debug Adapter Protocol into a Uri that can be used to load its contents.
		If the source descriptor is based on a path, a file Uri is returned.
		If the source descriptor uses a reference number, a specific debug Uri (scheme 'debug') is constructed that requires a corresponding VS Code ContentProvider and a running debug session
		
		If the "Source" descriptor has insufficient information for creating the Uri, an error is thrown.
	**/
	static function asDebugSourceUri(source:DebugProtocolSource, ?session:DebugSession):Uri;
	/**
		The currently active [debug session](#DebugSession) or `undefined`. The active debug session is the one
		represented by the debug action floating window or the one currently shown in the drop down menu of the debug action floating window.
		If no debug session is active, the value is `undefined`.
	**/
	static var activeDebugSession : Null<DebugSession>;
	/**
		The currently active [debug console](#DebugConsole).
		If no debug session is active, output sent to the debug console is not shown.
	**/
	static var activeDebugConsole : DebugConsole;
	/**
		List of breakpoints.
	**/
	static var breakpoints : Array<Breakpoint>;
	/**
		An [event](#Event) which fires when the [active debug session](#debug.activeDebugSession)
		has changed. *Note* that the event also fires when the active debug session changes
		to `undefined`.
	**/
	static function onDidChangeActiveDebugSession(listener:(e:Null<DebugSession>) -> Dynamic, ?thisArgs:Dynamic, ?disposables:Array<Disposable>):Disposable;
	/**
		An [event](#Event) which fires when a new [debug session](#DebugSession) has been started.
	**/
	static function onDidStartDebugSession(listener:(e:DebugSession) -> Dynamic, ?thisArgs:Dynamic, ?disposables:Array<Disposable>):Disposable;
	/**
		An [event](#Event) which fires when a custom DAP event is received from the [debug session](#DebugSession).
	**/
	static function onDidReceiveDebugSessionCustomEvent(listener:(e:DebugSessionCustomEvent) -> Dynamic, ?thisArgs:Dynamic, ?disposables:Array<Disposable>):Disposable;
	/**
		An [event](#Event) which fires when a [debug session](#DebugSession) has terminated.
	**/
	static function onDidTerminateDebugSession(listener:(e:DebugSession) -> Dynamic, ?thisArgs:Dynamic, ?disposables:Array<Disposable>):Disposable;
	/**
		An [event](#Event) that is emitted when the set of breakpoints is added, removed, or changed.
	**/
	static function onDidChangeBreakpoints(listener:(e:BreakpointsChangeEvent) -> Dynamic, ?thisArgs:Dynamic, ?disposables:Array<Disposable>):Disposable;
}