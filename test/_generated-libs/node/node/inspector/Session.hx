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
	@:overload(function(method:String, ?callback:ts.AnyOf2<(err:Null<js.lib.Error>) -> Void, (err:Null<js.lib.Error>, params:{ }) -> Void>):Void { })
	@:overload(function(method:String, ?callback:(err:Null<js.lib.Error>) -> Void):Void { })
	@:overload(function(method:String, ?callback:(err:Null<js.lib.Error>) -> Void):Void { })
	@:overload(function(method:String, ?callback:(err:Null<js.lib.Error>) -> Void):Void { })
	@:overload(function(method:String, ?params:node.inspector.debugger.ContinueToLocationParameterType, ?callback:(err:Null<js.lib.Error>) -> Void):Void { })
	@:overload(function(method:String, ?callback:(err:Null<js.lib.Error>) -> Void):Void { })
	@:overload(function(method:String, ?callback:(err:Null<js.lib.Error>) -> Void):Void { })
	@:overload(function(method:String, ?callback:(err:Null<js.lib.Error>, params:node.inspector.debugger.EnableReturnType) -> Void):Void { })
	@:overload(function(method:String, ?params:node.inspector.debugger.EvaluateOnCallFrameParameterType, ?callback:(err:Null<js.lib.Error>, params:node.inspector.debugger.EvaluateOnCallFrameReturnType) -> Void):Void { })
	@:overload(function(method:String, ?callback:(err:Null<js.lib.Error>, params:node.inspector.debugger.EvaluateOnCallFrameReturnType) -> Void):Void { })
	@:overload(function(method:String, ?params:node.inspector.debugger.GetPossibleBreakpointsParameterType, ?callback:(err:Null<js.lib.Error>, params:node.inspector.debugger.GetPossibleBreakpointsReturnType) -> Void):Void { })
	@:overload(function(method:String, ?callback:(err:Null<js.lib.Error>, params:node.inspector.debugger.GetPossibleBreakpointsReturnType) -> Void):Void { })
	@:overload(function(method:String, ?params:node.inspector.debugger.GetScriptSourceParameterType, ?callback:(err:Null<js.lib.Error>, params:node.inspector.debugger.GetScriptSourceReturnType) -> Void):Void { })
	@:overload(function(method:String, ?callback:(err:Null<js.lib.Error>, params:node.inspector.debugger.GetScriptSourceReturnType) -> Void):Void { })
	@:overload(function(method:String, ?params:node.inspector.debugger.GetStackTraceParameterType, ?callback:(err:Null<js.lib.Error>, params:node.inspector.debugger.GetStackTraceReturnType) -> Void):Void { })
	@:overload(function(method:String, ?callback:(err:Null<js.lib.Error>, params:node.inspector.debugger.GetStackTraceReturnType) -> Void):Void { })
	@:overload(function(method:String, ?callback:(err:Null<js.lib.Error>) -> Void):Void { })
	@:overload(function(method:String, ?params:node.inspector.debugger.PauseOnAsyncCallParameterType, ?callback:(err:Null<js.lib.Error>) -> Void):Void { })
	@:overload(function(method:String, ?callback:(err:Null<js.lib.Error>) -> Void):Void { })
	@:overload(function(method:String, ?params:node.inspector.debugger.RemoveBreakpointParameterType, ?callback:(err:Null<js.lib.Error>) -> Void):Void { })
	@:overload(function(method:String, ?callback:(err:Null<js.lib.Error>) -> Void):Void { })
	@:overload(function(method:String, ?params:node.inspector.debugger.RestartFrameParameterType, ?callback:(err:Null<js.lib.Error>, params:node.inspector.debugger.RestartFrameReturnType) -> Void):Void { })
	@:overload(function(method:String, ?callback:(err:Null<js.lib.Error>, params:node.inspector.debugger.RestartFrameReturnType) -> Void):Void { })
	@:overload(function(method:String, ?callback:(err:Null<js.lib.Error>) -> Void):Void { })
	@:overload(function(method:String, ?callback:(err:Null<js.lib.Error>) -> Void):Void { })
	@:overload(function(method:String, ?params:node.inspector.debugger.SearchInContentParameterType, ?callback:(err:Null<js.lib.Error>, params:node.inspector.debugger.SearchInContentReturnType) -> Void):Void { })
	@:overload(function(method:String, ?callback:(err:Null<js.lib.Error>, params:node.inspector.debugger.SearchInContentReturnType) -> Void):Void { })
	@:overload(function(method:String, ?params:node.inspector.debugger.SetAsyncCallStackDepthParameterType, ?callback:(err:Null<js.lib.Error>) -> Void):Void { })
	@:overload(function(method:String, ?callback:(err:Null<js.lib.Error>) -> Void):Void { })
	@:overload(function(method:String, ?params:node.inspector.debugger.SetBlackboxPatternsParameterType, ?callback:(err:Null<js.lib.Error>) -> Void):Void { })
	@:overload(function(method:String, ?callback:(err:Null<js.lib.Error>) -> Void):Void { })
	@:overload(function(method:String, ?params:node.inspector.debugger.SetBlackboxedRangesParameterType, ?callback:(err:Null<js.lib.Error>) -> Void):Void { })
	@:overload(function(method:String, ?callback:(err:Null<js.lib.Error>) -> Void):Void { })
	@:overload(function(method:String, ?params:node.inspector.debugger.SetBreakpointParameterType, ?callback:(err:Null<js.lib.Error>, params:node.inspector.debugger.SetBreakpointReturnType) -> Void):Void { })
	@:overload(function(method:String, ?callback:(err:Null<js.lib.Error>, params:node.inspector.debugger.SetBreakpointReturnType) -> Void):Void { })
	@:overload(function(method:String, ?params:node.inspector.debugger.SetBreakpointByUrlParameterType, ?callback:(err:Null<js.lib.Error>, params:node.inspector.debugger.SetBreakpointByUrlReturnType) -> Void):Void { })
	@:overload(function(method:String, ?callback:(err:Null<js.lib.Error>, params:node.inspector.debugger.SetBreakpointByUrlReturnType) -> Void):Void { })
	@:overload(function(method:String, ?params:node.inspector.debugger.SetBreakpointOnFunctionCallParameterType, ?callback:(err:Null<js.lib.Error>, params:node.inspector.debugger.SetBreakpointOnFunctionCallReturnType) -> Void):Void { })
	@:overload(function(method:String, ?callback:(err:Null<js.lib.Error>, params:node.inspector.debugger.SetBreakpointOnFunctionCallReturnType) -> Void):Void { })
	@:overload(function(method:String, ?params:node.inspector.debugger.SetBreakpointsActiveParameterType, ?callback:(err:Null<js.lib.Error>) -> Void):Void { })
	@:overload(function(method:String, ?callback:(err:Null<js.lib.Error>) -> Void):Void { })
	@:overload(function(method:String, ?params:node.inspector.debugger.SetPauseOnExceptionsParameterType, ?callback:(err:Null<js.lib.Error>) -> Void):Void { })
	@:overload(function(method:String, ?callback:(err:Null<js.lib.Error>) -> Void):Void { })
	@:overload(function(method:String, ?params:node.inspector.debugger.SetReturnValueParameterType, ?callback:(err:Null<js.lib.Error>) -> Void):Void { })
	@:overload(function(method:String, ?callback:(err:Null<js.lib.Error>) -> Void):Void { })
	@:overload(function(method:String, ?params:node.inspector.debugger.SetScriptSourceParameterType, ?callback:(err:Null<js.lib.Error>, params:node.inspector.debugger.SetScriptSourceReturnType) -> Void):Void { })
	@:overload(function(method:String, ?callback:(err:Null<js.lib.Error>, params:node.inspector.debugger.SetScriptSourceReturnType) -> Void):Void { })
	@:overload(function(method:String, ?params:node.inspector.debugger.SetSkipAllPausesParameterType, ?callback:(err:Null<js.lib.Error>) -> Void):Void { })
	@:overload(function(method:String, ?callback:(err:Null<js.lib.Error>) -> Void):Void { })
	@:overload(function(method:String, ?params:node.inspector.debugger.SetVariableValueParameterType, ?callback:(err:Null<js.lib.Error>) -> Void):Void { })
	@:overload(function(method:String, ?callback:(err:Null<js.lib.Error>) -> Void):Void { })
	@:overload(function(method:String, ?params:node.inspector.debugger.StepIntoParameterType, ?callback:(err:Null<js.lib.Error>) -> Void):Void { })
	@:overload(function(method:String, ?callback:(err:Null<js.lib.Error>) -> Void):Void { })
	@:overload(function(method:String, ?callback:(err:Null<js.lib.Error>) -> Void):Void { })
	@:overload(function(method:String, ?callback:(err:Null<js.lib.Error>) -> Void):Void { })
	@:overload(function(method:String, ?params:node.inspector.heapprofiler.AddInspectedHeapObjectParameterType, ?callback:(err:Null<js.lib.Error>) -> Void):Void { })
	@:overload(function(method:String, ?callback:(err:Null<js.lib.Error>) -> Void):Void { })
	@:overload(function(method:String, ?callback:(err:Null<js.lib.Error>) -> Void):Void { })
	@:overload(function(method:String, ?callback:(err:Null<js.lib.Error>) -> Void):Void { })
	@:overload(function(method:String, ?callback:(err:Null<js.lib.Error>) -> Void):Void { })
	@:overload(function(method:String, ?params:node.inspector.heapprofiler.GetHeapObjectIdParameterType, ?callback:(err:Null<js.lib.Error>, params:node.inspector.heapprofiler.GetHeapObjectIdReturnType) -> Void):Void { })
	@:overload(function(method:String, ?callback:(err:Null<js.lib.Error>, params:node.inspector.heapprofiler.GetHeapObjectIdReturnType) -> Void):Void { })
	@:overload(function(method:String, ?params:node.inspector.heapprofiler.GetObjectByHeapObjectIdParameterType, ?callback:(err:Null<js.lib.Error>, params:node.inspector.heapprofiler.GetObjectByHeapObjectIdReturnType) -> Void):Void { })
	@:overload(function(method:String, ?callback:(err:Null<js.lib.Error>, params:node.inspector.heapprofiler.GetObjectByHeapObjectIdReturnType) -> Void):Void { })
	@:overload(function(method:String, ?callback:(err:Null<js.lib.Error>, params:node.inspector.heapprofiler.GetSamplingProfileReturnType) -> Void):Void { })
	@:overload(function(method:String, ?params:node.inspector.heapprofiler.StartSamplingParameterType, ?callback:(err:Null<js.lib.Error>) -> Void):Void { })
	@:overload(function(method:String, ?callback:(err:Null<js.lib.Error>) -> Void):Void { })
	@:overload(function(method:String, ?params:node.inspector.heapprofiler.StartTrackingHeapObjectsParameterType, ?callback:(err:Null<js.lib.Error>) -> Void):Void { })
	@:overload(function(method:String, ?callback:(err:Null<js.lib.Error>) -> Void):Void { })
	@:overload(function(method:String, ?callback:(err:Null<js.lib.Error>, params:node.inspector.heapprofiler.StopSamplingReturnType) -> Void):Void { })
	@:overload(function(method:String, ?params:node.inspector.heapprofiler.StopTrackingHeapObjectsParameterType, ?callback:(err:Null<js.lib.Error>) -> Void):Void { })
	@:overload(function(method:String, ?callback:(err:Null<js.lib.Error>) -> Void):Void { })
	@:overload(function(method:String, ?params:node.inspector.heapprofiler.TakeHeapSnapshotParameterType, ?callback:(err:Null<js.lib.Error>) -> Void):Void { })
	@:overload(function(method:String, ?callback:(err:Null<js.lib.Error>) -> Void):Void { })
	@:overload(function(method:String, ?callback:(err:Null<js.lib.Error>) -> Void):Void { })
	@:overload(function(method:String, ?callback:(err:Null<js.lib.Error>) -> Void):Void { })
	@:overload(function(method:String, ?callback:(err:Null<js.lib.Error>, params:node.inspector.profiler.GetBestEffortCoverageReturnType) -> Void):Void { })
	@:overload(function(method:String, ?params:node.inspector.profiler.SetSamplingIntervalParameterType, ?callback:(err:Null<js.lib.Error>) -> Void):Void { })
	@:overload(function(method:String, ?callback:(err:Null<js.lib.Error>) -> Void):Void { })
	@:overload(function(method:String, ?callback:(err:Null<js.lib.Error>) -> Void):Void { })
	@:overload(function(method:String, ?params:node.inspector.profiler.StartPreciseCoverageParameterType, ?callback:(err:Null<js.lib.Error>) -> Void):Void { })
	@:overload(function(method:String, ?callback:(err:Null<js.lib.Error>) -> Void):Void { })
	@:overload(function(method:String, ?callback:(err:Null<js.lib.Error>) -> Void):Void { })
	@:overload(function(method:String, ?callback:(err:Null<js.lib.Error>, params:node.inspector.profiler.StopReturnType) -> Void):Void { })
	@:overload(function(method:String, ?callback:(err:Null<js.lib.Error>) -> Void):Void { })
	@:overload(function(method:String, ?callback:(err:Null<js.lib.Error>) -> Void):Void { })
	@:overload(function(method:String, ?callback:(err:Null<js.lib.Error>, params:node.inspector.profiler.TakePreciseCoverageReturnType) -> Void):Void { })
	@:overload(function(method:String, ?callback:(err:Null<js.lib.Error>, params:node.inspector.profiler.TakeTypeProfileReturnType) -> Void):Void { })
	@:overload(function(method:String, ?params:node.inspector.runtime.AwaitPromiseParameterType, ?callback:(err:Null<js.lib.Error>, params:node.inspector.runtime.AwaitPromiseReturnType) -> Void):Void { })
	@:overload(function(method:String, ?callback:(err:Null<js.lib.Error>, params:node.inspector.runtime.AwaitPromiseReturnType) -> Void):Void { })
	@:overload(function(method:String, ?params:node.inspector.runtime.CallFunctionOnParameterType, ?callback:(err:Null<js.lib.Error>, params:node.inspector.runtime.CallFunctionOnReturnType) -> Void):Void { })
	@:overload(function(method:String, ?callback:(err:Null<js.lib.Error>, params:node.inspector.runtime.CallFunctionOnReturnType) -> Void):Void { })
	@:overload(function(method:String, ?params:node.inspector.runtime.CompileScriptParameterType, ?callback:(err:Null<js.lib.Error>, params:node.inspector.runtime.CompileScriptReturnType) -> Void):Void { })
	@:overload(function(method:String, ?callback:(err:Null<js.lib.Error>, params:node.inspector.runtime.CompileScriptReturnType) -> Void):Void { })
	@:overload(function(method:String, ?callback:(err:Null<js.lib.Error>) -> Void):Void { })
	@:overload(function(method:String, ?callback:(err:Null<js.lib.Error>) -> Void):Void { })
	@:overload(function(method:String, ?callback:(err:Null<js.lib.Error>) -> Void):Void { })
	@:overload(function(method:String, ?params:node.inspector.runtime.EvaluateParameterType, ?callback:(err:Null<js.lib.Error>, params:node.inspector.runtime.EvaluateReturnType) -> Void):Void { })
	@:overload(function(method:String, ?callback:(err:Null<js.lib.Error>, params:node.inspector.runtime.EvaluateReturnType) -> Void):Void { })
	@:overload(function(method:String, ?callback:(err:Null<js.lib.Error>, params:node.inspector.runtime.GetIsolateIdReturnType) -> Void):Void { })
	@:overload(function(method:String, ?callback:(err:Null<js.lib.Error>, params:node.inspector.runtime.GetHeapUsageReturnType) -> Void):Void { })
	@:overload(function(method:String, ?params:node.inspector.runtime.GetPropertiesParameterType, ?callback:(err:Null<js.lib.Error>, params:node.inspector.runtime.GetPropertiesReturnType) -> Void):Void { })
	@:overload(function(method:String, ?callback:(err:Null<js.lib.Error>, params:node.inspector.runtime.GetPropertiesReturnType) -> Void):Void { })
	@:overload(function(method:String, ?params:node.inspector.runtime.GlobalLexicalScopeNamesParameterType, ?callback:(err:Null<js.lib.Error>, params:node.inspector.runtime.GlobalLexicalScopeNamesReturnType) -> Void):Void { })
	@:overload(function(method:String, ?callback:(err:Null<js.lib.Error>, params:node.inspector.runtime.GlobalLexicalScopeNamesReturnType) -> Void):Void { })
	@:overload(function(method:String, ?params:node.inspector.runtime.QueryObjectsParameterType, ?callback:(err:Null<js.lib.Error>, params:node.inspector.runtime.QueryObjectsReturnType) -> Void):Void { })
	@:overload(function(method:String, ?callback:(err:Null<js.lib.Error>, params:node.inspector.runtime.QueryObjectsReturnType) -> Void):Void { })
	@:overload(function(method:String, ?params:node.inspector.runtime.ReleaseObjectParameterType, ?callback:(err:Null<js.lib.Error>) -> Void):Void { })
	@:overload(function(method:String, ?callback:(err:Null<js.lib.Error>) -> Void):Void { })
	@:overload(function(method:String, ?params:node.inspector.runtime.ReleaseObjectGroupParameterType, ?callback:(err:Null<js.lib.Error>) -> Void):Void { })
	@:overload(function(method:String, ?callback:(err:Null<js.lib.Error>) -> Void):Void { })
	@:overload(function(method:String, ?callback:(err:Null<js.lib.Error>) -> Void):Void { })
	@:overload(function(method:String, ?params:node.inspector.runtime.RunScriptParameterType, ?callback:(err:Null<js.lib.Error>, params:node.inspector.runtime.RunScriptReturnType) -> Void):Void { })
	@:overload(function(method:String, ?callback:(err:Null<js.lib.Error>, params:node.inspector.runtime.RunScriptReturnType) -> Void):Void { })
	@:overload(function(method:String, ?params:node.inspector.runtime.SetCustomObjectFormatterEnabledParameterType, ?callback:(err:Null<js.lib.Error>) -> Void):Void { })
	@:overload(function(method:String, ?callback:(err:Null<js.lib.Error>) -> Void):Void { })
	@:overload(function(method:String, ?callback:(err:Null<js.lib.Error>) -> Void):Void { })
	@:overload(function(method:String, ?callback:(err:Null<js.lib.Error>, params:node.inspector.schema.GetDomainsReturnType) -> Void):Void { })
	@:overload(function(method:String, ?callback:(err:Null<js.lib.Error>, params:node.inspector.nodetracing.GetCategoriesReturnType) -> Void):Void { })
	@:overload(function(method:String, ?params:node.inspector.nodetracing.StartParameterType, ?callback:(err:Null<js.lib.Error>) -> Void):Void { })
	@:overload(function(method:String, ?callback:(err:Null<js.lib.Error>) -> Void):Void { })
	@:overload(function(method:String, ?callback:(err:Null<js.lib.Error>) -> Void):Void { })
	@:overload(function(method:String, ?params:node.inspector.nodeworker.SendMessageToWorkerParameterType, ?callback:(err:Null<js.lib.Error>) -> Void):Void { })
	@:overload(function(method:String, ?callback:(err:Null<js.lib.Error>) -> Void):Void { })
	@:overload(function(method:String, ?params:node.inspector.nodeworker.EnableParameterType, ?callback:(err:Null<js.lib.Error>) -> Void):Void { })
	@:overload(function(method:String, ?callback:(err:Null<js.lib.Error>) -> Void):Void { })
	@:overload(function(method:String, ?callback:(err:Null<js.lib.Error>) -> Void):Void { })
	function post(method:String, ?params:{ }, ?callback:ts.AnyOf2<(err:Null<js.lib.Error>) -> Void, (err:Null<js.lib.Error>, params:{ }) -> Void>):Void;
	/**
		Emitted when any notification from the V8 Inspector is received.
		
		Issued when new console message is added.
		
		Fired when breakpoint is resolved to an actual script and location.
		
		Fired when the virtual machine stopped on breakpoint or exception or any other stop criteria.
		
		Fired when the virtual machine resumed execution.
		
		Fired when virtual machine fails to parse the script.
		
		Fired when virtual machine parses script. This event is also fired for all known and uncollected
		scripts upon enabling debugger.
		
		If heap objects tracking has been started then backend may send update for one or more fragments
		
		If heap objects tracking has been started then backend regularly sends a current value for last
		seen object id and corresponding timestamp. If the were changes in the heap since last event
		then one or more heapStatsUpdate events will be sent before a new lastSeenObjectId event.
		
		Sent when new profile recording is started using console.profile() call.
		
		Issued when console API was called.
		
		Issued when unhandled exception was revoked.
		
		Issued when exception was thrown and unhandled.
		
		Issued when new execution context is created.
		
		Issued when execution context is destroyed.
		
		Issued when all executionContexts were cleared in browser
		
		Issued when object should be inspected (for example, as a result of inspect() command line API
		call).
		
		Contains an bucket of collected trace events.
		
		Signals that tracing is stopped and there is no trace buffers pending flush, all data were
		delivered via dataCollected events.
		
		Issued when attached to a worker.
		
		Issued when detached from the worker.
		
		Notifies about a new protocol message received from the session
		(session ID is provided in attachedToWorker notification).
	**/
	@:overload(function(event:String, listener:(message:InspectorNotification<{ }>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:InspectorNotification<node.inspector.console.MessageAddedEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:InspectorNotification<node.inspector.debugger.BreakpointResolvedEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:InspectorNotification<node.inspector.debugger.PausedEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:() -> Void):Session { })
	@:overload(function(event:String, listener:(message:InspectorNotification<node.inspector.debugger.ScriptFailedToParseEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:InspectorNotification<node.inspector.debugger.ScriptParsedEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:InspectorNotification<node.inspector.heapprofiler.AddHeapSnapshotChunkEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:InspectorNotification<node.inspector.heapprofiler.HeapStatsUpdateEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:InspectorNotification<node.inspector.heapprofiler.LastSeenObjectIdEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:InspectorNotification<node.inspector.heapprofiler.ReportHeapSnapshotProgressEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:() -> Void):Session { })
	@:overload(function(event:String, listener:(message:InspectorNotification<node.inspector.profiler.ConsoleProfileFinishedEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:InspectorNotification<node.inspector.profiler.ConsoleProfileStartedEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:InspectorNotification<node.inspector.runtime.ConsoleAPICalledEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:InspectorNotification<node.inspector.runtime.ExceptionRevokedEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:InspectorNotification<node.inspector.runtime.ExceptionThrownEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:InspectorNotification<node.inspector.runtime.ExecutionContextCreatedEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:InspectorNotification<node.inspector.runtime.ExecutionContextDestroyedEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:() -> Void):Session { })
	@:overload(function(event:String, listener:(message:InspectorNotification<node.inspector.runtime.InspectRequestedEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:InspectorNotification<node.inspector.nodetracing.DataCollectedEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:() -> Void):Session { })
	@:overload(function(event:String, listener:(message:InspectorNotification<node.inspector.nodeworker.AttachedToWorkerEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:InspectorNotification<node.inspector.nodeworker.DetachedFromWorkerEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:InspectorNotification<node.inspector.nodeworker.ReceivedMessageFromWorkerEventDataType>) -> Void):Session { })
	function addListener(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Session;
	@:overload(function(event:String, message:InspectorNotification<{ }>):Bool { })
	@:overload(function(event:String, message:InspectorNotification<node.inspector.console.MessageAddedEventDataType>):Bool { })
	@:overload(function(event:String, message:InspectorNotification<node.inspector.debugger.BreakpointResolvedEventDataType>):Bool { })
	@:overload(function(event:String, message:InspectorNotification<node.inspector.debugger.PausedEventDataType>):Bool { })
	@:overload(function(event:String):Bool { })
	@:overload(function(event:String, message:InspectorNotification<node.inspector.debugger.ScriptFailedToParseEventDataType>):Bool { })
	@:overload(function(event:String, message:InspectorNotification<node.inspector.debugger.ScriptParsedEventDataType>):Bool { })
	@:overload(function(event:String, message:InspectorNotification<node.inspector.heapprofiler.AddHeapSnapshotChunkEventDataType>):Bool { })
	@:overload(function(event:String, message:InspectorNotification<node.inspector.heapprofiler.HeapStatsUpdateEventDataType>):Bool { })
	@:overload(function(event:String, message:InspectorNotification<node.inspector.heapprofiler.LastSeenObjectIdEventDataType>):Bool { })
	@:overload(function(event:String, message:InspectorNotification<node.inspector.heapprofiler.ReportHeapSnapshotProgressEventDataType>):Bool { })
	@:overload(function(event:String):Bool { })
	@:overload(function(event:String, message:InspectorNotification<node.inspector.profiler.ConsoleProfileFinishedEventDataType>):Bool { })
	@:overload(function(event:String, message:InspectorNotification<node.inspector.profiler.ConsoleProfileStartedEventDataType>):Bool { })
	@:overload(function(event:String, message:InspectorNotification<node.inspector.runtime.ConsoleAPICalledEventDataType>):Bool { })
	@:overload(function(event:String, message:InspectorNotification<node.inspector.runtime.ExceptionRevokedEventDataType>):Bool { })
	@:overload(function(event:String, message:InspectorNotification<node.inspector.runtime.ExceptionThrownEventDataType>):Bool { })
	@:overload(function(event:String, message:InspectorNotification<node.inspector.runtime.ExecutionContextCreatedEventDataType>):Bool { })
	@:overload(function(event:String, message:InspectorNotification<node.inspector.runtime.ExecutionContextDestroyedEventDataType>):Bool { })
	@:overload(function(event:String):Bool { })
	@:overload(function(event:String, message:InspectorNotification<node.inspector.runtime.InspectRequestedEventDataType>):Bool { })
	@:overload(function(event:String, message:InspectorNotification<node.inspector.nodetracing.DataCollectedEventDataType>):Bool { })
	@:overload(function(event:String):Bool { })
	@:overload(function(event:String, message:InspectorNotification<node.inspector.nodeworker.AttachedToWorkerEventDataType>):Bool { })
	@:overload(function(event:String, message:InspectorNotification<node.inspector.nodeworker.DetachedFromWorkerEventDataType>):Bool { })
	@:overload(function(event:String, message:InspectorNotification<node.inspector.nodeworker.ReceivedMessageFromWorkerEventDataType>):Bool { })
	function emit(event:ts.AnyOf2<String, js.lib.Symbol>, args:haxe.extern.Rest<Dynamic>):Bool;
	/**
		Emitted when any notification from the V8 Inspector is received.
		
		Issued when new console message is added.
		
		Fired when breakpoint is resolved to an actual script and location.
		
		Fired when the virtual machine stopped on breakpoint or exception or any other stop criteria.
		
		Fired when the virtual machine resumed execution.
		
		Fired when virtual machine fails to parse the script.
		
		Fired when virtual machine parses script. This event is also fired for all known and uncollected
		scripts upon enabling debugger.
		
		If heap objects tracking has been started then backend may send update for one or more fragments
		
		If heap objects tracking has been started then backend regularly sends a current value for last
		seen object id and corresponding timestamp. If the were changes in the heap since last event
		then one or more heapStatsUpdate events will be sent before a new lastSeenObjectId event.
		
		Sent when new profile recording is started using console.profile() call.
		
		Issued when console API was called.
		
		Issued when unhandled exception was revoked.
		
		Issued when exception was thrown and unhandled.
		
		Issued when new execution context is created.
		
		Issued when execution context is destroyed.
		
		Issued when all executionContexts were cleared in browser
		
		Issued when object should be inspected (for example, as a result of inspect() command line API
		call).
		
		Contains an bucket of collected trace events.
		
		Signals that tracing is stopped and there is no trace buffers pending flush, all data were
		delivered via dataCollected events.
		
		Issued when attached to a worker.
		
		Issued when detached from the worker.
		
		Notifies about a new protocol message received from the session
		(session ID is provided in attachedToWorker notification).
	**/
	@:overload(function(event:String, listener:(message:InspectorNotification<{ }>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:InspectorNotification<node.inspector.console.MessageAddedEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:InspectorNotification<node.inspector.debugger.BreakpointResolvedEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:InspectorNotification<node.inspector.debugger.PausedEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:() -> Void):Session { })
	@:overload(function(event:String, listener:(message:InspectorNotification<node.inspector.debugger.ScriptFailedToParseEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:InspectorNotification<node.inspector.debugger.ScriptParsedEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:InspectorNotification<node.inspector.heapprofiler.AddHeapSnapshotChunkEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:InspectorNotification<node.inspector.heapprofiler.HeapStatsUpdateEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:InspectorNotification<node.inspector.heapprofiler.LastSeenObjectIdEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:InspectorNotification<node.inspector.heapprofiler.ReportHeapSnapshotProgressEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:() -> Void):Session { })
	@:overload(function(event:String, listener:(message:InspectorNotification<node.inspector.profiler.ConsoleProfileFinishedEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:InspectorNotification<node.inspector.profiler.ConsoleProfileStartedEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:InspectorNotification<node.inspector.runtime.ConsoleAPICalledEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:InspectorNotification<node.inspector.runtime.ExceptionRevokedEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:InspectorNotification<node.inspector.runtime.ExceptionThrownEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:InspectorNotification<node.inspector.runtime.ExecutionContextCreatedEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:InspectorNotification<node.inspector.runtime.ExecutionContextDestroyedEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:() -> Void):Session { })
	@:overload(function(event:String, listener:(message:InspectorNotification<node.inspector.runtime.InspectRequestedEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:InspectorNotification<node.inspector.nodetracing.DataCollectedEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:() -> Void):Session { })
	@:overload(function(event:String, listener:(message:InspectorNotification<node.inspector.nodeworker.AttachedToWorkerEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:InspectorNotification<node.inspector.nodeworker.DetachedFromWorkerEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:InspectorNotification<node.inspector.nodeworker.ReceivedMessageFromWorkerEventDataType>) -> Void):Session { })
	function on(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Session;
	/**
		Emitted when any notification from the V8 Inspector is received.
		
		Issued when new console message is added.
		
		Fired when breakpoint is resolved to an actual script and location.
		
		Fired when the virtual machine stopped on breakpoint or exception or any other stop criteria.
		
		Fired when the virtual machine resumed execution.
		
		Fired when virtual machine fails to parse the script.
		
		Fired when virtual machine parses script. This event is also fired for all known and uncollected
		scripts upon enabling debugger.
		
		If heap objects tracking has been started then backend may send update for one or more fragments
		
		If heap objects tracking has been started then backend regularly sends a current value for last
		seen object id and corresponding timestamp. If the were changes in the heap since last event
		then one or more heapStatsUpdate events will be sent before a new lastSeenObjectId event.
		
		Sent when new profile recording is started using console.profile() call.
		
		Issued when console API was called.
		
		Issued when unhandled exception was revoked.
		
		Issued when exception was thrown and unhandled.
		
		Issued when new execution context is created.
		
		Issued when execution context is destroyed.
		
		Issued when all executionContexts were cleared in browser
		
		Issued when object should be inspected (for example, as a result of inspect() command line API
		call).
		
		Contains an bucket of collected trace events.
		
		Signals that tracing is stopped and there is no trace buffers pending flush, all data were
		delivered via dataCollected events.
		
		Issued when attached to a worker.
		
		Issued when detached from the worker.
		
		Notifies about a new protocol message received from the session
		(session ID is provided in attachedToWorker notification).
	**/
	@:overload(function(event:String, listener:(message:InspectorNotification<{ }>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:InspectorNotification<node.inspector.console.MessageAddedEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:InspectorNotification<node.inspector.debugger.BreakpointResolvedEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:InspectorNotification<node.inspector.debugger.PausedEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:() -> Void):Session { })
	@:overload(function(event:String, listener:(message:InspectorNotification<node.inspector.debugger.ScriptFailedToParseEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:InspectorNotification<node.inspector.debugger.ScriptParsedEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:InspectorNotification<node.inspector.heapprofiler.AddHeapSnapshotChunkEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:InspectorNotification<node.inspector.heapprofiler.HeapStatsUpdateEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:InspectorNotification<node.inspector.heapprofiler.LastSeenObjectIdEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:InspectorNotification<node.inspector.heapprofiler.ReportHeapSnapshotProgressEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:() -> Void):Session { })
	@:overload(function(event:String, listener:(message:InspectorNotification<node.inspector.profiler.ConsoleProfileFinishedEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:InspectorNotification<node.inspector.profiler.ConsoleProfileStartedEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:InspectorNotification<node.inspector.runtime.ConsoleAPICalledEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:InspectorNotification<node.inspector.runtime.ExceptionRevokedEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:InspectorNotification<node.inspector.runtime.ExceptionThrownEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:InspectorNotification<node.inspector.runtime.ExecutionContextCreatedEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:InspectorNotification<node.inspector.runtime.ExecutionContextDestroyedEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:() -> Void):Session { })
	@:overload(function(event:String, listener:(message:InspectorNotification<node.inspector.runtime.InspectRequestedEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:InspectorNotification<node.inspector.nodetracing.DataCollectedEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:() -> Void):Session { })
	@:overload(function(event:String, listener:(message:InspectorNotification<node.inspector.nodeworker.AttachedToWorkerEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:InspectorNotification<node.inspector.nodeworker.DetachedFromWorkerEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:InspectorNotification<node.inspector.nodeworker.ReceivedMessageFromWorkerEventDataType>) -> Void):Session { })
	function once(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Session;
	/**
		Emitted when any notification from the V8 Inspector is received.
		
		Issued when new console message is added.
		
		Fired when breakpoint is resolved to an actual script and location.
		
		Fired when the virtual machine stopped on breakpoint or exception or any other stop criteria.
		
		Fired when the virtual machine resumed execution.
		
		Fired when virtual machine fails to parse the script.
		
		Fired when virtual machine parses script. This event is also fired for all known and uncollected
		scripts upon enabling debugger.
		
		If heap objects tracking has been started then backend may send update for one or more fragments
		
		If heap objects tracking has been started then backend regularly sends a current value for last
		seen object id and corresponding timestamp. If the were changes in the heap since last event
		then one or more heapStatsUpdate events will be sent before a new lastSeenObjectId event.
		
		Sent when new profile recording is started using console.profile() call.
		
		Issued when console API was called.
		
		Issued when unhandled exception was revoked.
		
		Issued when exception was thrown and unhandled.
		
		Issued when new execution context is created.
		
		Issued when execution context is destroyed.
		
		Issued when all executionContexts were cleared in browser
		
		Issued when object should be inspected (for example, as a result of inspect() command line API
		call).
		
		Contains an bucket of collected trace events.
		
		Signals that tracing is stopped and there is no trace buffers pending flush, all data were
		delivered via dataCollected events.
		
		Issued when attached to a worker.
		
		Issued when detached from the worker.
		
		Notifies about a new protocol message received from the session
		(session ID is provided in attachedToWorker notification).
	**/
	@:overload(function(event:String, listener:(message:InspectorNotification<{ }>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:InspectorNotification<node.inspector.console.MessageAddedEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:InspectorNotification<node.inspector.debugger.BreakpointResolvedEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:InspectorNotification<node.inspector.debugger.PausedEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:() -> Void):Session { })
	@:overload(function(event:String, listener:(message:InspectorNotification<node.inspector.debugger.ScriptFailedToParseEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:InspectorNotification<node.inspector.debugger.ScriptParsedEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:InspectorNotification<node.inspector.heapprofiler.AddHeapSnapshotChunkEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:InspectorNotification<node.inspector.heapprofiler.HeapStatsUpdateEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:InspectorNotification<node.inspector.heapprofiler.LastSeenObjectIdEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:InspectorNotification<node.inspector.heapprofiler.ReportHeapSnapshotProgressEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:() -> Void):Session { })
	@:overload(function(event:String, listener:(message:InspectorNotification<node.inspector.profiler.ConsoleProfileFinishedEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:InspectorNotification<node.inspector.profiler.ConsoleProfileStartedEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:InspectorNotification<node.inspector.runtime.ConsoleAPICalledEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:InspectorNotification<node.inspector.runtime.ExceptionRevokedEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:InspectorNotification<node.inspector.runtime.ExceptionThrownEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:InspectorNotification<node.inspector.runtime.ExecutionContextCreatedEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:InspectorNotification<node.inspector.runtime.ExecutionContextDestroyedEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:() -> Void):Session { })
	@:overload(function(event:String, listener:(message:InspectorNotification<node.inspector.runtime.InspectRequestedEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:InspectorNotification<node.inspector.nodetracing.DataCollectedEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:() -> Void):Session { })
	@:overload(function(event:String, listener:(message:InspectorNotification<node.inspector.nodeworker.AttachedToWorkerEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:InspectorNotification<node.inspector.nodeworker.DetachedFromWorkerEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:InspectorNotification<node.inspector.nodeworker.ReceivedMessageFromWorkerEventDataType>) -> Void):Session { })
	function prependListener(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Session;
	/**
		Emitted when any notification from the V8 Inspector is received.
		
		Issued when new console message is added.
		
		Fired when breakpoint is resolved to an actual script and location.
		
		Fired when the virtual machine stopped on breakpoint or exception or any other stop criteria.
		
		Fired when the virtual machine resumed execution.
		
		Fired when virtual machine fails to parse the script.
		
		Fired when virtual machine parses script. This event is also fired for all known and uncollected
		scripts upon enabling debugger.
		
		If heap objects tracking has been started then backend may send update for one or more fragments
		
		If heap objects tracking has been started then backend regularly sends a current value for last
		seen object id and corresponding timestamp. If the were changes in the heap since last event
		then one or more heapStatsUpdate events will be sent before a new lastSeenObjectId event.
		
		Sent when new profile recording is started using console.profile() call.
		
		Issued when console API was called.
		
		Issued when unhandled exception was revoked.
		
		Issued when exception was thrown and unhandled.
		
		Issued when new execution context is created.
		
		Issued when execution context is destroyed.
		
		Issued when all executionContexts were cleared in browser
		
		Issued when object should be inspected (for example, as a result of inspect() command line API
		call).
		
		Contains an bucket of collected trace events.
		
		Signals that tracing is stopped and there is no trace buffers pending flush, all data were
		delivered via dataCollected events.
		
		Issued when attached to a worker.
		
		Issued when detached from the worker.
		
		Notifies about a new protocol message received from the session
		(session ID is provided in attachedToWorker notification).
	**/
	@:overload(function(event:String, listener:(message:InspectorNotification<{ }>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:InspectorNotification<node.inspector.console.MessageAddedEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:InspectorNotification<node.inspector.debugger.BreakpointResolvedEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:InspectorNotification<node.inspector.debugger.PausedEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:() -> Void):Session { })
	@:overload(function(event:String, listener:(message:InspectorNotification<node.inspector.debugger.ScriptFailedToParseEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:InspectorNotification<node.inspector.debugger.ScriptParsedEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:InspectorNotification<node.inspector.heapprofiler.AddHeapSnapshotChunkEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:InspectorNotification<node.inspector.heapprofiler.HeapStatsUpdateEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:InspectorNotification<node.inspector.heapprofiler.LastSeenObjectIdEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:InspectorNotification<node.inspector.heapprofiler.ReportHeapSnapshotProgressEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:() -> Void):Session { })
	@:overload(function(event:String, listener:(message:InspectorNotification<node.inspector.profiler.ConsoleProfileFinishedEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:InspectorNotification<node.inspector.profiler.ConsoleProfileStartedEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:InspectorNotification<node.inspector.runtime.ConsoleAPICalledEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:InspectorNotification<node.inspector.runtime.ExceptionRevokedEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:InspectorNotification<node.inspector.runtime.ExceptionThrownEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:InspectorNotification<node.inspector.runtime.ExecutionContextCreatedEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:InspectorNotification<node.inspector.runtime.ExecutionContextDestroyedEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:() -> Void):Session { })
	@:overload(function(event:String, listener:(message:InspectorNotification<node.inspector.runtime.InspectRequestedEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:InspectorNotification<node.inspector.nodetracing.DataCollectedEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:() -> Void):Session { })
	@:overload(function(event:String, listener:(message:InspectorNotification<node.inspector.nodeworker.AttachedToWorkerEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:InspectorNotification<node.inspector.nodeworker.DetachedFromWorkerEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:InspectorNotification<node.inspector.nodeworker.ReceivedMessageFromWorkerEventDataType>) -> Void):Session { })
	function prependOnceListener(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Session;
	function removeListener(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Session;
	function off(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Session;
	function removeAllListeners(?event:ts.AnyOf2<String, js.lib.Symbol>):Session;
	function setMaxListeners(n:Float):Session;
	static var prototype : Session;
}