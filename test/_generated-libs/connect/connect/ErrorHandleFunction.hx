package connect;

typedef ErrorHandleFunction = (err:Dynamic, req:IncomingMessage, res:node.http.ServerResponse, next:NextFunction) -> Void;