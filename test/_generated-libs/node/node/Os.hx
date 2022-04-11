package node;

@:jsRequire("os") @valueModuleOnly extern class Os {
	static function hostname():String;
	static function loadavg():Array<Float>;
	static function uptime():Float;
	static function freemem():Float;
	static function totalmem():Float;
	static function cpus():Array<node.os.CpuInfo>;
	static function type():String;
	static function release():String;
	static function networkInterfaces():haxe.DynamicAccess<Array<node.os.NetworkInterfaceInfo>>;
	static function homedir():String;
	@:overload(function(?options:{ var encoding : String; }):node.os.UserInfo<String> { })
	static function userInfo(options:{ var encoding : String; }):node.os.UserInfo<global.Buffer>;
	static function arch():String;
	static function platform():global.nodejs.Platform;
	static function tmpdir():String;
	static function endianness():String;
	/**
		Gets the priority of a process.
		Defaults to current process.
	**/
	static function getPriority(?pid:Float):Float;
	/**
		Sets the priority of the current process.
		
		Sets the priority of the process specified process.
	**/
	@:overload(function(pid:Float, priority:Float):Void { })
	static function setPriority(priority:Float):Void;
	static final constants : {
		var UV_UDP_REUSEADDR : Float;
		var signals : {
			var SIGHUP : Float;
			var SIGINT : Float;
			var SIGQUIT : Float;
			var SIGILL : Float;
			var SIGTRAP : Float;
			var SIGABRT : Float;
			var SIGIOT : Float;
			var SIGBUS : Float;
			var SIGFPE : Float;
			var SIGKILL : Float;
			var SIGUSR1 : Float;
			var SIGSEGV : Float;
			var SIGUSR2 : Float;
			var SIGPIPE : Float;
			var SIGALRM : Float;
			var SIGTERM : Float;
			var SIGCHLD : Float;
			var SIGSTKFLT : Float;
			var SIGCONT : Float;
			var SIGSTOP : Float;
			var SIGTSTP : Float;
			var SIGTTIN : Float;
			var SIGTTOU : Float;
			var SIGURG : Float;
			var SIGXCPU : Float;
			var SIGXFSZ : Float;
			var SIGVTALRM : Float;
			var SIGPROF : Float;
			var SIGWINCH : Float;
			var SIGIO : Float;
			var SIGPOLL : Float;
			var SIGPWR : Float;
			var SIGSYS : Float;
			var SIGUNUSED : Float;
		};
		var errno : {
			var E2BIG : Float;
			var EACCES : Float;
			var EADDRINUSE : Float;
			var EADDRNOTAVAIL : Float;
			var EAFNOSUPPORT : Float;
			var EAGAIN : Float;
			var EALREADY : Float;
			var EBADF : Float;
			var EBADMSG : Float;
			var EBUSY : Float;
			var ECANCELED : Float;
			var ECHILD : Float;
			var ECONNABORTED : Float;
			var ECONNREFUSED : Float;
			var ECONNRESET : Float;
			var EDEADLK : Float;
			var EDESTADDRREQ : Float;
			var EDOM : Float;
			var EDQUOT : Float;
			var EEXIST : Float;
			var EFAULT : Float;
			var EFBIG : Float;
			var EHOSTUNREACH : Float;
			var EIDRM : Float;
			var EILSEQ : Float;
			var EINPROGRESS : Float;
			var EINTR : Float;
			var EINVAL : Float;
			var EIO : Float;
			var EISCONN : Float;
			var EISDIR : Float;
			var ELOOP : Float;
			var EMFILE : Float;
			var EMLINK : Float;
			var EMSGSIZE : Float;
			var EMULTIHOP : Float;
			var ENAMETOOLONG : Float;
			var ENETDOWN : Float;
			var ENETRESET : Float;
			var ENETUNREACH : Float;
			var ENFILE : Float;
			var ENOBUFS : Float;
			var ENODATA : Float;
			var ENODEV : Float;
			var ENOENT : Float;
			var ENOEXEC : Float;
			var ENOLCK : Float;
			var ENOLINK : Float;
			var ENOMEM : Float;
			var ENOMSG : Float;
			var ENOPROTOOPT : Float;
			var ENOSPC : Float;
			var ENOSR : Float;
			var ENOSTR : Float;
			var ENOSYS : Float;
			var ENOTCONN : Float;
			var ENOTDIR : Float;
			var ENOTEMPTY : Float;
			var ENOTSOCK : Float;
			var ENOTSUP : Float;
			var ENOTTY : Float;
			var ENXIO : Float;
			var EOPNOTSUPP : Float;
			var EOVERFLOW : Float;
			var EPERM : Float;
			var EPIPE : Float;
			var EPROTO : Float;
			var EPROTONOSUPPORT : Float;
			var EPROTOTYPE : Float;
			var ERANGE : Float;
			var EROFS : Float;
			var ESPIPE : Float;
			var ESRCH : Float;
			var ESTALE : Float;
			var ETIME : Float;
			var ETIMEDOUT : Float;
			var ETXTBSY : Float;
			var EWOULDBLOCK : Float;
			var EXDEV : Float;
		};
		var priority : {
			var PRIORITY_LOW : Float;
			var PRIORITY_BELOW_NORMAL : Float;
			var PRIORITY_NORMAL : Float;
			var PRIORITY_ABOVE_NORMAL : Float;
			var PRIORITY_HIGH : Float;
			var PRIORITY_HIGHEST : Float;
		};
	};
	static final EOL : String;
}