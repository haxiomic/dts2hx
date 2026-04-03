package node.inspector.promises;

/**
	The `inspector.Session` is used for dispatching messages to the V8 inspector
	back-end and receiving message responses and notifications.
**/
@:jsRequire("inspector/promises", "Session") extern class Session extends node.Events<Session> {
	/**
		Create a new instance of the `inspector.Session` class.
		The inspector session needs to be connected through `session.connect()` before the messages can be dispatched to the inspector backend.
	**/
	function new();
	/**
		Connects a session to the inspector back-end.
	**/
	function connect():Void;
	/**
		Connects a session to the inspector back-end.
		An exception will be thrown if this API was not called on a Worker thread.
	**/
	function connectToMainThread():Void;
	/**
		Immediately close the session. All pending message callbacks will be called with an error.
		`session.connect()` will need to be called to be able to send messages again.
		Reconnected session will lose all inspector state, such as enabled agents or configured breakpoints.
	**/
	function disconnect():Void;
	/**
		Posts a message to the inspector back-end.
		
		```js
		import { Session } from 'node:inspector/promises';
		try {
		  const session = new Session();
		  session.connect();
		  const result = await session.post('Runtime.evaluate', { expression: '2 + 2' });
		  console.log(result);
		} catch (error) {
		  console.error(error);
		}
		// Output: { result: { type: 'number', value: 4, description: '4' } } 
		```
		
		The latest version of the V8 inspector protocol is published on the
		[Chrome DevTools Protocol Viewer](https://chromedevtools.github.io/devtools-protocol/v8/).
		
		Node.js inspector supports all the Chrome DevTools Protocol domains declared
		by V8. Chrome DevTools Protocol domain provides an interface for interacting
		with one of the runtime agents used to inspect the application state and listen
		to the run-time events.
		
		Returns supported domains.
		
		Evaluates expression on global object.
		
		Add handler to promise with given promise object id.
		
		Calls function with given declaration on the given object. Object group of the result is inherited from the target object.
		
		Returns properties of a given object. Object group of the result is inherited from the target object.
		
		Releases remote object with given id.
		
		Releases all remote objects that belong to a given group.
		
		Tells inspected instance to run if it was waiting for debugger to attach.
		
		Enables reporting of execution contexts creation by means of <code>executionContextCreated</code> event. When the reporting gets enabled the event will be sent immediately for each existing execution context.
		
		Disables reporting of execution contexts creation.
		
		Discards collected exceptions and console API calls.
		
		Compiles expression.
		
		Runs script with given id in a given context.
		
		Returns all let, const and class variables from global scope.
		
		Enables debugger for the given page. Clients should not assume that the debugging has been enabled until the result for this command is received.
		
		Disables debugger for given page.
		
		Activates / deactivates all breakpoints on the page.
		
		Makes page not interrupt on any pauses (breakpoint, exception, dom exception etc).
		
		Sets JavaScript breakpoint at given location specified either by URL or URL regex. Once this command is issued, all existing parsed scripts will have breakpoints resolved and returned in <code>locations</code> property. Further matching script parsing will result in subsequent <code>breakpointResolved</code> events issued. This logical breakpoint will survive page reloads.
		
		Sets JavaScript breakpoint at a given location.
		
		Removes JavaScript breakpoint.
		
		Returns possible locations for breakpoint. scriptId in start and end range locations should be the same.
		
		Continues execution until specific location is reached.
		
		Steps over the statement.
		
		Steps into the function call.
		
		Steps out of the function call.
		
		Stops on the next JavaScript statement.
		
		This method is deprecated - use Debugger.stepInto with breakOnAsyncCall and Debugger.pauseOnAsyncTask instead. Steps into next scheduled async task if any is scheduled before next pause. Returns success when async task is actually scheduled, returns error if no task were scheduled or another scheduleStepIntoAsync was called.
		
		Resumes JavaScript execution.
		
		Returns stack trace with given <code>stackTraceId</code>.
		
		Searches for given string in script content.
		
		Edits JavaScript source live.
		
		Restarts particular call frame from the beginning.
		
		Returns source for the script with given id.
		
		Defines pause on exceptions state. Can be set to stop on all exceptions, uncaught exceptions or no exceptions. Initial pause on exceptions state is <code>none</code>.
		
		Evaluates expression on a given call frame.
		
		Changes value of variable in a callframe. Object-based scopes are not supported and must be mutated manually.
		
		Changes return value in top frame. Available only at return break position.
		
		Enables or disables async call stacks tracking.
		
		Replace previous blackbox patterns with passed ones. Forces backend to skip stepping/pausing in scripts with url matching one of the patterns. VM will try to leave blackboxed script by performing 'step in' several times, finally resorting to 'step out' if unsuccessful.
		
		Makes backend skip steps in the script in blackboxed ranges. VM will try leave blacklisted scripts by performing 'step in' several times, finally resorting to 'step out' if unsuccessful. Positions array contains positions where blackbox state is changed. First interval isn't blackboxed. Array should be sorted.
		
		Enables console domain, sends the messages collected so far to the client by means of the <code>messageAdded</code> notification.
		
		Disables console domain, prevents further console messages from being reported to the client.
		
		Does nothing.
		
		Changes CPU profiler sampling interval. Must be called before CPU profiles recording started.
		
		Enable precise code coverage. Coverage data for JavaScript executed before enabling precise code coverage may be incomplete. Enabling prevents running optimized code and resets execution counters.
		
		Disable precise code coverage. Disabling releases unnecessary execution count records and allows executing optimized code.
		
		Collect coverage data for the current isolate, and resets execution counters. Precise code coverage needs to have started.
		
		Collect coverage data for the current isolate. The coverage data may be incomplete due to garbage collection.
		
		Enables console to refer to the node with given id via $x (see Command Line API for more details $x functions).
		
		Gets supported tracing categories.
		
		Start trace events collection.
		
		Stop trace events collection. Remaining collected events will be sent as a sequence of
		dataCollected events followed by tracingComplete event.
		
		Sends protocol message over session with given id.
		
		Instructs the inspector to attach to running workers. Will also attach to new workers
		as they start
		
		Detaches from all running workers and disables attaching to new workers as they are started.
		
		Detached from the worker with given sessionId.
		
		Disables network tracking, prevents network events from being sent to the client.
		
		Enables network tracking, network events will now be delivered to the client.
		
		Enable the NodeRuntime events except by `NodeRuntime.waitingForDisconnect`.
		
		Disable NodeRuntime events
		
		Enable the `NodeRuntime.waitingForDisconnect`.
	**/
	@:overload(function(method:String):js.lib.Promise<node.inspector.schema.GetDomainsReturnType> { })
	@:overload(function(method:String, ?params:node.inspector.runtime.EvaluateParameterType):js.lib.Promise<node.inspector.runtime.EvaluateReturnType> { })
	@:overload(function(method:String, ?params:node.inspector.runtime.AwaitPromiseParameterType):js.lib.Promise<node.inspector.runtime.AwaitPromiseReturnType> { })
	@:overload(function(method:String, ?params:node.inspector.runtime.CallFunctionOnParameterType):js.lib.Promise<node.inspector.runtime.CallFunctionOnReturnType> { })
	@:overload(function(method:String, ?params:node.inspector.runtime.GetPropertiesParameterType):js.lib.Promise<node.inspector.runtime.GetPropertiesReturnType> { })
	@:overload(function(method:String, ?params:node.inspector.runtime.ReleaseObjectParameterType):js.lib.Promise<ts.Undefined> { })
	@:overload(function(method:String, ?params:node.inspector.runtime.ReleaseObjectGroupParameterType):js.lib.Promise<ts.Undefined> { })
	@:overload(function(method:String):js.lib.Promise<ts.Undefined> { })
	@:overload(function(method:String):js.lib.Promise<ts.Undefined> { })
	@:overload(function(method:String):js.lib.Promise<ts.Undefined> { })
	@:overload(function(method:String):js.lib.Promise<ts.Undefined> { })
	@:overload(function(method:String, ?params:node.inspector.runtime.SetCustomObjectFormatterEnabledParameterType):js.lib.Promise<ts.Undefined> { })
	@:overload(function(method:String, ?params:node.inspector.runtime.CompileScriptParameterType):js.lib.Promise<node.inspector.runtime.CompileScriptReturnType> { })
	@:overload(function(method:String, ?params:node.inspector.runtime.RunScriptParameterType):js.lib.Promise<node.inspector.runtime.RunScriptReturnType> { })
	@:overload(function(method:String, ?params:node.inspector.runtime.QueryObjectsParameterType):js.lib.Promise<node.inspector.runtime.QueryObjectsReturnType> { })
	@:overload(function(method:String, ?params:node.inspector.runtime.GlobalLexicalScopeNamesParameterType):js.lib.Promise<node.inspector.runtime.GlobalLexicalScopeNamesReturnType> { })
	@:overload(function(method:String):js.lib.Promise<node.inspector.debugger.EnableReturnType> { })
	@:overload(function(method:String):js.lib.Promise<ts.Undefined> { })
	@:overload(function(method:String, ?params:node.inspector.debugger.SetBreakpointsActiveParameterType):js.lib.Promise<ts.Undefined> { })
	@:overload(function(method:String, ?params:node.inspector.debugger.SetSkipAllPausesParameterType):js.lib.Promise<ts.Undefined> { })
	@:overload(function(method:String, ?params:node.inspector.debugger.SetBreakpointByUrlParameterType):js.lib.Promise<node.inspector.debugger.SetBreakpointByUrlReturnType> { })
	@:overload(function(method:String, ?params:node.inspector.debugger.SetBreakpointParameterType):js.lib.Promise<node.inspector.debugger.SetBreakpointReturnType> { })
	@:overload(function(method:String, ?params:node.inspector.debugger.RemoveBreakpointParameterType):js.lib.Promise<ts.Undefined> { })
	@:overload(function(method:String, ?params:node.inspector.debugger.GetPossibleBreakpointsParameterType):js.lib.Promise<node.inspector.debugger.GetPossibleBreakpointsReturnType> { })
	@:overload(function(method:String, ?params:node.inspector.debugger.ContinueToLocationParameterType):js.lib.Promise<ts.Undefined> { })
	@:overload(function(method:String, ?params:node.inspector.debugger.PauseOnAsyncCallParameterType):js.lib.Promise<ts.Undefined> { })
	@:overload(function(method:String):js.lib.Promise<ts.Undefined> { })
	@:overload(function(method:String, ?params:node.inspector.debugger.StepIntoParameterType):js.lib.Promise<ts.Undefined> { })
	@:overload(function(method:String):js.lib.Promise<ts.Undefined> { })
	@:overload(function(method:String):js.lib.Promise<ts.Undefined> { })
	@:overload(function(method:String):js.lib.Promise<ts.Undefined> { })
	@:overload(function(method:String):js.lib.Promise<ts.Undefined> { })
	@:overload(function(method:String, ?params:node.inspector.debugger.GetStackTraceParameterType):js.lib.Promise<node.inspector.debugger.GetStackTraceReturnType> { })
	@:overload(function(method:String, ?params:node.inspector.debugger.SearchInContentParameterType):js.lib.Promise<node.inspector.debugger.SearchInContentReturnType> { })
	@:overload(function(method:String, ?params:node.inspector.debugger.SetScriptSourceParameterType):js.lib.Promise<node.inspector.debugger.SetScriptSourceReturnType> { })
	@:overload(function(method:String, ?params:node.inspector.debugger.RestartFrameParameterType):js.lib.Promise<node.inspector.debugger.RestartFrameReturnType> { })
	@:overload(function(method:String, ?params:node.inspector.debugger.GetScriptSourceParameterType):js.lib.Promise<node.inspector.debugger.GetScriptSourceReturnType> { })
	@:overload(function(method:String, ?params:node.inspector.debugger.SetPauseOnExceptionsParameterType):js.lib.Promise<ts.Undefined> { })
	@:overload(function(method:String, ?params:node.inspector.debugger.EvaluateOnCallFrameParameterType):js.lib.Promise<node.inspector.debugger.EvaluateOnCallFrameReturnType> { })
	@:overload(function(method:String, ?params:node.inspector.debugger.SetVariableValueParameterType):js.lib.Promise<ts.Undefined> { })
	@:overload(function(method:String, ?params:node.inspector.debugger.SetReturnValueParameterType):js.lib.Promise<ts.Undefined> { })
	@:overload(function(method:String, ?params:node.inspector.debugger.SetAsyncCallStackDepthParameterType):js.lib.Promise<ts.Undefined> { })
	@:overload(function(method:String, ?params:node.inspector.debugger.SetBlackboxPatternsParameterType):js.lib.Promise<ts.Undefined> { })
	@:overload(function(method:String, ?params:node.inspector.debugger.SetBlackboxedRangesParameterType):js.lib.Promise<ts.Undefined> { })
	@:overload(function(method:String):js.lib.Promise<ts.Undefined> { })
	@:overload(function(method:String):js.lib.Promise<ts.Undefined> { })
	@:overload(function(method:String):js.lib.Promise<ts.Undefined> { })
	@:overload(function(method:String):js.lib.Promise<ts.Undefined> { })
	@:overload(function(method:String):js.lib.Promise<ts.Undefined> { })
	@:overload(function(method:String, ?params:node.inspector.profiler.SetSamplingIntervalParameterType):js.lib.Promise<ts.Undefined> { })
	@:overload(function(method:String):js.lib.Promise<ts.Undefined> { })
	@:overload(function(method:String):js.lib.Promise<node.inspector.profiler.StopReturnType> { })
	@:overload(function(method:String, ?params:node.inspector.profiler.StartPreciseCoverageParameterType):js.lib.Promise<ts.Undefined> { })
	@:overload(function(method:String):js.lib.Promise<ts.Undefined> { })
	@:overload(function(method:String):js.lib.Promise<node.inspector.profiler.TakePreciseCoverageReturnType> { })
	@:overload(function(method:String):js.lib.Promise<node.inspector.profiler.GetBestEffortCoverageReturnType> { })
	@:overload(function(method:String):js.lib.Promise<ts.Undefined> { })
	@:overload(function(method:String):js.lib.Promise<ts.Undefined> { })
	@:overload(function(method:String, ?params:node.inspector.heapprofiler.StartTrackingHeapObjectsParameterType):js.lib.Promise<ts.Undefined> { })
	@:overload(function(method:String, ?params:node.inspector.heapprofiler.StopTrackingHeapObjectsParameterType):js.lib.Promise<ts.Undefined> { })
	@:overload(function(method:String, ?params:node.inspector.heapprofiler.TakeHeapSnapshotParameterType):js.lib.Promise<ts.Undefined> { })
	@:overload(function(method:String):js.lib.Promise<ts.Undefined> { })
	@:overload(function(method:String, ?params:node.inspector.heapprofiler.GetObjectByHeapObjectIdParameterType):js.lib.Promise<node.inspector.heapprofiler.GetObjectByHeapObjectIdReturnType> { })
	@:overload(function(method:String, ?params:node.inspector.heapprofiler.AddInspectedHeapObjectParameterType):js.lib.Promise<ts.Undefined> { })
	@:overload(function(method:String, ?params:node.inspector.heapprofiler.GetHeapObjectIdParameterType):js.lib.Promise<node.inspector.heapprofiler.GetHeapObjectIdReturnType> { })
	@:overload(function(method:String, ?params:node.inspector.heapprofiler.StartSamplingParameterType):js.lib.Promise<ts.Undefined> { })
	@:overload(function(method:String):js.lib.Promise<node.inspector.heapprofiler.StopSamplingReturnType> { })
	@:overload(function(method:String):js.lib.Promise<node.inspector.heapprofiler.GetSamplingProfileReturnType> { })
	@:overload(function(method:String):js.lib.Promise<node.inspector.nodetracing.GetCategoriesReturnType> { })
	@:overload(function(method:String, ?params:node.inspector.nodetracing.StartParameterType):js.lib.Promise<ts.Undefined> { })
	@:overload(function(method:String):js.lib.Promise<ts.Undefined> { })
	@:overload(function(method:String, ?params:node.inspector.nodeworker.SendMessageToWorkerParameterType):js.lib.Promise<ts.Undefined> { })
	@:overload(function(method:String, ?params:node.inspector.nodeworker.EnableParameterType):js.lib.Promise<ts.Undefined> { })
	@:overload(function(method:String):js.lib.Promise<ts.Undefined> { })
	@:overload(function(method:String, ?params:node.inspector.nodeworker.DetachParameterType):js.lib.Promise<ts.Undefined> { })
	@:overload(function(method:String):js.lib.Promise<ts.Undefined> { })
	@:overload(function(method:String):js.lib.Promise<ts.Undefined> { })
	@:overload(function(method:String):js.lib.Promise<ts.Undefined> { })
	@:overload(function(method:String):js.lib.Promise<ts.Undefined> { })
	@:overload(function(method:String, ?params:node.inspector.noderuntime.NotifyWhenWaitingForDisconnectParameterType):js.lib.Promise<ts.Undefined> { })
	function post(method:String, ?params:Dynamic):js.lib.Promise<ts.Undefined>;
	/**
		Emitted when any notification from the V8 Inspector is received.
		
		Issued when new execution context is created.
		
		Issued when execution context is destroyed.
		
		Issued when all executionContexts were cleared in browser
		
		Issued when exception was thrown and unhandled.
		
		Issued when unhandled exception was revoked.
		
		Issued when console API was called.
		
		Issued when object should be inspected (for example, as a result of inspect() command line API call).
		
		Fired when virtual machine parses script. This event is also fired for all known and uncollected scripts upon enabling debugger.
		
		Fired when virtual machine fails to parse the script.
		
		Fired when breakpoint is resolved to an actual script and location.
		
		Fired when the virtual machine stopped on breakpoint or exception or any other stop criteria.
		
		Fired when the virtual machine resumed execution.
		
		Issued when new console message is added.
		
		Sent when new profile recording is started using console.profile() call.
		
		If heap objects tracking has been started then backend regularly sends a current value for last seen object id and corresponding timestamp. If the were changes in the heap since last event then one or more heapStatsUpdate events will be sent before a new lastSeenObjectId event.
		
		If heap objects tracking has been started then backend may send update for one or more fragments
		
		Contains an bucket of collected trace events.
		
		Signals that tracing is stopped and there is no trace buffers pending flush, all data were
		delivered via dataCollected events.
		
		Issued when attached to a worker.
		
		Issued when detached from the worker.
		
		Notifies about a new protocol message received from the session
		(session ID is provided in attachedToWorker notification).
		
		Fired when page is about to send HTTP request.
		
		Fired when HTTP response is available.
		
		This event is fired instead of `Runtime.executionContextDestroyed` when
		enabled.
		It is fired when the Node process finished all code execution and is
		waiting for all frontends to disconnect.
		
		This event is fired when the runtime is waiting for the debugger. For
		example, when inspector.waitingForDebugger is called
	**/
	@:overload(function(event:String, listener:(message:node.inspector.InspectorNotification<Dynamic>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:node.inspector.InspectorNotification<node.inspector.runtime.ExecutionContextCreatedEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:node.inspector.InspectorNotification<node.inspector.runtime.ExecutionContextDestroyedEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:() -> Void):Session { })
	@:overload(function(event:String, listener:(message:node.inspector.InspectorNotification<node.inspector.runtime.ExceptionThrownEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:node.inspector.InspectorNotification<node.inspector.runtime.ExceptionRevokedEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:node.inspector.InspectorNotification<node.inspector.runtime.ConsoleAPICalledEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:node.inspector.InspectorNotification<node.inspector.runtime.InspectRequestedEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:node.inspector.InspectorNotification<node.inspector.debugger.ScriptParsedEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:node.inspector.InspectorNotification<node.inspector.debugger.ScriptFailedToParseEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:node.inspector.InspectorNotification<node.inspector.debugger.BreakpointResolvedEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:node.inspector.InspectorNotification<node.inspector.debugger.PausedEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:() -> Void):Session { })
	@:overload(function(event:String, listener:(message:node.inspector.InspectorNotification<node.inspector.console.MessageAddedEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:node.inspector.InspectorNotification<node.inspector.profiler.ConsoleProfileStartedEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:node.inspector.InspectorNotification<node.inspector.profiler.ConsoleProfileFinishedEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:node.inspector.InspectorNotification<node.inspector.heapprofiler.AddHeapSnapshotChunkEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:() -> Void):Session { })
	@:overload(function(event:String, listener:(message:node.inspector.InspectorNotification<node.inspector.heapprofiler.ReportHeapSnapshotProgressEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:node.inspector.InspectorNotification<node.inspector.heapprofiler.LastSeenObjectIdEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:node.inspector.InspectorNotification<node.inspector.heapprofiler.HeapStatsUpdateEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:node.inspector.InspectorNotification<node.inspector.nodetracing.DataCollectedEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:() -> Void):Session { })
	@:overload(function(event:String, listener:(message:node.inspector.InspectorNotification<node.inspector.nodeworker.AttachedToWorkerEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:node.inspector.InspectorNotification<node.inspector.nodeworker.DetachedFromWorkerEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:node.inspector.InspectorNotification<node.inspector.nodeworker.ReceivedMessageFromWorkerEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:node.inspector.InspectorNotification<node.inspector.network.RequestWillBeSentEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:node.inspector.InspectorNotification<node.inspector.network.ResponseReceivedEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:node.inspector.InspectorNotification<node.inspector.network.LoadingFailedEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:node.inspector.InspectorNotification<node.inspector.network.LoadingFinishedEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:() -> Void):Session { })
	@:overload(function(event:String, listener:() -> Void):Session { })
	function addListener(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Session;
	/**
		Synchronously calls each of the listeners registered for the event named `eventName`, in the order they were registered, passing the supplied arguments
		to each.
		
		Returns `true` if the event had listeners, `false` otherwise.
		
		```js
		import { EventEmitter } from 'node:events';
		const myEmitter = new EventEmitter();
		
		// First listener
		myEmitter.on('event', function firstListener() {
		  console.log('Helloooo! first listener');
		});
		// Second listener
		myEmitter.on('event', function secondListener(arg1, arg2) {
		  console.log(`event with parameters ${arg1}, ${arg2} in second listener`);
		});
		// Third listener
		myEmitter.on('event', function thirdListener(...args) {
		  const parameters = args.join(', ');
		  console.log(`event with parameters ${parameters} in third listener`);
		});
		
		console.log(myEmitter.listeners('event'));
		
		myEmitter.emit('event', 1, 2, 3, 4, 5);
		
		// Prints:
		// [
		//   [Function: firstListener],
		//   [Function: secondListener],
		//   [Function: thirdListener]
		// ]
		// Helloooo! first listener
		// event with parameters 1, 2 in second listener
		// event with parameters 1, 2, 3, 4, 5 in third listener
		```
	**/
	@:overload(function(event:String, message:node.inspector.InspectorNotification<Dynamic>):Bool { })
	@:overload(function(event:String, message:node.inspector.InspectorNotification<node.inspector.runtime.ExecutionContextCreatedEventDataType>):Bool { })
	@:overload(function(event:String, message:node.inspector.InspectorNotification<node.inspector.runtime.ExecutionContextDestroyedEventDataType>):Bool { })
	@:overload(function(event:String):Bool { })
	@:overload(function(event:String, message:node.inspector.InspectorNotification<node.inspector.runtime.ExceptionThrownEventDataType>):Bool { })
	@:overload(function(event:String, message:node.inspector.InspectorNotification<node.inspector.runtime.ExceptionRevokedEventDataType>):Bool { })
	@:overload(function(event:String, message:node.inspector.InspectorNotification<node.inspector.runtime.ConsoleAPICalledEventDataType>):Bool { })
	@:overload(function(event:String, message:node.inspector.InspectorNotification<node.inspector.runtime.InspectRequestedEventDataType>):Bool { })
	@:overload(function(event:String, message:node.inspector.InspectorNotification<node.inspector.debugger.ScriptParsedEventDataType>):Bool { })
	@:overload(function(event:String, message:node.inspector.InspectorNotification<node.inspector.debugger.ScriptFailedToParseEventDataType>):Bool { })
	@:overload(function(event:String, message:node.inspector.InspectorNotification<node.inspector.debugger.BreakpointResolvedEventDataType>):Bool { })
	@:overload(function(event:String, message:node.inspector.InspectorNotification<node.inspector.debugger.PausedEventDataType>):Bool { })
	@:overload(function(event:String):Bool { })
	@:overload(function(event:String, message:node.inspector.InspectorNotification<node.inspector.console.MessageAddedEventDataType>):Bool { })
	@:overload(function(event:String, message:node.inspector.InspectorNotification<node.inspector.profiler.ConsoleProfileStartedEventDataType>):Bool { })
	@:overload(function(event:String, message:node.inspector.InspectorNotification<node.inspector.profiler.ConsoleProfileFinishedEventDataType>):Bool { })
	@:overload(function(event:String, message:node.inspector.InspectorNotification<node.inspector.heapprofiler.AddHeapSnapshotChunkEventDataType>):Bool { })
	@:overload(function(event:String):Bool { })
	@:overload(function(event:String, message:node.inspector.InspectorNotification<node.inspector.heapprofiler.ReportHeapSnapshotProgressEventDataType>):Bool { })
	@:overload(function(event:String, message:node.inspector.InspectorNotification<node.inspector.heapprofiler.LastSeenObjectIdEventDataType>):Bool { })
	@:overload(function(event:String, message:node.inspector.InspectorNotification<node.inspector.heapprofiler.HeapStatsUpdateEventDataType>):Bool { })
	@:overload(function(event:String, message:node.inspector.InspectorNotification<node.inspector.nodetracing.DataCollectedEventDataType>):Bool { })
	@:overload(function(event:String):Bool { })
	@:overload(function(event:String, message:node.inspector.InspectorNotification<node.inspector.nodeworker.AttachedToWorkerEventDataType>):Bool { })
	@:overload(function(event:String, message:node.inspector.InspectorNotification<node.inspector.nodeworker.DetachedFromWorkerEventDataType>):Bool { })
	@:overload(function(event:String, message:node.inspector.InspectorNotification<node.inspector.nodeworker.ReceivedMessageFromWorkerEventDataType>):Bool { })
	@:overload(function(event:String, message:node.inspector.InspectorNotification<node.inspector.network.RequestWillBeSentEventDataType>):Bool { })
	@:overload(function(event:String, message:node.inspector.InspectorNotification<node.inspector.network.ResponseReceivedEventDataType>):Bool { })
	@:overload(function(event:String, message:node.inspector.InspectorNotification<node.inspector.network.LoadingFailedEventDataType>):Bool { })
	@:overload(function(event:String, message:node.inspector.InspectorNotification<node.inspector.network.LoadingFinishedEventDataType>):Bool { })
	@:overload(function(event:String):Bool { })
	@:overload(function(event:String):Bool { })
	function emit(event:ts.AnyOf2<String, js.lib.Symbol>, args:haxe.extern.Rest<Dynamic>):Bool;
	/**
		Emitted when any notification from the V8 Inspector is received.
		
		Issued when new execution context is created.
		
		Issued when execution context is destroyed.
		
		Issued when all executionContexts were cleared in browser
		
		Issued when exception was thrown and unhandled.
		
		Issued when unhandled exception was revoked.
		
		Issued when console API was called.
		
		Issued when object should be inspected (for example, as a result of inspect() command line API call).
		
		Fired when virtual machine parses script. This event is also fired for all known and uncollected scripts upon enabling debugger.
		
		Fired when virtual machine fails to parse the script.
		
		Fired when breakpoint is resolved to an actual script and location.
		
		Fired when the virtual machine stopped on breakpoint or exception or any other stop criteria.
		
		Fired when the virtual machine resumed execution.
		
		Issued when new console message is added.
		
		Sent when new profile recording is started using console.profile() call.
		
		If heap objects tracking has been started then backend regularly sends a current value for last seen object id and corresponding timestamp. If the were changes in the heap since last event then one or more heapStatsUpdate events will be sent before a new lastSeenObjectId event.
		
		If heap objects tracking has been started then backend may send update for one or more fragments
		
		Contains an bucket of collected trace events.
		
		Signals that tracing is stopped and there is no trace buffers pending flush, all data were
		delivered via dataCollected events.
		
		Issued when attached to a worker.
		
		Issued when detached from the worker.
		
		Notifies about a new protocol message received from the session
		(session ID is provided in attachedToWorker notification).
		
		Fired when page is about to send HTTP request.
		
		Fired when HTTP response is available.
		
		This event is fired instead of `Runtime.executionContextDestroyed` when
		enabled.
		It is fired when the Node process finished all code execution and is
		waiting for all frontends to disconnect.
		
		This event is fired when the runtime is waiting for the debugger. For
		example, when inspector.waitingForDebugger is called
	**/
	@:overload(function(event:String, listener:(message:node.inspector.InspectorNotification<Dynamic>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:node.inspector.InspectorNotification<node.inspector.runtime.ExecutionContextCreatedEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:node.inspector.InspectorNotification<node.inspector.runtime.ExecutionContextDestroyedEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:() -> Void):Session { })
	@:overload(function(event:String, listener:(message:node.inspector.InspectorNotification<node.inspector.runtime.ExceptionThrownEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:node.inspector.InspectorNotification<node.inspector.runtime.ExceptionRevokedEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:node.inspector.InspectorNotification<node.inspector.runtime.ConsoleAPICalledEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:node.inspector.InspectorNotification<node.inspector.runtime.InspectRequestedEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:node.inspector.InspectorNotification<node.inspector.debugger.ScriptParsedEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:node.inspector.InspectorNotification<node.inspector.debugger.ScriptFailedToParseEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:node.inspector.InspectorNotification<node.inspector.debugger.BreakpointResolvedEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:node.inspector.InspectorNotification<node.inspector.debugger.PausedEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:() -> Void):Session { })
	@:overload(function(event:String, listener:(message:node.inspector.InspectorNotification<node.inspector.console.MessageAddedEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:node.inspector.InspectorNotification<node.inspector.profiler.ConsoleProfileStartedEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:node.inspector.InspectorNotification<node.inspector.profiler.ConsoleProfileFinishedEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:node.inspector.InspectorNotification<node.inspector.heapprofiler.AddHeapSnapshotChunkEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:() -> Void):Session { })
	@:overload(function(event:String, listener:(message:node.inspector.InspectorNotification<node.inspector.heapprofiler.ReportHeapSnapshotProgressEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:node.inspector.InspectorNotification<node.inspector.heapprofiler.LastSeenObjectIdEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:node.inspector.InspectorNotification<node.inspector.heapprofiler.HeapStatsUpdateEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:node.inspector.InspectorNotification<node.inspector.nodetracing.DataCollectedEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:() -> Void):Session { })
	@:overload(function(event:String, listener:(message:node.inspector.InspectorNotification<node.inspector.nodeworker.AttachedToWorkerEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:node.inspector.InspectorNotification<node.inspector.nodeworker.DetachedFromWorkerEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:node.inspector.InspectorNotification<node.inspector.nodeworker.ReceivedMessageFromWorkerEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:node.inspector.InspectorNotification<node.inspector.network.RequestWillBeSentEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:node.inspector.InspectorNotification<node.inspector.network.ResponseReceivedEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:node.inspector.InspectorNotification<node.inspector.network.LoadingFailedEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:node.inspector.InspectorNotification<node.inspector.network.LoadingFinishedEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:() -> Void):Session { })
	@:overload(function(event:String, listener:() -> Void):Session { })
	function on(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Session;
	/**
		Emitted when any notification from the V8 Inspector is received.
		
		Issued when new execution context is created.
		
		Issued when execution context is destroyed.
		
		Issued when all executionContexts were cleared in browser
		
		Issued when exception was thrown and unhandled.
		
		Issued when unhandled exception was revoked.
		
		Issued when console API was called.
		
		Issued when object should be inspected (for example, as a result of inspect() command line API call).
		
		Fired when virtual machine parses script. This event is also fired for all known and uncollected scripts upon enabling debugger.
		
		Fired when virtual machine fails to parse the script.
		
		Fired when breakpoint is resolved to an actual script and location.
		
		Fired when the virtual machine stopped on breakpoint or exception or any other stop criteria.
		
		Fired when the virtual machine resumed execution.
		
		Issued when new console message is added.
		
		Sent when new profile recording is started using console.profile() call.
		
		If heap objects tracking has been started then backend regularly sends a current value for last seen object id and corresponding timestamp. If the were changes in the heap since last event then one or more heapStatsUpdate events will be sent before a new lastSeenObjectId event.
		
		If heap objects tracking has been started then backend may send update for one or more fragments
		
		Contains an bucket of collected trace events.
		
		Signals that tracing is stopped and there is no trace buffers pending flush, all data were
		delivered via dataCollected events.
		
		Issued when attached to a worker.
		
		Issued when detached from the worker.
		
		Notifies about a new protocol message received from the session
		(session ID is provided in attachedToWorker notification).
		
		Fired when page is about to send HTTP request.
		
		Fired when HTTP response is available.
		
		This event is fired instead of `Runtime.executionContextDestroyed` when
		enabled.
		It is fired when the Node process finished all code execution and is
		waiting for all frontends to disconnect.
		
		This event is fired when the runtime is waiting for the debugger. For
		example, when inspector.waitingForDebugger is called
	**/
	@:overload(function(event:String, listener:(message:node.inspector.InspectorNotification<Dynamic>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:node.inspector.InspectorNotification<node.inspector.runtime.ExecutionContextCreatedEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:node.inspector.InspectorNotification<node.inspector.runtime.ExecutionContextDestroyedEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:() -> Void):Session { })
	@:overload(function(event:String, listener:(message:node.inspector.InspectorNotification<node.inspector.runtime.ExceptionThrownEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:node.inspector.InspectorNotification<node.inspector.runtime.ExceptionRevokedEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:node.inspector.InspectorNotification<node.inspector.runtime.ConsoleAPICalledEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:node.inspector.InspectorNotification<node.inspector.runtime.InspectRequestedEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:node.inspector.InspectorNotification<node.inspector.debugger.ScriptParsedEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:node.inspector.InspectorNotification<node.inspector.debugger.ScriptFailedToParseEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:node.inspector.InspectorNotification<node.inspector.debugger.BreakpointResolvedEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:node.inspector.InspectorNotification<node.inspector.debugger.PausedEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:() -> Void):Session { })
	@:overload(function(event:String, listener:(message:node.inspector.InspectorNotification<node.inspector.console.MessageAddedEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:node.inspector.InspectorNotification<node.inspector.profiler.ConsoleProfileStartedEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:node.inspector.InspectorNotification<node.inspector.profiler.ConsoleProfileFinishedEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:node.inspector.InspectorNotification<node.inspector.heapprofiler.AddHeapSnapshotChunkEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:() -> Void):Session { })
	@:overload(function(event:String, listener:(message:node.inspector.InspectorNotification<node.inspector.heapprofiler.ReportHeapSnapshotProgressEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:node.inspector.InspectorNotification<node.inspector.heapprofiler.LastSeenObjectIdEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:node.inspector.InspectorNotification<node.inspector.heapprofiler.HeapStatsUpdateEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:node.inspector.InspectorNotification<node.inspector.nodetracing.DataCollectedEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:() -> Void):Session { })
	@:overload(function(event:String, listener:(message:node.inspector.InspectorNotification<node.inspector.nodeworker.AttachedToWorkerEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:node.inspector.InspectorNotification<node.inspector.nodeworker.DetachedFromWorkerEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:node.inspector.InspectorNotification<node.inspector.nodeworker.ReceivedMessageFromWorkerEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:node.inspector.InspectorNotification<node.inspector.network.RequestWillBeSentEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:node.inspector.InspectorNotification<node.inspector.network.ResponseReceivedEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:node.inspector.InspectorNotification<node.inspector.network.LoadingFailedEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:node.inspector.InspectorNotification<node.inspector.network.LoadingFinishedEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:() -> Void):Session { })
	@:overload(function(event:String, listener:() -> Void):Session { })
	function once(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Session;
	/**
		Emitted when any notification from the V8 Inspector is received.
		
		Issued when new execution context is created.
		
		Issued when execution context is destroyed.
		
		Issued when all executionContexts were cleared in browser
		
		Issued when exception was thrown and unhandled.
		
		Issued when unhandled exception was revoked.
		
		Issued when console API was called.
		
		Issued when object should be inspected (for example, as a result of inspect() command line API call).
		
		Fired when virtual machine parses script. This event is also fired for all known and uncollected scripts upon enabling debugger.
		
		Fired when virtual machine fails to parse the script.
		
		Fired when breakpoint is resolved to an actual script and location.
		
		Fired when the virtual machine stopped on breakpoint or exception or any other stop criteria.
		
		Fired when the virtual machine resumed execution.
		
		Issued when new console message is added.
		
		Sent when new profile recording is started using console.profile() call.
		
		If heap objects tracking has been started then backend regularly sends a current value for last seen object id and corresponding timestamp. If the were changes in the heap since last event then one or more heapStatsUpdate events will be sent before a new lastSeenObjectId event.
		
		If heap objects tracking has been started then backend may send update for one or more fragments
		
		Contains an bucket of collected trace events.
		
		Signals that tracing is stopped and there is no trace buffers pending flush, all data were
		delivered via dataCollected events.
		
		Issued when attached to a worker.
		
		Issued when detached from the worker.
		
		Notifies about a new protocol message received from the session
		(session ID is provided in attachedToWorker notification).
		
		Fired when page is about to send HTTP request.
		
		Fired when HTTP response is available.
		
		This event is fired instead of `Runtime.executionContextDestroyed` when
		enabled.
		It is fired when the Node process finished all code execution and is
		waiting for all frontends to disconnect.
		
		This event is fired when the runtime is waiting for the debugger. For
		example, when inspector.waitingForDebugger is called
	**/
	@:overload(function(event:String, listener:(message:node.inspector.InspectorNotification<Dynamic>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:node.inspector.InspectorNotification<node.inspector.runtime.ExecutionContextCreatedEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:node.inspector.InspectorNotification<node.inspector.runtime.ExecutionContextDestroyedEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:() -> Void):Session { })
	@:overload(function(event:String, listener:(message:node.inspector.InspectorNotification<node.inspector.runtime.ExceptionThrownEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:node.inspector.InspectorNotification<node.inspector.runtime.ExceptionRevokedEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:node.inspector.InspectorNotification<node.inspector.runtime.ConsoleAPICalledEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:node.inspector.InspectorNotification<node.inspector.runtime.InspectRequestedEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:node.inspector.InspectorNotification<node.inspector.debugger.ScriptParsedEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:node.inspector.InspectorNotification<node.inspector.debugger.ScriptFailedToParseEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:node.inspector.InspectorNotification<node.inspector.debugger.BreakpointResolvedEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:node.inspector.InspectorNotification<node.inspector.debugger.PausedEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:() -> Void):Session { })
	@:overload(function(event:String, listener:(message:node.inspector.InspectorNotification<node.inspector.console.MessageAddedEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:node.inspector.InspectorNotification<node.inspector.profiler.ConsoleProfileStartedEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:node.inspector.InspectorNotification<node.inspector.profiler.ConsoleProfileFinishedEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:node.inspector.InspectorNotification<node.inspector.heapprofiler.AddHeapSnapshotChunkEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:() -> Void):Session { })
	@:overload(function(event:String, listener:(message:node.inspector.InspectorNotification<node.inspector.heapprofiler.ReportHeapSnapshotProgressEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:node.inspector.InspectorNotification<node.inspector.heapprofiler.LastSeenObjectIdEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:node.inspector.InspectorNotification<node.inspector.heapprofiler.HeapStatsUpdateEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:node.inspector.InspectorNotification<node.inspector.nodetracing.DataCollectedEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:() -> Void):Session { })
	@:overload(function(event:String, listener:(message:node.inspector.InspectorNotification<node.inspector.nodeworker.AttachedToWorkerEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:node.inspector.InspectorNotification<node.inspector.nodeworker.DetachedFromWorkerEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:node.inspector.InspectorNotification<node.inspector.nodeworker.ReceivedMessageFromWorkerEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:node.inspector.InspectorNotification<node.inspector.network.RequestWillBeSentEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:node.inspector.InspectorNotification<node.inspector.network.ResponseReceivedEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:node.inspector.InspectorNotification<node.inspector.network.LoadingFailedEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:node.inspector.InspectorNotification<node.inspector.network.LoadingFinishedEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:() -> Void):Session { })
	@:overload(function(event:String, listener:() -> Void):Session { })
	function prependListener(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Session;
	/**
		Emitted when any notification from the V8 Inspector is received.
		
		Issued when new execution context is created.
		
		Issued when execution context is destroyed.
		
		Issued when all executionContexts were cleared in browser
		
		Issued when exception was thrown and unhandled.
		
		Issued when unhandled exception was revoked.
		
		Issued when console API was called.
		
		Issued when object should be inspected (for example, as a result of inspect() command line API call).
		
		Fired when virtual machine parses script. This event is also fired for all known and uncollected scripts upon enabling debugger.
		
		Fired when virtual machine fails to parse the script.
		
		Fired when breakpoint is resolved to an actual script and location.
		
		Fired when the virtual machine stopped on breakpoint or exception or any other stop criteria.
		
		Fired when the virtual machine resumed execution.
		
		Issued when new console message is added.
		
		Sent when new profile recording is started using console.profile() call.
		
		If heap objects tracking has been started then backend regularly sends a current value for last seen object id and corresponding timestamp. If the were changes in the heap since last event then one or more heapStatsUpdate events will be sent before a new lastSeenObjectId event.
		
		If heap objects tracking has been started then backend may send update for one or more fragments
		
		Contains an bucket of collected trace events.
		
		Signals that tracing is stopped and there is no trace buffers pending flush, all data were
		delivered via dataCollected events.
		
		Issued when attached to a worker.
		
		Issued when detached from the worker.
		
		Notifies about a new protocol message received from the session
		(session ID is provided in attachedToWorker notification).
		
		Fired when page is about to send HTTP request.
		
		Fired when HTTP response is available.
		
		This event is fired instead of `Runtime.executionContextDestroyed` when
		enabled.
		It is fired when the Node process finished all code execution and is
		waiting for all frontends to disconnect.
		
		This event is fired when the runtime is waiting for the debugger. For
		example, when inspector.waitingForDebugger is called
	**/
	@:overload(function(event:String, listener:(message:node.inspector.InspectorNotification<Dynamic>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:node.inspector.InspectorNotification<node.inspector.runtime.ExecutionContextCreatedEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:node.inspector.InspectorNotification<node.inspector.runtime.ExecutionContextDestroyedEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:() -> Void):Session { })
	@:overload(function(event:String, listener:(message:node.inspector.InspectorNotification<node.inspector.runtime.ExceptionThrownEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:node.inspector.InspectorNotification<node.inspector.runtime.ExceptionRevokedEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:node.inspector.InspectorNotification<node.inspector.runtime.ConsoleAPICalledEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:node.inspector.InspectorNotification<node.inspector.runtime.InspectRequestedEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:node.inspector.InspectorNotification<node.inspector.debugger.ScriptParsedEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:node.inspector.InspectorNotification<node.inspector.debugger.ScriptFailedToParseEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:node.inspector.InspectorNotification<node.inspector.debugger.BreakpointResolvedEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:node.inspector.InspectorNotification<node.inspector.debugger.PausedEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:() -> Void):Session { })
	@:overload(function(event:String, listener:(message:node.inspector.InspectorNotification<node.inspector.console.MessageAddedEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:node.inspector.InspectorNotification<node.inspector.profiler.ConsoleProfileStartedEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:node.inspector.InspectorNotification<node.inspector.profiler.ConsoleProfileFinishedEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:node.inspector.InspectorNotification<node.inspector.heapprofiler.AddHeapSnapshotChunkEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:() -> Void):Session { })
	@:overload(function(event:String, listener:(message:node.inspector.InspectorNotification<node.inspector.heapprofiler.ReportHeapSnapshotProgressEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:node.inspector.InspectorNotification<node.inspector.heapprofiler.LastSeenObjectIdEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:node.inspector.InspectorNotification<node.inspector.heapprofiler.HeapStatsUpdateEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:node.inspector.InspectorNotification<node.inspector.nodetracing.DataCollectedEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:() -> Void):Session { })
	@:overload(function(event:String, listener:(message:node.inspector.InspectorNotification<node.inspector.nodeworker.AttachedToWorkerEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:node.inspector.InspectorNotification<node.inspector.nodeworker.DetachedFromWorkerEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:node.inspector.InspectorNotification<node.inspector.nodeworker.ReceivedMessageFromWorkerEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:node.inspector.InspectorNotification<node.inspector.network.RequestWillBeSentEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:node.inspector.InspectorNotification<node.inspector.network.ResponseReceivedEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:node.inspector.InspectorNotification<node.inspector.network.LoadingFailedEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:(message:node.inspector.InspectorNotification<node.inspector.network.LoadingFinishedEventDataType>) -> Void):Session { })
	@:overload(function(event:String, listener:() -> Void):Session { })
	@:overload(function(event:String, listener:() -> Void):Session { })
	function prependOnceListener(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Session;
	/**
		Removes the specified `listener` from the listener array for the event named `eventName`.
		
		```js
		const callback = (stream) => {
		  console.log('someone connected!');
		};
		server.on('connection', callback);
		// ...
		server.removeListener('connection', callback);
		```
		
		`removeListener()` will remove, at most, one instance of a listener from the
		listener array. If any single listener has been added multiple times to the
		listener array for the specified `eventName`, then `removeListener()` must be
		called multiple times to remove each instance.
		
		Once an event is emitted, all listeners attached to it at the
		time of emitting are called in order. This implies that any `removeListener()` or `removeAllListeners()` calls _after_ emitting and _before_ the last listener finishes execution
		will not remove them from`emit()` in progress. Subsequent events behave as expected.
		
		```js
		import { EventEmitter } from 'node:events';
		class MyEmitter extends EventEmitter {}
		const myEmitter = new MyEmitter();
		
		const callbackA = () => {
		  console.log('A');
		  myEmitter.removeListener('event', callbackB);
		};
		
		const callbackB = () => {
		  console.log('B');
		};
		
		myEmitter.on('event', callbackA);
		
		myEmitter.on('event', callbackB);
		
		// callbackA removes listener callbackB but it will still be called.
		// Internal listener array at time of emit [callbackA, callbackB]
		myEmitter.emit('event');
		// Prints:
		//   A
		//   B
		
		// callbackB is now removed.
		// Internal listener array [callbackA]
		myEmitter.emit('event');
		// Prints:
		//   A
		```
		
		Because listeners are managed using an internal array, calling this will
		change the position indices of any listener registered _after_ the listener
		being removed. This will not impact the order in which listeners are called,
		but it means that any copies of the listener array as returned by
		the `emitter.listeners()` method will need to be recreated.
		
		When a single function has been added as a handler multiple times for a single
		event (as in the example below), `removeListener()` will remove the most
		recently added instance. In the example the `once('ping')` listener is removed:
		
		```js
		import { EventEmitter } from 'node:events';
		const ee = new EventEmitter();
		
		function pong() {
		  console.log('pong');
		}
		
		ee.on('ping', pong);
		ee.once('ping', pong);
		ee.removeListener('ping', pong);
		
		ee.emit('ping');
		ee.emit('ping');
		```
		
		Returns a reference to the `EventEmitter`, so that calls can be chained.
	**/
	function removeListener<K>(eventName:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Session;
	/**
		Alias for `emitter.removeListener()`.
	**/
	function off<K>(eventName:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Session;
	/**
		Removes all listeners, or those of the specified `eventName`.
		
		It is bad practice to remove listeners added elsewhere in the code,
		particularly when the `EventEmitter` instance was created by some other
		component or module (e.g. sockets or file streams).
		
		Returns a reference to the `EventEmitter`, so that calls can be chained.
	**/
	function removeAllListeners(?eventName:ts.AnyOf2<String, js.lib.Symbol>):Session;
	/**
		By default `EventEmitter`s will print a warning if more than `10` listeners are
		added for a particular event. This is a useful default that helps finding
		memory leaks. The `emitter.setMaxListeners()` method allows the limit to be
		modified for this specific `EventEmitter` instance. The value can be set to `Infinity` (or `0`) to indicate an unlimited number of listeners.
		
		Returns a reference to the `EventEmitter`, so that calls can be chained.
	**/
	function setMaxListeners(n:Float):Session;
	static var prototype : Session;
}