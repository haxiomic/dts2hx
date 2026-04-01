package node.http;

typedef RequestListener = (req:IncomingMessage, res:ServerResponse) -> Void;