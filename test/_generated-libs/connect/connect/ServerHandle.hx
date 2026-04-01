package connect;

typedef ServerHandle = ts.AnyOf4<node.http.Server, SimpleHandleFunction, NextHandleFunction, ErrorHandleFunction>;