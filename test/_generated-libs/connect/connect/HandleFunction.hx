package connect;

typedef HandleFunction = ts.AnyOf3<SimpleHandleFunction, NextHandleFunction, ErrorHandleFunction>;