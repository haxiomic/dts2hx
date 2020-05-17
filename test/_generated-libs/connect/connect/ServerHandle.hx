package connect;

typedef ServerHandle = ts.AnyOf4<SimpleHandleFunction, NextHandleFunction, ErrorHandleFunction, node.http.Server>;