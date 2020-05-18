package global.nodejs;

typedef Process = {
	/**
		Can also be a tty.WriteStream, not typed due to limitation.s
	**/
	var stdout : WriteStream;
	/**
		Can also be a tty.WriteStream, not typed due to limitation.s
	**/
	var stderr : WriteStream;
	var stdin : ReadStream;
	function openStdin():Socket;
	var argv : Array<String>;
	var argv0 : String;
	var execArgv : Array<String>;
	var execPath : String;
	function abort():Void;
	function chdir(directory:String):Void;
	function cwd():String;
	var debugPort : Float;
	function emitWarning(warning:ts.AnyOf2<String, js.lib.Error>, ?name:String, ?ctor:js.lib.Function):Void;
	var env : ProcessEnv;
	function exit(?code:Float):Any;
	var exitCode : Float;
	function getgid():Float;
	function setgid(id:ts.AnyOf2<String, Float>):Void;
	function getuid():Float;
	function setuid(id:ts.AnyOf2<String, Float>):Void;
	function geteuid():Float;
	function seteuid(id:ts.AnyOf2<String, Float>):Void;
	function getegid():Float;
	function setegid(id:ts.AnyOf2<String, Float>):Void;
	function getgroups():Array<Float>;
	function setgroups(groups:Array<ts.AnyOf2<String, Float>>):Void;
	function setUncaughtExceptionCaptureCallback(cb:Null<(err:js.lib.Error) -> Void>):Void;
	function hasUncaughtExceptionCaptureCallback():Bool;
	var version : String;
	var versions : ProcessVersions;
	var config : {
		var target_defaults : {
			var cflags : Array<Dynamic>;
			var default_configuration : String;
			var defines : Array<String>;
			var include_dirs : Array<String>;
			var libraries : Array<String>;
		};
		var variables : {
			var clang : Float;
			var host_arch : String;
			var node_install_npm : Bool;
			var node_install_waf : Bool;
			var node_prefix : String;
			var node_shared_openssl : Bool;
			var node_shared_v8 : Bool;
			var node_shared_zlib : Bool;
			var node_use_dtrace : Bool;
			var node_use_etw : Bool;
			var node_use_openssl : Bool;
			var target_arch : String;
			var v8_no_strict_aliasing : Float;
			var v8_use_snapshot : Bool;
			var visibility : String;
		};
	};
	function kill(pid:Float, ?signal:ts.AnyOf2<String, Float>):Void;
	var pid : Float;
	var ppid : Float;
	var title : String;
	var arch : String;
	var platform : Platform;
	@:optional
	var mainModule : global.NodeModule;
	function memoryUsage():MemoryUsage;
	function cpuUsage(?previousValue:CpuUsage):CpuUsage;
	function nextTick(callback:js.lib.Function, args:haxe.extern.Rest<Dynamic>):Void;
	var release : ProcessRelease;
	var features : {
		var inspector : Bool;
		var debug : Bool;
		var uv : Bool;
		var ipv6 : Bool;
		var tls_alpn : Bool;
		var tls_sni : Bool;
		var tls_ocsp : Bool;
		var tls : Bool;
	};
	/**
		Can only be set if not in worker thread.
	**/
	function umask(?mask:Float):Float;
	function uptime():Float;
	var hrtime : HRTime;
	var domain : Domain;
	@:optional
	function send(message:Dynamic, ?sendHandle:Dynamic):Void;
	function disconnect():Void;
	var connected : Bool;
	/**
		The `process.allowedNodeEnvironmentFlags` property is a special,
		read-only `Set` of flags allowable within the [`NODE_OPTIONS`][]
		environment variable.
	**/
	var allowedNodeEnvironmentFlags : js.lib.ReadonlySet<String>;
	/**
		EventEmitter
		   1. beforeExit
		   2. disconnect
		   3. exit
		   4. message
		   5. rejectionHandled
		   6. uncaughtException
		   7. unhandledRejection
		   8. warning
		   9. message
		  10. <All OS Signals>
		  11. newListener/removeListener inherited from EventEmitter
	**/
	@:overload(function(event:String, listener:DisconnectListener):Process { })
	@:overload(function(event:String, listener:ExitListener):Process { })
	@:overload(function(event:String, listener:RejectionHandledListener):Process { })
	@:overload(function(event:String, listener:UncaughtExceptionListener):Process { })
	@:overload(function(event:String, listener:UnhandledRejectionListener):Process { })
	@:overload(function(event:String, listener:WarningListener):Process { })
	@:overload(function(event:String, listener:MessageListener):Process { })
	@:overload(function(event:Signals, listener:SignalsListener):Process { })
	@:overload(function(event:String, listener:NewListenerListener):Process { })
	@:overload(function(event:String, listener:RemoveListenerListener):Process { })
	@:overload(function(event:String, listener:MultipleResolveListener):Process { })
	function addListener(event:String, listener:BeforeExitListener):Process;
	@:overload(function(event:String):Bool { })
	@:overload(function(event:String, code:Float):Bool { })
	@:overload(function(event:String, promise:js.lib.Promise<Dynamic>):Bool { })
	@:overload(function(event:String, error:js.lib.Error):Bool { })
	@:overload(function(event:String, reason:Dynamic, promise:js.lib.Promise<Dynamic>):Bool { })
	@:overload(function(event:String, warning:js.lib.Error):Bool { })
	@:overload(function(event:String, message:Dynamic, sendHandle:Dynamic):Process { })
	@:overload(function(event:Signals, signal:Signals):Bool { })
	@:overload(function(event:String, eventName:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Process { })
	@:overload(function(event:String, eventName:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Process { })
	@:overload(function(event:String, listener:MultipleResolveListener):Process { })
	function emit(event:String, code:Float):Bool;
	@:overload(function(event:String, listener:DisconnectListener):Process { })
	@:overload(function(event:String, listener:ExitListener):Process { })
	@:overload(function(event:String, listener:RejectionHandledListener):Process { })
	@:overload(function(event:String, listener:UncaughtExceptionListener):Process { })
	@:overload(function(event:String, listener:UnhandledRejectionListener):Process { })
	@:overload(function(event:String, listener:WarningListener):Process { })
	@:overload(function(event:String, listener:MessageListener):Process { })
	@:overload(function(event:Signals, listener:SignalsListener):Process { })
	@:overload(function(event:String, listener:NewListenerListener):Process { })
	@:overload(function(event:String, listener:RemoveListenerListener):Process { })
	@:overload(function(event:String, listener:MultipleResolveListener):Process { })
	function on(event:String, listener:BeforeExitListener):Process;
	@:overload(function(event:String, listener:DisconnectListener):Process { })
	@:overload(function(event:String, listener:ExitListener):Process { })
	@:overload(function(event:String, listener:RejectionHandledListener):Process { })
	@:overload(function(event:String, listener:UncaughtExceptionListener):Process { })
	@:overload(function(event:String, listener:UnhandledRejectionListener):Process { })
	@:overload(function(event:String, listener:WarningListener):Process { })
	@:overload(function(event:String, listener:MessageListener):Process { })
	@:overload(function(event:Signals, listener:SignalsListener):Process { })
	@:overload(function(event:String, listener:NewListenerListener):Process { })
	@:overload(function(event:String, listener:RemoveListenerListener):Process { })
	@:overload(function(event:String, listener:MultipleResolveListener):Process { })
	function once(event:String, listener:BeforeExitListener):Process;
	@:overload(function(event:String, listener:DisconnectListener):Process { })
	@:overload(function(event:String, listener:ExitListener):Process { })
	@:overload(function(event:String, listener:RejectionHandledListener):Process { })
	@:overload(function(event:String, listener:UncaughtExceptionListener):Process { })
	@:overload(function(event:String, listener:UnhandledRejectionListener):Process { })
	@:overload(function(event:String, listener:WarningListener):Process { })
	@:overload(function(event:String, listener:MessageListener):Process { })
	@:overload(function(event:Signals, listener:SignalsListener):Process { })
	@:overload(function(event:String, listener:NewListenerListener):Process { })
	@:overload(function(event:String, listener:RemoveListenerListener):Process { })
	@:overload(function(event:String, listener:MultipleResolveListener):Process { })
	function prependListener(event:String, listener:BeforeExitListener):Process;
	@:overload(function(event:String, listener:DisconnectListener):Process { })
	@:overload(function(event:String, listener:ExitListener):Process { })
	@:overload(function(event:String, listener:RejectionHandledListener):Process { })
	@:overload(function(event:String, listener:UncaughtExceptionListener):Process { })
	@:overload(function(event:String, listener:UnhandledRejectionListener):Process { })
	@:overload(function(event:String, listener:WarningListener):Process { })
	@:overload(function(event:String, listener:MessageListener):Process { })
	@:overload(function(event:Signals, listener:SignalsListener):Process { })
	@:overload(function(event:String, listener:NewListenerListener):Process { })
	@:overload(function(event:String, listener:RemoveListenerListener):Process { })
	@:overload(function(event:String, listener:MultipleResolveListener):Process { })
	function prependOnceListener(event:String, listener:BeforeExitListener):Process;
	@:overload(function(event:String):Array<DisconnectListener> { })
	@:overload(function(event:String):Array<ExitListener> { })
	@:overload(function(event:String):Array<RejectionHandledListener> { })
	@:overload(function(event:String):Array<UncaughtExceptionListener> { })
	@:overload(function(event:String):Array<UnhandledRejectionListener> { })
	@:overload(function(event:String):Array<WarningListener> { })
	@:overload(function(event:String):Array<MessageListener> { })
	@:overload(function(event:Signals):Array<SignalsListener> { })
	@:overload(function(event:String):Array<NewListenerListener> { })
	@:overload(function(event:String):Array<RemoveListenerListener> { })
	@:overload(function(event:String):Array<MultipleResolveListener> { })
	function listeners(event:String):Array<BeforeExitListener>;
	function removeListener(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Process;
	function off(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Process;
	function removeAllListeners(?event:ts.AnyOf2<String, js.lib.Symbol>):Process;
	function setMaxListeners(n:Float):Process;
	function getMaxListeners():Float;
	function rawListeners(event:ts.AnyOf2<String, js.lib.Symbol>):Array<js.lib.Function>;
	function listenerCount(type:ts.AnyOf2<String, js.lib.Symbol>):Float;
	function eventNames():Array<ts.AnyOf2<String, js.lib.Symbol>>;
};