package connect;
typedef NextHandleFunction = (req:IncomingMessage, res:connect.http.ServerResponse, next:NextFunction) -> Void;