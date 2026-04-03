package node.os;

@:jsRequire("os", "constants") @valueModuleOnly extern class Constants {
	static final UV_UDP_REUSEADDR : Float;
	static final signals : {
		var SIGABRT : Float;
		var SIGALRM : Float;
		var SIGBUS : Float;
		var SIGCHLD : Float;
		var SIGCONT : Float;
		var SIGFPE : Float;
		var SIGHUP : Float;
		var SIGILL : Float;
		var SIGINT : Float;
		var SIGIO : Float;
		var SIGIOT : Float;
		var SIGKILL : Float;
		var SIGPIPE : Float;
		var SIGPOLL : Float;
		var SIGPROF : Float;
		var SIGPWR : Float;
		var SIGQUIT : Float;
		var SIGSEGV : Float;
		var SIGSTKFLT : Float;
		var SIGSTOP : Float;
		var SIGSYS : Float;
		var SIGTERM : Float;
		var SIGTRAP : Float;
		var SIGTSTP : Float;
		var SIGTTIN : Float;
		var SIGTTOU : Float;
		var SIGUNUSED : Float;
		var SIGURG : Float;
		var SIGUSR1 : Float;
		var SIGUSR2 : Float;
		var SIGVTALRM : Float;
		var SIGWINCH : Float;
		var SIGXCPU : Float;
		var SIGXFSZ : Float;
		var SIGBREAK : Float;
		var SIGLOST : Float;
		var SIGINFO : Float;
	};
}