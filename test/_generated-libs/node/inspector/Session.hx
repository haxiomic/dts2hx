package node.inspector;
/**
	The inspector.Session is used for dispatching messages to the V8 inspector back-end and receiving message responses and notifications.
**/
@:jsRequire("inspector", "Session") extern class Session extends node.events.EventEmitter {
	/**
		Create a new instance of the inspector.Session class.
		The inspector session needs to be connected through session.connect() before the messages can be dispatched to the inspector backend.
	**/
	function new();
	/**
		Connects a session to the inspector back-end.
		An exception will be thrown if there is already a connected session established either
		through the API or by a front-end connected to the Inspector WebSocket port.
	**/
	function connect():Void;
	/**
		Immediately close the session. All pending message callbacks will be called with an error.
		session.connect() will need to be called to be able to send messages again.
		Reconnected session will lose all inspector state, such as enabled agents or configured breakpoints.
	**/
	function disconnect():Void;
	/**
		Posts a message to the inspector back-end. callback will be notified when a response is received.
		callback is a function that accepts two optional arguments - error and message-specific result.
		
		Does nothing.
		
		Disables console domain, prevents further console messages from being reported to the client.
		
		Enables console domain, sends the messages collected so far to the client by means of the
		`messageAdded` notification.
		
		Continues execution until specific location is reached.
		
		Disables debugger for given page.
		
		Enables debugger for the given page. Clients should not assume that the debugging has been
		enabled until the result for this command is received.
		
		Evaluates expression on a given call frame.
		
		Returns possible locations for breakpoint. scriptId in start and end range locations should be
		the same.
		
		Returns source for the script with given id.
		
		Returns stack trace with given `stackTraceId`.
		
		Stops on the next JavaScript statement.
		
		Removes JavaScript breakpoint.
		
		Restarts particular call frame from the beginning.
		
		Resumes JavaScript execution.
		
		This method is deprecated - use Debugger.stepInto with breakOnAsyncCall and
		Debugger.pauseOnAsyncTask instead. Steps into next scheduled async task if any is scheduled
		before next pause. Returns success when async task is actually scheduled, returns error if no
		task were scheduled or another scheduleStepIntoAsync was called.
		
		Searches for given string in script content.
		
		Enables or disables async call stacks tracking.
		
		Replace previous blackbox patterns with passed ones. Forces backend to skip stepping/pausing in
		scripts with url matching one of the patterns. VM will try to leave blackboxed script by
		performing 'step in' several times, finally resorting to 'step out' if unsuccessful.
		
		Makes backend skip steps in the script in blackboxed ranges. VM will try leave blacklisted
		scripts by performing 'step in' several times, finally resorting to 'step out' if unsuccessful.
		Positions array contains positions where blackbox state is changed. First interval isn't
		blackboxed. Array should be sorted.
		
		Sets JavaScript breakpoint at a given location.
		
		Sets JavaScript breakpoint at given location specified either by URL or URL regex. Once this
		command is issued, all existing parsed scripts will have breakpoints resolved and returned in
		`locations` property. Further matching script parsing will result in subsequent
		`breakpointResolved` events issued. This logical breakpoint will survive page reloads.
		
		Sets JavaScript breakpoint before each call to the given function.
		If another function was created from the same source as a given one,
		calling it will also trigger the breakpoint.
		
		Activates / deactivates all breakpoints on the page.
		
		Defines pause on exceptions state. Can be set to stop on all exceptions, uncaught exceptions or
		no exceptions. Initial pause on exceptions state is `none`.
		
		Changes return value in top frame. Available only at return break position.
		
		Edits JavaScript source live.
		
		Makes page not interrupt on any pauses (breakpoint, exception, dom exception etc).
		
		Changes value of variable in a callframe. Object-based scopes are not supported and must be
		mutated manually.
		
		Steps into the function call.
		
		Steps out of the function call.
		
		Steps over the statement.
		
		Enables console to refer to the node with given id via $x (see Command Line API for more details
		$x functions).
		
		Collect coverage data for the current isolate. The coverage data may be incomplete due to
		garbage collection.
		
		Changes CPU profiler sampling interval. Must be called before CPU profiles recording started.
		
		Enable precise code coverage. Coverage data for JavaScript executed before enabling precise code
		coverage may be incomplete. Enabling prevents running optimized code and resets execution
		counters.
		
		Enable type profile.
		
		Disable precise code coverage. Disabling releases unnecessary execution count records and allows
		executing optimized code.
		
		Disable type profile. Disabling releases type profile data collected so far.
		
		Collect coverage data for the current isolate, and resets execution counters. Precise code
		coverage needs to have started.
		
		Collect type profile.
		
		Add handler to promise with given promise object id.
		
		Calls function with given declaration on the given object. Object group of the result is
		inherited from the target object.
		
		Compiles expression.
		
		Disables reporting of execution contexts creation.
		
		Discards collected exceptions and console API calls.
		
		Enables reporting of execution contexts creation by means of `executionContextCreated` event.
		When the reporting gets enabled the event will be sent immediately for each existing execution
		context.
		
		Evaluates expression on global object.
		
		Returns the isolate id.
		
		Returns the JavaScript heap usage.
		It is the total usage of the corresponding isolate not scoped to a particular Runtime.
		
		Returns properties of a given object. Object group of the result is inherited from the target
		object.
		
		Returns all let, const and class variables from global scope.
		
		Releases remote object with given id.
		
		Releases all remote objects that belong to a given group.
		
		Tells inspected instance to run if it was waiting for debugger to attach.
		
		Runs script with given id in a given context.
		
		Terminate current or next JavaScript execution.
		Will cancel the termination when the outer-most script execution ends.
		
		Returns supported domains.
		
		Gets supported tracing categories.
		
		Start trace events collection.
		
		Stop trace events collection. Remaining collected events will be sent as a sequence of
		dataCollected events followed by tracingComplete event.
		
		Sends protocol message over session with given id.
		
		Instructs the inspector to attach to running workers. Will also attach to new workers
		as they start
		
		Detaches from all running workers and disables attaching to new workers as they are started.
	**/
	@:overload(function(method:String, ?callback:ts.AnyOf2<(err:Null<ts.lib.IError>) -> Void, (err:Null<ts.lib.IError>, params:{ }) -> Void>):Void { })
	@:overload(function(method:String, ?callback:(err:Null<ts.lib.IError>) -> Void):Void { })
	@:overload(function(method:String, ?callback:(err:Null<ts.lib.IError>) -> Void):Void { })
	@:overload(function(method:String, ?callback:(err:Null<ts.lib.IError>) -> Void):Void { })
	@:overload(function(method:String, ?params:node.inspector.debugger.ContinueToLocationParameterType, ?callback:(err:Null<ts.lib.IError>) -> Void):Void { })
	@:overload(function(method:String, ?callback:(err:Null<ts.lib.IError>) -> Void):Void { })
	@:overload(function(method:String, ?callback:(err:Null<ts.lib.IError>) -> Void):Void { })
	@:overload(function(method:String, ?callback:(err:Null<ts.lib.IError>, params:node.inspector.debugger.EnableReturnType) -> Void):Void { })
	@:overload(function(method:String, ?params:node.inspector.debugger.EvaluateOnCallFrameParameterType, ?callback:(err:Null<ts.lib.IError>, params:node.inspector.debugger.EvaluateOnCallFrameReturnType) -> Void):Void { })
	@:overload(function(method:String, ?callback:(err:Null<ts.lib.IError>, params:node.inspector.debugger.EvaluateOnCallFrameReturnType) -> Void):Void { })
	@:overload(function(method:String, ?params:node.inspector.debugger.GetPossibleBreakpointsParameterType, ?callback:(err:Null<ts.lib.IError>, params:node.inspector.debugger.GetPossibleBreakpointsReturnType) -> Void):Void { })
	@:overload(function(method:String, ?callback:(err:Null<ts.lib.IError>, params:node.inspector.debugger.GetPossibleBreakpointsReturnType) -> Void):Void { })
	@:overload(function(method:String, ?params:node.inspector.debugger.GetScriptSourceParameterType, ?callback:(err:Null<ts.lib.IError>, params:node.inspector.debugger.GetScriptSourceReturnType) -> Void):Void { })
	@:overload(function(method:String, ?callback:(err:Null<ts.lib.IError>, params:node.inspector.debugger.GetScriptSourceReturnType) -> Void):Void { })
	@:overload(function(method:String, ?params:node.inspector.debugger.GetStackTraceParameterType, ?callback:(err:Null<ts.lib.IError>, params:node.inspector.debugger.GetStackTraceReturnType) -> Void):Void { })
	@:overload(function(method:String, ?callback:(err:Null<ts.lib.IError>, params:node.inspector.debugger.GetStackTraceReturnType) -> Void):Void { })
	@:overload(function(method:String, ?callback:(err:Null<ts.lib.IError>) -> Void):Void { })
	@:overload(function(method:String, ?params:node.inspector.debugger.PauseOnAsyncCallParameterType, ?callback:(err:Null<ts.lib.IError>) -> Void):Void { })
	@:overload(function(method:String, ?callback:(err:Null<ts.lib.IError>) -> Void):Void { })
	@:overload(function(method:String, ?params:node.inspector.debugger.RemoveBreakpointParameterType, ?callback:(err:Null<ts.lib.IError>) -> Void):Void { })
	@:overload(function(method:String, ?callback:(err:Null<ts.lib.IError>) -> Void):Void { })
	@:overload(function(method:String, ?params:node.inspector.debugger.RestartFrameParameterType, ?callback:(err:Null<ts.lib.IError>, params:node.inspector.debugger.RestartFrameReturnType) -> Void):Void { })
	@:overload(function(method:String, ?callback:(err:Null<ts.lib.IError>, params:node.inspector.debugger.RestartFrameReturnType) -> Void):Void { })
	@:overload(function(method:String, ?callback:(err:Null<ts.lib.IError>) -> Void):Void { })
	@:overload(function(method:String, ?callback:(err:Null<ts.lib.IError>) -> Void):Void { })
	@:overload(function(method:String, ?params:node.inspector.debugger.SearchInContentParameterType, ?callback:(err:Null<ts.lib.IError>, params:node.inspector.debugger.SearchInContentReturnType) -> Void):Void { })
	@:overload(function(method:String, ?callback:(err:Null<ts.lib.IError>, params:node.inspector.debugger.SearchInContentReturnType) -> Void):Void { })
	@:overload(function(method:String, ?params:node.inspector.debugger.SetAsyncCallStackDepthParameterType, ?callback:(err:Null<ts.lib.IError>) -> Void):Void { })
	@:overload(function(method:String, ?callback:(err:Null<ts.lib.IError>) -> Void):Void { })
	@:overload(function(method:String, ?params:node.inspector.debugger.SetBlackboxPatternsParameterType, ?callback:(err:Null<ts.lib.IError>) -> Void):Void { })
	@:overload(function(method:String, ?callback:(err:Null<ts.lib.IError>) -> Void):Void { })
	@:overload(function(method:String, ?params:node.inspector.debugger.SetBlackboxedRangesParameterType, ?callback:(err:Null<ts.lib.IError>) -> Void):Void { })
	@:overload(function(method:String, ?callback:(err:Null<ts.lib.IError>) -> Void):Void { })
	@:overload(function(method:String, ?params:node.inspector.debugger.SetBreakpointParameterType, ?callback:(err:Null<ts.lib.IError>, params:node.inspector.debugger.SetBreakpointReturnType) -> Void):Void { })
	@:overload(function(method:String, ?callback:(err:Null<ts.lib.IError>, params:node.inspector.debugger.SetBreakpointReturnType) -> Void):Void { })
	@:overload(function(method:String, ?params:node.inspector.debugger.SetBreakpointByUrlParameterType, ?callback:(err:Null<ts.lib.IError>, params:node.inspector.debugger.SetBreakpointByUrlReturnType) -> Void):Void { })
	@:overload(function(method:String, ?callback:(err:Null<ts.lib.IError>, params:node.inspector.debugger.SetBreakpointByUrlReturnType) -> Void):Void { })
	@:overload(function(method:String, ?params:node.inspector.debugger.SetBreakpointOnFunctionCallParameterType, ?callback:(err:Null<ts.lib.IError>, params:node.inspector.debugger.SetBreakpointOnFunctionCallReturnType) -> Void):Void { })
	@:overload(function(method:String, ?callback:(err:Null<ts.lib.IError>, params:node.inspector.debugger.SetBreakpointOnFunctionCallReturnType) -> Void):Void { })
	@:overload(function(method:String, ?params:node.inspector.debugger.SetBreakpointsActiveParameterType, ?callback:(err:Null<ts.lib.IError>) -> Void):Void { })
	@:overload(function(method:String, ?callback:(err:Null<ts.lib.IError>) -> Void):Void { })
	@:overload(function(method:String, ?params:node.inspector.debugger.SetPauseOnExceptionsParameterType, ?callback:(err:Null<ts.lib.IError>) -> Void):Void { })
	@:overload(function(method:String, ?callback:(err:Null<ts.lib.IError>) -> Void):Void { })
	@:overload(function(method:String, ?params:node.inspector.debugger.SetReturnValueParameterType, ?callback:(err:Null<ts.lib.IError>) -> Void):Void { })
	@:overload(function(method:String, ?callback:(err:Null<ts.lib.IError>) -> Void):Void { })
	@:overload(function(method:String, ?params:node.inspector.debugger.SetScriptSourceParameterType, ?callback:(err:Null<ts.lib.IError>, params:node.inspector.debugger.SetScriptSourceReturnType) -> Void):Void { })
	@:overload(function(method:String, ?callback:(err:Null<ts.lib.IError>, params:node.inspector.debugger.SetScriptSourceReturnType) -> Void):Void { })
	@:overload(function(method:String, ?params:node.inspector.debugger.SetSkipAllPausesParameterType, ?callback:(err:Null<ts.lib.IError>) -> Void):Void { })
	@:overload(function(method:String, ?callback:(err:Null<ts.lib.IError>) -> Void):Void { })
	@:overload(function(method:String, ?params:node.inspector.debugger.SetVariableValueParameterType, ?callback:(err:Null<ts.lib.IError>) -> Void):Void { })
	@:overload(function(method:String, ?callback:(err:Null<ts.lib.IError>) -> Void):Void { })
	@:overload(function(method:String, ?params:node.inspector.debugger.StepIntoParameterType, ?callback:(err:Null<ts.lib.IError>) -> Void):Void { })
	@:overload(function(method:String, ?callback:(err:Null<ts.lib.IError>) -> Void):Void { })
	@:overload(function(method:String, ?callback:(err:Null<ts.lib.IError>) -> Void):Void { })
	@:overload(function(method:String, ?callback:(err:Null<ts.lib.IError>) -> Void):Void { })
	@:overload(function(method:String, ?params:node.inspector.heapprofiler.AddInspectedHeapObjectParameterType, ?callback:(err:Null<ts.lib.IError>) -> Void):Void { })
	@:overload(function(method:String, ?callback:(err:Null<ts.lib.IError>) -> Void):Void { })
	@:overload(function(method:String, ?callback:(err:Null<ts.lib.IError>) -> Void):Void { })
	@:overload(function(method:String, ?callback:(err:Null<ts.lib.IError>) -> Void):Void { })
	@:overload(function(method:String, ?callback:(err:Null<ts.lib.IError>) -> Void):Void { })
	@:overload(function(method:String, ?params:node.inspector.heapprofiler.GetHeapObjectIdParameterType, ?callback:(err:Null<ts.lib.IError>, params:node.inspector.heapprofiler.GetHeapObjectIdReturnType) -> Void):Void { })
	@:overload(function(method:String, ?callback:(err:Null<ts.lib.IError>, params:node.inspector.heapprofiler.GetHeapObjectIdReturnType) -> Void):Void { })
	@:overload(function(method:String, ?params:node.inspector.heapprofiler.GetObjectByHeapObjectIdParameterType, ?callback:(err:Null<ts.lib.IError>, params:node.inspector.heapprofiler.GetObjectByHeapObjectIdReturnType) -> Void):Void { })
	@:overload(function(method:String, ?callback:(err:Null<ts.lib.IError>, params:node.inspector.heapprofiler.GetObjectByHeapObjectIdReturnType) -> Void):Void { })
	@:overload(function(method:String, ?callback:(err:Null<ts.lib.IError>, params:node.inspector.heapprofiler.GetSamplingProfileReturnType) -> Void):Void { })
	@:overload(function(method:String, ?params:node.inspector.heapprofiler.StartSamplingParameterType, ?callback:(err:Null<ts.lib.IError>) -> Void):Void { })
	@:overload(function(method:String, ?callback:(err:Null<ts.lib.IError>) -> Void):Void { })
	@:overload(function(method:String, ?params:node.inspector.heapprofiler.StartTrackingHeapObjectsParameterType, ?callback:(err:Null<ts.lib.IError>) -> Void):Void { })
	@:overload(function(method:String, ?callback:(err:Null<ts.lib.IError>) -> Void):Void { })
	@:overload(function(method:String, ?callback:(err:Null<ts.lib.IError>, params:node.inspector.heapprofiler.StopSamplingReturnType) -> Void):Void { })
	@:overload(function(method:String, ?params:node.inspector.heapprofiler.StopTrackingHeapObjectsParameterType, ?callback:(err:Null<ts.lib.IError>) -> Void):Void { })
	@:overload(function(method:String, ?callback:(err:Null<ts.lib.IError>) -> Void):Void { })
	@:overload(function(method:String, ?params:node.inspector.heapprofiler.TakeHeapSnapshotParameterType, ?callback:(err:Null<ts.lib.IError>) -> Void):Void { })
	@:overload(function(method:String, ?callback:(err:Null<ts.lib.IError>) -> Void):Void { })
	@:overload(function(method:String, ?callback:(err:Null<ts.lib.IError>) -> Void):Void { })
	@:overload(function(method:String, ?callback:(err:Null<ts.lib.IError>) -> Void):Void { })
	@:overload(function(method:String, ?callback:(err:Null<ts.lib.IError>, params:node.inspector.profiler.GetBestEffortCoverageReturnType) -> Void):Void { })
	@:overload(function(method:String, ?params:node.inspector.profiler.SetSamplingIntervalParameterType, ?callback:(err:Null<ts.lib.IError>) -> Void):Void { })
	@:overload(function(method:String, ?callback:(err:Null<ts.lib.IError>) -> Void):Void { })
	@:overload(function(method:String, ?callback:(err:Null<ts.lib.IError>) -> Void):Void { })
	@:overload(function(method:String, ?params:node.inspector.profiler.StartPreciseCoverageParameterType, ?callback:(err:Null<ts.lib.IError>) -> Void):Void { })
	@:overload(function(method:String, ?callback:(err:Null<ts.lib.IError>) -> Void):Void { })
	@:overload(function(method:String, ?callback:(err:Null<ts.lib.IError>) -> Void):Void { })
	@:overload(function(method:String, ?callback:(err:Null<ts.lib.IError>, params:node.inspector.profiler.StopReturnType) -> Void):Void { })
	@:overload(function(method:String, ?callback:(err:Null<ts.lib.IError>) -> Void):Void { })
	@:overload(function(method:String, ?callback:(err:Null<ts.lib.IError>) -> Void):Void { })
	@:overload(function(method:String, ?callback:(err:Null<ts.lib.IError>, params:node.inspector.profiler.TakePreciseCoverageReturnType) -> Void):Void { })
	@:overload(function(method:String, ?callback:(err:Null<ts.lib.IError>, params:node.inspector.profiler.TakeTypeProfileReturnType) -> Void):Void { })
	@:overload(function(method:String, ?params:node.inspector.runtime.AwaitPromiseParameterType, ?callback:(err:Null<ts.lib.IError>, params:node.inspector.runtime.AwaitPromiseReturnType) -> Void):Void { })
	@:overload(function(method:String, ?callback:(err:Null<ts.lib.IError>, params:node.inspector.runtime.AwaitPromiseReturnType) -> Void):Void { })
	@:overload(function(method:String, ?params:node.inspector.runtime.CallFunctionOnParameterType, ?callback:(err:Null<ts.lib.IError>, params:node.inspector.runtime.CallFunctionOnReturnType) -> Void):Void { })
	@:overload(function(method:String, ?callback:(err:Null<ts.lib.IError>, params:node.inspector.runtime.CallFunctionOnReturnType) -> Void):Void { })
	@:overload(function(method:String, ?params:node.inspector.runtime.CompileScriptParameterType, ?callback:(err:Null<ts.lib.IError>, params:node.inspector.runtime.CompileScriptReturnType) -> Void):Void { })
	@:overload(function(method:String, ?callback:(err:Null<ts.lib.IError>, params:node.inspector.runtime.CompileScriptReturnType) -> Void):Void { })
	@:overload(function(method:String, ?callback:(err:Null<ts.lib.IError>) -> Void):Void { })
	@:overload(function(method:String, ?callback:(err:Null<ts.lib.IError>) -> Void):Void { })
	@:overload(function(method:String, ?callback:(err:Null<ts.lib.IError>) -> Void):Void { })
	@:overload(function(method:String, ?params:node.inspector.runtime.EvaluateParameterType, ?callback:(err:Null<ts.lib.IError>, params:node.inspector.runtime.EvaluateReturnType) -> Void):Void { })
	@:overload(function(method:String, ?callback:(err:Null<ts.lib.IError>, params:node.inspector.runtime.EvaluateReturnType) -> Void):Void { })
	@:overload(function(method:String, ?callback:(err:Null<ts.lib.IError>, params:node.inspector.runtime.GetIsolateIdReturnType) -> Void):Void { })
	@:overload(function(method:String, ?callback:(err:Null<ts.lib.IError>, params:node.inspector.runtime.GetHeapUsageReturnType) -> Void):Void { })
	@:overload(function(method:String, ?params:node.inspector.runtime.GetPropertiesParameterType, ?callback:(err:Null<ts.lib.IError>, params:node.inspector.runtime.GetPropertiesReturnType) -> Void):Void { })
	@:overload(function(method:String, ?callback:(err:Null<ts.lib.IError>, params:node.inspector.runtime.GetPropertiesReturnType) -> Void):Void { })
	@:overload(function(method:String, ?params:node.inspector.runtime.GlobalLexicalScopeNamesParameterType, ?callback:(err:Null<ts.lib.IError>, params:node.inspector.runtime.GlobalLexicalScopeNamesReturnType) -> Void):Void { })
	@:overload(function(method:String, ?callback:(err:Null<ts.lib.IError>, params:node.inspector.runtime.GlobalLexicalScopeNamesReturnType) -> Void):Void { })
	@:overload(function(method:String, ?params:node.inspector.runtime.QueryObjectsParameterType, ?callback:(err:Null<ts.lib.IError>, params:node.inspector.runtime.QueryObjectsReturnType) -> Void):Void { })
	@:overload(function(method:String, ?callback:(err:Null<ts.lib.IError>, params:node.inspector.runtime.QueryObjectsReturnType) -> Void):Void { })
	@:overload(function(method:String, ?params:node.inspector.runtime.ReleaseObjectParameterType, ?callback:(err:Null<ts.lib.IError>) -> Void):Void { })
	@:overload(function(method:String, ?callback:(err:Null<ts.lib.IError>) -> Void):Void { })
	@:overload(function(method:String, ?params:node.inspector.runtime.ReleaseObjectGroupParameterType, ?callback:(err:Null<ts.lib.IError>) -> Void):Void { })
	@:overload(function(method:String, ?callback:(err:Null<ts.lib.IError>) -> Void):Void { })
	@:overload(function(method:String, ?callback:(err:Null<ts.lib.IError>) -> Void):Void { })
	@:overload(function(method:String, ?params:node.inspector.runtime.RunScriptParameterType, ?callback:(err:Null<ts.lib.IError>, params:node.inspector.runtime.RunScriptReturnType) -> Void):Void { })
	@:overload(function(method:String, ?callback:(err:Null<ts.lib.IError>, params:node.inspector.runtime.RunScriptReturnType) -> Void):Void { })
	@:overload(function(method:String, ?params:node.inspector.runtime.SetCustomObjectFormatterEnabledParameterType, ?callback:(err:Null<ts.lib.IError>) -> Void):Void { })
	@:overload(function(method:String, ?callback:(err:Null<ts.lib.IError>) -> Void):Void { })
	@:overload(function(method:String, ?callback:(err:Null<ts.lib.IError>) -> Void):Void { })
	@:overload(function(method:String, ?callback:(err:Null<ts.lib.IError>, params:node.inspector.schema.GetDomainsReturnType) -> Void):Void { })
	@:overload(function(method:String, ?callback:(err:Null<ts.lib.IError>, params:node.inspector.nodetracing.GetCategoriesReturnType) -> Void):Void { })
	@:overload(function(method:String, ?params:node.inspector.nodetracing.StartParameterType, ?callback:(err:Null<ts.lib.IError>) -> Void):Void { })
	@:overload(function(method:String, ?callback:(err:Null<ts.lib.IError>) -> Void):Void { })
	@:overload(function(method:String, ?callback:(err:Null<ts.lib.IError>) -> Void):Void { })
	@:overload(function(method:String, ?params:node.inspector.nodeworker.SendMessageToWorkerParameterType, ?callback:(err:Null<ts.lib.IError>) -> Void):Void { })
	@:overload(function(method:String, ?callback:(err:Null<ts.lib.IError>) -> Void):Void { })
	@:overload(function(method:String, ?params:node.inspector.nodeworker.EnableParameterType, ?callback:(err:Null<ts.lib.IError>) -> Void):Void { })
	@:overload(function(method:String, ?callback:(err:Null<ts.lib.IError>) -> Void):Void { })
	@:overload(function(method:String, ?callback:(err:Null<ts.lib.IError>) -> Void):Void { })
	function post(method:String, ?params:{ }, ?callback:ts.AnyOf2<(err:Null<ts.lib.IError>) -> Void, (err:Null<ts.lib.IError>, params:{ }) -> Void>):Void;
}