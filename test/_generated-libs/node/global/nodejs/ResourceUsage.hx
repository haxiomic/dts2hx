package global.nodejs;

typedef ResourceUsage = {
	var fsRead : Float;
	var fsWrite : Float;
	var involuntaryContextSwitches : Float;
	var ipcReceived : Float;
	var ipcSent : Float;
	var majorPageFault : Float;
	var maxRSS : Float;
	var minorPageFault : Float;
	var sharedMemorySize : Float;
	var signalsCount : Float;
	var swappedOut : Float;
	var systemCPUTime : Float;
	var unsharedDataSize : Float;
	var unsharedStackSize : Float;
	var userCPUTime : Float;
	var voluntaryContextSwitches : Float;
};