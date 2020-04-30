package node.repl;
typedef REPLEval = (evalCmd:String, context:node.vm.Context, file:String, cb:(err:Null<ts.lib.IError>, result:Any) -> Void) -> Void;