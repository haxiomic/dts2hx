package connect;
typedef ErrorHandleFunction = (err:Dynamic, req:IncomingMessage, res:connect.http.ServerResponse, next:NextFunction) -> Void;