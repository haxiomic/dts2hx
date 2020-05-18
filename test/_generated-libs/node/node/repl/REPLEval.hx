package node.repl;

typedef REPLEval = (evalCmd:String, context:node.vm.Context, file:String, cb:(err:Null<js.lib.Error>, result:Dynamic) -> Void) -> Void;