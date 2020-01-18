enum abstract LogLevel(Int) to Int {
    var None = 0;
    var Error = 1;
    var Warning = 2;
    var Logs = 3;
    var All = 4;
}

class Log {

    public final logs = new Array<String>();
    public final warnings = new Array<String>();
    public final errors = new Array<String>();

    var printLogs: Bool;
    var printWarnings: Bool;
    var printErrors: Bool;

    public function new(?printLogLevel: LogLevel = All) {
        setPrintLogLevel(printLogLevel);
    }

    public function setPrintLogLevel(level: LogLevel) {
        printLogs = (level: Int) >= (Logs: Int);
        printWarnings = (level: Int) >= (Warning: Int);
        printErrors = (level: Int) >= (Error: Int);
    }

    public function log(?arg1: Any, ?arg2: Any, ?arg3: Any, ?arg4: Any, ?arg5: Any, ?arg6: Any) {
        var str = joinArgs([arg1, arg2, arg3, arg4, arg5, arg6]);
        if (printLogs) {
            Console.log(str);
        }
        logs.push(str);
    }

    public function warn(?arg1: Any, ?arg2: Any, ?arg3: Any, ?arg4: Any, ?arg5: Any, ?arg6: Any) {
        var str = joinArgs([arg1, arg2, arg3, arg4, arg5, arg6]);
        if (printWarnings) {
            Console.warn(str);
        }
        warnings.push(str);
    }

    public function error(?arg1: Any, ?arg2: Any, ?arg3: Any, ?arg4: Any, ?arg5: Any, ?arg6: Any) {
        var str = joinArgs([arg1, arg2, arg3, arg4, arg5, arg6]);
        if (printErrors) {
            Console.error(str);
        }
        errors.push(str);
    }

    function joinArgs(args: Array<Any>) {
        return args.filter(arg -> arg != null).join(', ');
    }

}