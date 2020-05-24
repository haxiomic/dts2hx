package vscode;

/**
	A debug configuration provider allows to add debug configurations to the debug service
	and to resolve launch configurations before they are used to start a debug session.
	A debug configuration provider is registered via #debug.registerDebugConfigurationProvider.
**/
typedef DebugConfigurationProvider = {
	/**
		Provides [debug configuration](#DebugConfiguration) to the debug service. If more than one debug configuration provider is
		registered for the same type, debug configurations are concatenated in arbitrary order.
	**/
	@:optional
	function provideDebugConfigurations(folder:Null<WorkspaceFolder>, ?token:CancellationToken):ProviderResult<Array<DebugConfiguration>>;
	/**
		Resolves a [debug configuration](#DebugConfiguration) by filling in missing values or by adding/changing/removing attributes.
		If more than one debug configuration provider is registered for the same type, the resolveDebugConfiguration calls are chained
		in arbitrary order and the initial debug configuration is piped through the chain.
		Returning the value 'undefined' prevents the debug session from starting.
		Returning the value 'null' prevents the debug session from starting and opens the underlying debug configuration instead.
	**/
	@:optional
	function resolveDebugConfiguration(folder:Null<WorkspaceFolder>, debugConfiguration:DebugConfiguration, ?token:CancellationToken):ProviderResult<DebugConfiguration>;
	/**
		This hook is directly called after 'resolveDebugConfiguration' but with all variables substituted.
		It can be used to resolve or verify a [debug configuration](#DebugConfiguration) by filling in missing values or by adding/changing/removing attributes.
		If more than one debug configuration provider is registered for the same type, the 'resolveDebugConfigurationWithSubstitutedVariables' calls are chained
		in arbitrary order and the initial debug configuration is piped through the chain.
		Returning the value 'undefined' prevents the debug session from starting.
		Returning the value 'null' prevents the debug session from starting and opens the underlying debug configuration instead.
	**/
	@:optional
	function resolveDebugConfigurationWithSubstitutedVariables(folder:Null<WorkspaceFolder>, debugConfiguration:DebugConfiguration, ?token:CancellationToken):ProviderResult<DebugConfiguration>;
};