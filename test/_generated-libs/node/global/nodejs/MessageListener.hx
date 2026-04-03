package global.nodejs;

typedef MessageListener = (message:Any, sendHandle:node.child_process.SendHandle) -> Void;