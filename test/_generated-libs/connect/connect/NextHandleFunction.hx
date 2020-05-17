package connect;

typedef NextHandleFunction = (req:IncomingMessage, res:node.http.ServerResponse, next:NextFunction) -> Void;