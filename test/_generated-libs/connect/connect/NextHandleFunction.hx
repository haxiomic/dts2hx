package connect;

typedef NextHandleFunction = (req:IncomingMessage, res:node.http.ServerResponse<node.http.IncomingMessage>, next:NextFunction) -> Void;