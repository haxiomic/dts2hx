package connect;

typedef SimpleHandleFunction = (req:IncomingMessage, res:node.http.ServerResponse<node.http.IncomingMessage>) -> Void;