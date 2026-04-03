package global.nodejs;

typedef ProcessReport = {
	/**
		Write reports in a compact format, single-line JSON, more easily consumable by log processing systems
		than the default multi-line format designed for human consumption.
	**/
	var compact : Bool;
	/**
		Directory where the report is written.
		The default value is the empty string, indicating that reports are written to the current
		working directory of the Node.js process.
	**/
	var directory : String;
	/**
		Filename where the report is written. If set to the empty string, the output filename will be comprised
		of a timestamp, PID, and sequence number. The default value is the empty string.
	**/
	var filename : String;
	/**
		Returns a JavaScript Object representation of a diagnostic report for the running process.
		The report's JavaScript stack trace is taken from `err`, if present.
	**/
	function getReport(?err:js.lib.Error):Dynamic;
	/**
		If true, a diagnostic report is generated on fatal errors,
		such as out of memory errors or failed C++ assertions.
	**/
	var reportOnFatalError : Bool;
	/**
		If true, a diagnostic report is generated when the process
		receives the signal specified by process.report.signal.
	**/
	var reportOnSignal : Bool;
	/**
		If true, a diagnostic report is generated on uncaught exception.
	**/
	var reportOnUncaughtException : Bool;
	/**
		The signal used to trigger the creation of a diagnostic report.
	**/
	var signal : Signals;
	/**
		Writes a diagnostic report to a file. If filename is not provided, the default filename
		includes the date, time, PID, and a sequence number.
		The report's JavaScript stack trace is taken from `err`, if present.
		
		If the value of filename is set to `'stdout'` or `'stderr'`, the report is written
		to the stdout or stderr of the process respectively.
	**/
	@:overload(function(?err:js.lib.Error):String { })
	function writeReport(?fileName:String, ?err:js.lib.Error):String;
};