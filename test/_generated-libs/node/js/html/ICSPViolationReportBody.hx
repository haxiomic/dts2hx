package js.html;

/**
	The `CSPViolationReportBody` interface is an extension of the Reporting API that represents the body of a Content Security Policy (CSP) violation report.
	
	[MDN Reference](https://developer.mozilla.org/docs/Web/API/CSPViolationReportBody)
**/
typedef ICSPViolationReportBody = {
	/**
		The **`blockedURL`** read-only property of the CSPViolationReportBody interface is a string value that represents the resource that was blocked because it violates a Content Security Policy (CSP).
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CSPViolationReportBody/blockedURL)
	**/
	final blockedURL : Null<String>;
	/**
		The **`columnNumber`** read-only property of the CSPViolationReportBody interface indicates the column number in the source file that triggered the Content Security Policy (CSP) violation.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CSPViolationReportBody/columnNumber)
	**/
	final columnNumber : Null<Float>;
	/**
		The **`disposition`** read-only property of the CSPViolationReportBody interface indicates whether the user agent is configured to enforce Content Security Policy (CSP) violations or only report them.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CSPViolationReportBody/disposition)
	**/
	final disposition : js.html.SecurityPolicyViolationEventDisposition;
	/**
		The **`documentURL`** read-only property of the CSPViolationReportBody interface is a string that represents the URL of the document or worker that violated the Content Security Policy (CSP).
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CSPViolationReportBody/documentURL)
	**/
	final documentURL : String;
	/**
		The **`effectiveDirective`** read-only property of the CSPViolationReportBody interface is a string that represents the effective Content Security Policy (CSP) directive that was violated.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CSPViolationReportBody/effectiveDirective)
	**/
	final effectiveDirective : String;
	/**
		The **`lineNumber`** read-only property of the CSPViolationReportBody interface indicates the line number in the source file that triggered the Content Security Policy (CSP) violation.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CSPViolationReportBody/lineNumber)
	**/
	final lineNumber : Null<Float>;
	/**
		The **`originalPolicy`** read-only property of the CSPViolationReportBody interface is a string that represents the Content Security Policy (CSP) whose enforcement uncovered the violation.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CSPViolationReportBody/originalPolicy)
	**/
	final originalPolicy : String;
	/**
		The **`referrer`** read-only property of the CSPViolationReportBody interface is a string that represents the URL of the referring page of the resource who's Content Security Policy (CSP) was violated.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CSPViolationReportBody/referrer)
	**/
	final referrer : Null<String>;
	/**
		The **`sample`** read-only property of the CSPViolationReportBody interface is a string that contains a part of the resource that violated the Content Security Policy (CSP).
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CSPViolationReportBody/sample)
	**/
	final sample : Null<String>;
	/**
		The **`sourceFile`** read-only property of the CSPViolationReportBody interface indicates the URL of the source file that violated the Content Security Policy (CSP).
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CSPViolationReportBody/sourceFile)
	**/
	final sourceFile : Null<String>;
	/**
		The **`statusCode`** read-only property of the CSPViolationReportBody interface is a number representing the HTTP status code of the response to the request that triggered a Content Security Policy (CSP) violation (when loading a window or worker).
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CSPViolationReportBody/statusCode)
	**/
	final statusCode : Float;
	/**
		The **`toJSON()`** method of the CSPViolationReportBody interface is a _serializer_, which returns a JSON representation of the `CSPViolationReportBody` object.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CSPViolationReportBody/toJSON)
	**/
	function toJSON():Dynamic;
};