package global.nodejs;
extern typedef Process = EventEmitter & { /**
		Can also be a tty.WriteStream, not typed due to limitation.s
	**/
	var stdout : WriteStream; /**
		Can also be a tty.WriteStream, not typed due to limitation.s
	**/
	var stderr : WriteStream; var stdin : ReadStream; function openStdin():Socket; var argv : std.Array<String>; var argv0 : String; var execArgv : std.Array<String>; var execPath : String; function abort():Void; function chdir(directory:String):Void; function cwd():String; var debugPort : Float; function emitWarning(warning:haxe.extern.EitherType<String, js.lib.Error>, ?name:String, ?ctor:js.lib.Function):Void; var env : ProcessEnv; function exit(?code:Float):Any; var exitCode : Float; function getgid():Float; function setgid(id:haxe.extern.EitherType<String, Float>):Void; function getuid():Float; function setuid(id:haxe.extern.EitherType<String, Float>):Void; function geteuid():Float; function seteuid(id:haxe.extern.EitherType<String, Float>):Void; function getegid():Float; function setegid(id:haxe.extern.EitherType<String, Float>):Void; function getgroups():std.Array<Float>; function setgroups(groups:std.Array<haxe.extern.EitherType<String, Float>>):Void; function setUncaughtExceptionCaptureCallback(cb:Null<(err:js.lib.Error) -> Void>):Void; function hasUncaughtExceptionCaptureCallback():Bool; var version : String; var versions : ProcessVersions; var config : { var target_defaults : { var cflags : std.Array<Any>; var default_configuration : String; var defines : std.Array<String>; var include_dirs : std.Array<String>; var libraries : std.Array<String>; }; var variables : { var clang : Float; var host_arch : String; var node_install_npm : Bool; var node_install_waf : Bool; var node_prefix : String; var node_shared_openssl : Bool; var node_shared_v8 : Bool; var node_shared_zlib : Bool; var node_use_dtrace : Bool; var node_use_etw : Bool; var node_use_openssl : Bool; var target_arch : String; var v8_no_strict_aliasing : Float; var v8_use_snapshot : Bool; var visibility : String; }; }; function kill(pid:Float, ?signal:haxe.extern.EitherType<String, Float>):Void; var pid : Float; var ppid : Float; var title : String; var arch : String; var platform : String; @:optional
	var mainModule : global.NodeModule; function memoryUsage():MemoryUsage; function cpuUsage(?previousValue:CpuUsage):CpuUsage; function nextTick(callback:js.lib.Function, args:std.Array<Any>):Void; var release : ProcessRelease; var features : { var inspector : Bool; var debug : Bool; var uv : Bool; var ipv6 : Bool; var tls_alpn : Bool; var tls_sni : Bool; var tls_ocsp : Bool; var tls : Bool; }; /**
		Can only be set if not in worker thread.
	**/
	function umask(?mask:Float):Float; function uptime():Float; var hrtime : HRTime; var domain : Domain; @:optional
	function send(message:Any, ?sendHandle:Any):Void; function disconnect():Void; var connected : Bool; /**
		The `process.allowedNodeEnvironmentFlags` property is a special,
		read-only `Set` of flags allowable within the [`NODE_OPTIONS`][]
		environment variable.
	**/
	var allowedNodeEnvironmentFlags : js.lib.ReadonlySet<String>; /**
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
	@:overload(function(event:String, listener:() -> Void):Process { })
	@:overload(function(event:String, listener:(code:Float) -> Void):Process { })
	@:overload(function(event:String, listener:(promise:js.lib.Promise<Any>) -> Void):Process { })
	@:overload(function(event:String, listener:(error:js.lib.Error) -> Void):Process { })
	@:overload(function(event:String, listener:(reason:Null<{ }>, promise:js.lib.Promise<Any>) -> Void):Process { })
	@:overload(function(event:String, listener:(warning:js.lib.Error) -> Void):Process { })
	@:overload(function(event:String, listener:(message:Any, sendHandle:Any) -> Void):Process { })
	@:overload(function(event:String, listener:(signal:String) -> Void):Process { })
	@:overload(function(event:String, listener:(type:haxe.extern.EitherType<String, js.lib.Symbol>, listener:(args:std.Array<Any>) -> Void) -> Void):Process { })
	@:overload(function(event:String, listener:(type:haxe.extern.EitherType<String, js.lib.Symbol>, listener:(args:std.Array<Any>) -> Void) -> Void):Process { })
	@:overload(function(event:String, listener:(type:String, promise:js.lib.Promise<Any>, value:Any) -> Void):Process { })
	function addListener(event:String, listener:(code:Float) -> Void):Process; @:overload(function(event:String):Bool { })
	@:overload(function(event:String, code:Float):Bool { })
	@:overload(function(event:String, promise:js.lib.Promise<Any>):Bool { })
	@:overload(function(event:String, error:js.lib.Error):Bool { })
	@:overload(function(event:String, reason:Any, promise:js.lib.Promise<Any>):Bool { })
	@:overload(function(event:String, warning:js.lib.Error):Bool { })
	@:overload(function(event:String, message:Any, sendHandle:Any):Process { })
	@:overload(function(event:String, signal:String):Bool { })
	@:overload(function(event:String, eventName:haxe.extern.EitherType<String, js.lib.Symbol>, listener:(args:std.Array<Any>) -> Void):Process { })
	@:overload(function(event:String, eventName:String, listener:(args:std.Array<Any>) -> Void):Process { })
	@:overload(function(event:String, listener:(type:String, promise:js.lib.Promise<Any>, value:Any) -> Void):Process { })
	function emit(event:String, code:Float):Bool; @:overload(function(event:String, listener:() -> Void):Process { })
	@:overload(function(event:String, listener:(code:Float) -> Void):Process { })
	@:overload(function(event:String, listener:(promise:js.lib.Promise<Any>) -> Void):Process { })
	@:overload(function(event:String, listener:(error:js.lib.Error) -> Void):Process { })
	@:overload(function(event:String, listener:(reason:Null<{ }>, promise:js.lib.Promise<Any>) -> Void):Process { })
	@:overload(function(event:String, listener:(warning:js.lib.Error) -> Void):Process { })
	@:overload(function(event:String, listener:(message:Any, sendHandle:Any) -> Void):Process { })
	@:overload(function(event:String, listener:(signal:String) -> Void):Process { })
	@:overload(function(event:String, listener:(type:haxe.extern.EitherType<String, js.lib.Symbol>, listener:(args:std.Array<Any>) -> Void) -> Void):Process { })
	@:overload(function(event:String, listener:(type:haxe.extern.EitherType<String, js.lib.Symbol>, listener:(args:std.Array<Any>) -> Void) -> Void):Process { })
	@:overload(function(event:String, listener:(type:String, promise:js.lib.Promise<Any>, value:Any) -> Void):Process { })
	function on(event:String, listener:(code:Float) -> Void):Process; @:overload(function(event:String, listener:() -> Void):Process { })
	@:overload(function(event:String, listener:(code:Float) -> Void):Process { })
	@:overload(function(event:String, listener:(promise:js.lib.Promise<Any>) -> Void):Process { })
	@:overload(function(event:String, listener:(error:js.lib.Error) -> Void):Process { })
	@:overload(function(event:String, listener:(reason:Null<{ }>, promise:js.lib.Promise<Any>) -> Void):Process { })
	@:overload(function(event:String, listener:(warning:js.lib.Error) -> Void):Process { })
	@:overload(function(event:String, listener:(message:Any, sendHandle:Any) -> Void):Process { })
	@:overload(function(event:String, listener:(signal:String) -> Void):Process { })
	@:overload(function(event:String, listener:(type:haxe.extern.EitherType<String, js.lib.Symbol>, listener:(args:std.Array<Any>) -> Void) -> Void):Process { })
	@:overload(function(event:String, listener:(type:haxe.extern.EitherType<String, js.lib.Symbol>, listener:(args:std.Array<Any>) -> Void) -> Void):Process { })
	@:overload(function(event:String, listener:(type:String, promise:js.lib.Promise<Any>, value:Any) -> Void):Process { })
	function once(event:String, listener:(code:Float) -> Void):Process; @:overload(function(event:String, listener:() -> Void):Process { })
	@:overload(function(event:String, listener:(code:Float) -> Void):Process { })
	@:overload(function(event:String, listener:(promise:js.lib.Promise<Any>) -> Void):Process { })
	@:overload(function(event:String, listener:(error:js.lib.Error) -> Void):Process { })
	@:overload(function(event:String, listener:(reason:Null<{ }>, promise:js.lib.Promise<Any>) -> Void):Process { })
	@:overload(function(event:String, listener:(warning:js.lib.Error) -> Void):Process { })
	@:overload(function(event:String, listener:(message:Any, sendHandle:Any) -> Void):Process { })
	@:overload(function(event:String, listener:(signal:String) -> Void):Process { })
	@:overload(function(event:String, listener:(type:haxe.extern.EitherType<String, js.lib.Symbol>, listener:(args:std.Array<Any>) -> Void) -> Void):Process { })
	@:overload(function(event:String, listener:(type:haxe.extern.EitherType<String, js.lib.Symbol>, listener:(args:std.Array<Any>) -> Void) -> Void):Process { })
	@:overload(function(event:String, listener:(type:String, promise:js.lib.Promise<Any>, value:Any) -> Void):Process { })
	function prependListener(event:String, listener:(code:Float) -> Void):Process; @:overload(function(event:String, listener:() -> Void):Process { })
	@:overload(function(event:String, listener:(code:Float) -> Void):Process { })
	@:overload(function(event:String, listener:(promise:js.lib.Promise<Any>) -> Void):Process { })
	@:overload(function(event:String, listener:(error:js.lib.Error) -> Void):Process { })
	@:overload(function(event:String, listener:(reason:Null<{ }>, promise:js.lib.Promise<Any>) -> Void):Process { })
	@:overload(function(event:String, listener:(warning:js.lib.Error) -> Void):Process { })
	@:overload(function(event:String, listener:(message:Any, sendHandle:Any) -> Void):Process { })
	@:overload(function(event:String, listener:(signal:String) -> Void):Process { })
	@:overload(function(event:String, listener:(type:haxe.extern.EitherType<String, js.lib.Symbol>, listener:(args:std.Array<Any>) -> Void) -> Void):Process { })
	@:overload(function(event:String, listener:(type:haxe.extern.EitherType<String, js.lib.Symbol>, listener:(args:std.Array<Any>) -> Void) -> Void):Process { })
	@:overload(function(event:String, listener:(type:String, promise:js.lib.Promise<Any>, value:Any) -> Void):Process { })
	function prependOnceListener(event:String, listener:(code:Float) -> Void):Process; @:overload(function(event:String):std.Array<() -> Void> { })
	@:overload(function(event:String):std.Array<(code:Float) -> Void> { })
	@:overload(function(event:String):std.Array<(promise:js.lib.Promise<Any>) -> Void> { })
	@:overload(function(event:String):std.Array<(error:js.lib.Error) -> Void> { })
	@:overload(function(event:String):std.Array<(reason:Null<{ }>, promise:js.lib.Promise<Any>) -> Void> { })
	@:overload(function(event:String):std.Array<(warning:js.lib.Error) -> Void> { })
	@:overload(function(event:String):std.Array<(message:Any, sendHandle:Any) -> Void> { })
	@:overload(function(event:String):std.Array<(signal:String) -> Void> { })
	@:overload(function(event:String):std.Array<(type:haxe.extern.EitherType<String, js.lib.Symbol>, listener:(args:std.Array<Any>) -> Void) -> Void> { })
	@:overload(function(event:String):std.Array<(type:haxe.extern.EitherType<String, js.lib.Symbol>, listener:(args:std.Array<Any>) -> Void) -> Void> { })
	@:overload(function(event:String):std.Array<(type:String, promise:js.lib.Promise<Any>, value:Any) -> Void> { })
	function listeners(event:String):std.Array<(code:Float) -> Void>; };