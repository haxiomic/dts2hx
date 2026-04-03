package connect;

typedef ErrorHandleFunction = (err:Dynamic, req:IncomingMessage, res:node.http.ServerResponse<node.http.IncomingMessage>, next:NextFunction) -> Void;