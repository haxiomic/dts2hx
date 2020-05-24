package vscode;

typedef DebugAdapterTrackerFactory = {
	/**
		The method 'createDebugAdapterTracker' is called at the start of a debug session in order
		to return a "tracker" object that provides read-access to the communication between VS Code and a debug adapter.
	**/
	function createDebugAdapterTracker(session:DebugSession):ProviderResult<DebugAdapterTracker>;
};