package global.jquery;
extern typedef AjaxSettings<TContext> = {
	/**
		A string containing the URL to which the request is sent.
	**/
	@:optional
	var url : String;
	/**
		A set of key/value pairs that map a given dataType to its MIME type, which gets sent in the Accept request header. This header tells the server what kind of response it will accept in return.
	**/
	@:optional
	var accepts : PlainObject<String>;
	/**
		By default, all requests are sent asynchronously (i.e. this is set to true by default). If you need synchronous requests, set this option to false. Cross-domain requests and dataType: "jsonp" requests do not support synchronous operation. Note that synchronous requests may temporarily lock the browser, disabling any actions while the request is active. As of jQuery 1.8, the use of async: false with jqXHR ($.Deferred) is deprecated; you must use the success/error/complete callback options instead of the corresponding methods of the jqXHR object such as jqXHR.done().
	**/
	@:optional
	var async : Bool;
	/**
		A pre-request callback function that can be used to modify the jqXHR (in jQuery 1.4.x, XMLHTTPRequest) object before it is sent. Use this to set custom headers, etc. The jqXHR and settings objects are passed as arguments. This is an Ajax Event. Returning false in the beforeSend function will cancel the request. As of jQuery 1.5, the beforeSend option will be called regardless of the type of request.
	**/
	@:optional
	function beforeSend(jqXHR:JqXHR<Any>, settings:AjaxSettings<TContext>):ts.AnyOf2<Bool, Void>;
	/**
		If set to false, it will force requested pages not to be cached by the browser. Note: Setting cache to false will only work correctly with HEAD and GET requests. It works by appending "_={timestamp}" to the GET parameters. The parameter is not needed for other types of requests, except in IE8 when a POST is made to a URL that has already been requested by a GET.
	**/
	@:optional
	var cache : Bool;
	/**
		A function to be called when the request finishes (after success and error callbacks are executed). The function gets passed two arguments: The jqXHR (in jQuery 1.4.x, XMLHTTPRequest) object and a string categorizing the status of the request ("success", "notmodified", "nocontent", "error", "timeout", "abort", or "parsererror"). As of jQuery 1.5, the complete setting can accept an array of functions. Each function will be called in turn. This is an Ajax Event.
	**/
	@:optional
	var complete : ts.AnyOf2<(jqXHR:JqXHR<Any>, textStatus:String) -> Void, std.Array<(jqXHR:JqXHR<Any>, textStatus:String) -> Void>>;
	/**
		An object of string/regular-expression pairs that determine how jQuery will parse the response, given its content type.
	**/
	@:optional
	var contents : PlainObject<ts.lib.IRegExp>;
	/**
		When sending data to the server, use this content type. Default is "application/x-www-form-urlencoded; charset=UTF-8", which is fine for most cases. If you explicitly pass in a content-type to $.ajax(), then it is always sent to the server (even if no data is sent). As of jQuery 1.6 you can pass false to tell jQuery to not set any content type header. Note: The W3C XMLHttpRequest specification dictates that the charset is always UTF-8; specifying another charset will not force the browser to change the encoding. Note: For cross-domain requests, setting the content type to anything other than application/x-www-form-urlencoded, multipart/form-data, or text/plain will trigger the browser to send a preflight OPTIONS request to the server.
	**/
	@:optional
	var contentType : ts.AnyOf2<String, Bool>;
	/**
		This object will be the context of all Ajax-related callbacks. By default, the context is an object that represents the Ajax settings used in the call ($.ajaxSettings merged with the settings passed to $.ajax).
	**/
	@:optional
	var context : TContext;
	/**
		An object containing dataType-to-dataType converters. Each converter's value is a function that returns the transformed value of the response.
	**/
	@:optional
	var converters : PlainObject<ts.AnyOf2<Bool, (value:Any) -> Any>>;
	/**
		If you wish to force a crossDomain request (such as JSONP) on the same domain, set the value of crossDomain to true. This allows, for example, server-side redirection to another domain.
	**/
	@:optional
	var crossDomain : Bool;
	/**
		Data to be sent to the server. It is converted to a query string, if not already a string. It's appended to the url for GET-requests. See processData option to prevent this automatic processing. Object must be Key/Value pairs. If value is an Array, jQuery serializes multiple values with same key based on the value of the traditional setting (described below).
	**/
	@:optional
	var data : ts.AnyOf2<String, PlainObject<Any>>;
	/**
		A function to be used to handle the raw response data of XMLHttpRequest. This is a pre-filtering function to sanitize the response. You should return the sanitized data. The function accepts two arguments: The raw data returned from the server and the 'dataType' parameter.
	**/
	@:optional
	function dataFilter(data:String, type:String):Any;
	/**
		The type of data that you're expecting back from the server. If none is specified, jQuery will try to infer it based on the MIME type of the response (an XML MIME type will yield XML, in 1.4 JSON will yield a JavaScript object, in 1.4 script will execute the script, and anything else will be returned as a string). The available types (and the result passed as the first argument to your success callback) are:
		
		"xml": Returns a XML document that can be processed via jQuery.
		
		"html": Returns HTML as plain text; included script tags are evaluated when inserted in the DOM.
		
		"script": Evaluates the response as JavaScript and returns it as plain text. Disables caching by appending a query string parameter, _=[TIMESTAMP], to the URL unless the cache option is set to true. Note: This will turn POSTs into GETs for remote-domain requests.
		
		"json": Evaluates the response as JSON and returns a JavaScript object. Cross-domain "json" requests are converted to "jsonp" unless the request includes jsonp: false in its request options. The JSON data is parsed in a strict manner; any malformed JSON is rejected and a parse error is thrown. As of jQuery 1.9, an empty response is also rejected; the server should return a response of null or {} instead. (See json.org for more information on proper JSON formatting.)
		
		"jsonp": Loads in a JSON block using JSONP. Adds an extra "?callback=?" to the end of your URL to specify the callback. Disables caching by appending a query string parameter, "_=[TIMESTAMP]", to the URL unless the cache option is set to true.
		
		"text": A plain text string.
		
		multiple, space-separated values: As of jQuery 1.5, jQuery can convert a dataType from what it received in the Content-Type header to what you require. For example, if you want a text response to be treated as XML, use "text xml" for the dataType. You can also make a JSONP request, have it received as text, and interpreted by jQuery as XML: "jsonp text xml". Similarly, a shorthand string such as "jsonp xml" will first attempt to convert from jsonp to xml, and, failing that, convert from jsonp to text, and then from text to xml.
	**/
	@:optional
	var dataType : String;
	/**
		A function to be called if the request fails. The function receives three arguments: The jqXHR (in jQuery 1.4.x, XMLHttpRequest) object, a string describing the type of error that occurred and an optional exception object, if one occurred. Possible values for the second argument (besides null) are "timeout", "error", "abort", and "parsererror". When an HTTP error occurs, errorThrown receives the textual portion of the HTTP status, such as "Not Found" or "Internal Server Error." As of jQuery 1.5, the error setting can accept an array of functions. Each function will be called in turn. Note: This handler is not called for cross-domain script and cross-domain JSONP requests. This is an Ajax Event.
	**/
	@:optional
	var error : ts.AnyOf2<(jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void, std.Array<(jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void>>;
	/**
		Whether to trigger global Ajax event handlers for this request. The default is true. Set to false to prevent the global handlers like ajaxStart or ajaxStop from being triggered. This can be used to control various Ajax Events.
	**/
	@:optional
	var global : Bool;
	/**
		An object of additional header key/value pairs to send along with requests using the XMLHttpRequest transport. The header X-Requested-With: XMLHttpRequest is always added, but its default XMLHttpRequest value can be changed here. Values in the headers setting can also be overwritten from within the beforeSend function.
	**/
	@:optional
	var headers : PlainObject<Null<String>>;
	/**
		Allow the request to be successful only if the response has changed since the last request. This is done by checking the Last-Modified header. Default value is false, ignoring the header. In jQuery 1.4 this technique also checks the 'etag' specified by the server to catch unmodified data.
	**/
	@:optional
	var ifModified : Bool;
	/**
		Allow the current environment to be recognized as "local," (e.g. the filesystem), even if jQuery does not recognize it as such by default. The following protocols are currently recognized as local: file, *-extension, and widget. If the isLocal setting needs modification, it is recommended to do so once in the $.ajaxSetup() method.
	**/
	@:optional
	var isLocal : Bool;
	/**
		Override the callback function name in a JSONP request. This value will be used instead of 'callback' in the 'callback=?' part of the query string in the url. So {jsonp:'onJSONPLoad'} would result in 'onJSONPLoad=?' passed to the server. As of jQuery 1.5, setting the jsonp option to false prevents jQuery from adding the "?callback" string to the URL or attempting to use "=?" for transformation. In this case, you should also explicitly set the jsonpCallback setting. For example, { jsonp: false, jsonpCallback: "callbackName" }. If you don't trust the target of your Ajax requests, consider setting the jsonp property to false for security reasons.
	**/
	@:optional
	var jsonp : ts.AnyOf2<String, Bool>;
	/**
		Specify the callback function name for a JSONP request. This value will be used instead of the random name automatically generated by jQuery. It is preferable to let jQuery generate a unique name as it'll make it easier to manage the requests and provide callbacks and error handling. You may want to specify the callback when you want to enable better browser caching of GET requests. As of jQuery 1.5, you can also use a function for this setting, in which case the value of jsonpCallback is set to the return value of that function.
	**/
	@:optional
	var jsonpCallback : ts.AnyOf2<String, () -> String>;
	/**
		The HTTP method to use for the request (e.g. "POST", "GET", "PUT").
	**/
	@:optional
	var method : String;
	/**
		A mime type to override the XHR mime type.
	**/
	@:optional
	var mimeType : String;
	/**
		A password to be used with XMLHttpRequest in response to an HTTP access authentication request.
	**/
	@:optional
	var password : String;
	/**
		By default, data passed in to the data option as an object (technically, anything other than a string) will be processed and transformed into a query string, fitting to the default content-type "application/x-www-form-urlencoded". If you want to send a DOMDocument, or other non-processed data, set this option to false.
	**/
	@:optional
	var processData : Bool;
	/**
		Only applies when the "script" transport is used (e.g., cross-domain requests with "jsonp" or "script" dataType and "GET" type). Sets the charset attribute on the script tag used in the request. Used when the character set on the local page is not the same as the one on the remote script.
	**/
	@:optional
	var scriptCharset : String;
	/**
		An object of numeric HTTP codes and functions to be called when the response has the corresponding code.
		
		If the request is successful, the status code functions take the same parameters as the success callback; if it results in an error (including 3xx redirect), they take the same parameters as the error callback.
	**/
	@:optional
	var statusCode : {
		@:native("200")
		@:optional
		var TwoZeroZero : (data:Any, textStatus:String, jqXHR:JqXHR<Any>) -> Void;
		@:native("201")
		@:optional
		var TwoZeroOne : (data:Any, textStatus:String, jqXHR:JqXHR<Any>) -> Void;
		@:native("202")
		@:optional
		var TwoZeroTwo : (data:Any, textStatus:String, jqXHR:JqXHR<Any>) -> Void;
		@:native("203")
		@:optional
		var TwoZeroThree : (data:Any, textStatus:String, jqXHR:JqXHR<Any>) -> Void;
		@:native("204")
		@:optional
		var TwoZeroFour : (data:Any, textStatus:String, jqXHR:JqXHR<Any>) -> Void;
		@:native("205")
		@:optional
		var TwoZeroFive : (data:Any, textStatus:String, jqXHR:JqXHR<Any>) -> Void;
		@:native("206")
		@:optional
		var TwoZeroSix : (data:Any, textStatus:String, jqXHR:JqXHR<Any>) -> Void;
		@:native("207")
		@:optional
		var TwoZeroSeven : (data:Any, textStatus:String, jqXHR:JqXHR<Any>) -> Void;
		@:native("208")
		@:optional
		var TwoZeroEight : (data:Any, textStatus:String, jqXHR:JqXHR<Any>) -> Void;
		@:native("209")
		@:optional
		var TwoZeroNine : (data:Any, textStatus:String, jqXHR:JqXHR<Any>) -> Void;
		@:native("210")
		@:optional
		var TwoOneZero : (data:Any, textStatus:String, jqXHR:JqXHR<Any>) -> Void;
		@:native("211")
		@:optional
		var TwoOneOne : (data:Any, textStatus:String, jqXHR:JqXHR<Any>) -> Void;
		@:native("212")
		@:optional
		var TwoOneTwo : (data:Any, textStatus:String, jqXHR:JqXHR<Any>) -> Void;
		@:native("213")
		@:optional
		var TwoOneThree : (data:Any, textStatus:String, jqXHR:JqXHR<Any>) -> Void;
		@:native("214")
		@:optional
		var TwoOneFour : (data:Any, textStatus:String, jqXHR:JqXHR<Any>) -> Void;
		@:native("215")
		@:optional
		var TwoOneFive : (data:Any, textStatus:String, jqXHR:JqXHR<Any>) -> Void;
		@:native("216")
		@:optional
		var TwoOneSix : (data:Any, textStatus:String, jqXHR:JqXHR<Any>) -> Void;
		@:native("217")
		@:optional
		var TwoOneSeven : (data:Any, textStatus:String, jqXHR:JqXHR<Any>) -> Void;
		@:native("218")
		@:optional
		var TwoOneEight : (data:Any, textStatus:String, jqXHR:JqXHR<Any>) -> Void;
		@:native("219")
		@:optional
		var TwoOneNine : (data:Any, textStatus:String, jqXHR:JqXHR<Any>) -> Void;
		@:native("220")
		@:optional
		var TwoTwoZero : (data:Any, textStatus:String, jqXHR:JqXHR<Any>) -> Void;
		@:native("221")
		@:optional
		var TwoTwoOne : (data:Any, textStatus:String, jqXHR:JqXHR<Any>) -> Void;
		@:native("222")
		@:optional
		var TwoTwoTwo : (data:Any, textStatus:String, jqXHR:JqXHR<Any>) -> Void;
		@:native("223")
		@:optional
		var TwoTwoThree : (data:Any, textStatus:String, jqXHR:JqXHR<Any>) -> Void;
		@:native("224")
		@:optional
		var TwoTwoFour : (data:Any, textStatus:String, jqXHR:JqXHR<Any>) -> Void;
		@:native("225")
		@:optional
		var TwoTwoFive : (data:Any, textStatus:String, jqXHR:JqXHR<Any>) -> Void;
		@:native("226")
		@:optional
		var TwoTwoSix : (data:Any, textStatus:String, jqXHR:JqXHR<Any>) -> Void;
		@:native("227")
		@:optional
		var TwoTwoSeven : (data:Any, textStatus:String, jqXHR:JqXHR<Any>) -> Void;
		@:native("228")
		@:optional
		var TwoTwoEight : (data:Any, textStatus:String, jqXHR:JqXHR<Any>) -> Void;
		@:native("229")
		@:optional
		var TwoTwoNine : (data:Any, textStatus:String, jqXHR:JqXHR<Any>) -> Void;
		@:native("230")
		@:optional
		var TwoThreeZero : (data:Any, textStatus:String, jqXHR:JqXHR<Any>) -> Void;
		@:native("231")
		@:optional
		var TwoThreeOne : (data:Any, textStatus:String, jqXHR:JqXHR<Any>) -> Void;
		@:native("232")
		@:optional
		var TwoThreeTwo : (data:Any, textStatus:String, jqXHR:JqXHR<Any>) -> Void;
		@:native("233")
		@:optional
		var TwoThreeThree : (data:Any, textStatus:String, jqXHR:JqXHR<Any>) -> Void;
		@:native("234")
		@:optional
		var TwoThreeFour : (data:Any, textStatus:String, jqXHR:JqXHR<Any>) -> Void;
		@:native("235")
		@:optional
		var TwoThreeFive : (data:Any, textStatus:String, jqXHR:JqXHR<Any>) -> Void;
		@:native("236")
		@:optional
		var TwoThreeSix : (data:Any, textStatus:String, jqXHR:JqXHR<Any>) -> Void;
		@:native("237")
		@:optional
		var TwoThreeSeven : (data:Any, textStatus:String, jqXHR:JqXHR<Any>) -> Void;
		@:native("238")
		@:optional
		var TwoThreeEight : (data:Any, textStatus:String, jqXHR:JqXHR<Any>) -> Void;
		@:native("239")
		@:optional
		var TwoThreeNine : (data:Any, textStatus:String, jqXHR:JqXHR<Any>) -> Void;
		@:native("240")
		@:optional
		var TwoFourZero : (data:Any, textStatus:String, jqXHR:JqXHR<Any>) -> Void;
		@:native("241")
		@:optional
		var TwoFourOne : (data:Any, textStatus:String, jqXHR:JqXHR<Any>) -> Void;
		@:native("242")
		@:optional
		var TwoFourTwo : (data:Any, textStatus:String, jqXHR:JqXHR<Any>) -> Void;
		@:native("243")
		@:optional
		var TwoFourThree : (data:Any, textStatus:String, jqXHR:JqXHR<Any>) -> Void;
		@:native("244")
		@:optional
		var TwoFourFour : (data:Any, textStatus:String, jqXHR:JqXHR<Any>) -> Void;
		@:native("245")
		@:optional
		var TwoFourFive : (data:Any, textStatus:String, jqXHR:JqXHR<Any>) -> Void;
		@:native("246")
		@:optional
		var TwoFourSix : (data:Any, textStatus:String, jqXHR:JqXHR<Any>) -> Void;
		@:native("247")
		@:optional
		var TwoFourSeven : (data:Any, textStatus:String, jqXHR:JqXHR<Any>) -> Void;
		@:native("248")
		@:optional
		var TwoFourEight : (data:Any, textStatus:String, jqXHR:JqXHR<Any>) -> Void;
		@:native("249")
		@:optional
		var TwoFourNine : (data:Any, textStatus:String, jqXHR:JqXHR<Any>) -> Void;
		@:native("250")
		@:optional
		var TwoFiveZero : (data:Any, textStatus:String, jqXHR:JqXHR<Any>) -> Void;
		@:native("251")
		@:optional
		var TwoFiveOne : (data:Any, textStatus:String, jqXHR:JqXHR<Any>) -> Void;
		@:native("252")
		@:optional
		var TwoFiveTwo : (data:Any, textStatus:String, jqXHR:JqXHR<Any>) -> Void;
		@:native("253")
		@:optional
		var TwoFiveThree : (data:Any, textStatus:String, jqXHR:JqXHR<Any>) -> Void;
		@:native("254")
		@:optional
		var TwoFiveFour : (data:Any, textStatus:String, jqXHR:JqXHR<Any>) -> Void;
		@:native("255")
		@:optional
		var TwoFiveFive : (data:Any, textStatus:String, jqXHR:JqXHR<Any>) -> Void;
		@:native("256")
		@:optional
		var TwoFiveSix : (data:Any, textStatus:String, jqXHR:JqXHR<Any>) -> Void;
		@:native("257")
		@:optional
		var TwoFiveSeven : (data:Any, textStatus:String, jqXHR:JqXHR<Any>) -> Void;
		@:native("258")
		@:optional
		var TwoFiveEight : (data:Any, textStatus:String, jqXHR:JqXHR<Any>) -> Void;
		@:native("259")
		@:optional
		var TwoFiveNine : (data:Any, textStatus:String, jqXHR:JqXHR<Any>) -> Void;
		@:native("260")
		@:optional
		var TwoSixZero : (data:Any, textStatus:String, jqXHR:JqXHR<Any>) -> Void;
		@:native("261")
		@:optional
		var TwoSixOne : (data:Any, textStatus:String, jqXHR:JqXHR<Any>) -> Void;
		@:native("262")
		@:optional
		var TwoSixTwo : (data:Any, textStatus:String, jqXHR:JqXHR<Any>) -> Void;
		@:native("263")
		@:optional
		var TwoSixThree : (data:Any, textStatus:String, jqXHR:JqXHR<Any>) -> Void;
		@:native("264")
		@:optional
		var TwoSixFour : (data:Any, textStatus:String, jqXHR:JqXHR<Any>) -> Void;
		@:native("265")
		@:optional
		var TwoSixFive : (data:Any, textStatus:String, jqXHR:JqXHR<Any>) -> Void;
		@:native("266")
		@:optional
		var TwoSixSix : (data:Any, textStatus:String, jqXHR:JqXHR<Any>) -> Void;
		@:native("267")
		@:optional
		var TwoSixSeven : (data:Any, textStatus:String, jqXHR:JqXHR<Any>) -> Void;
		@:native("268")
		@:optional
		var TwoSixEight : (data:Any, textStatus:String, jqXHR:JqXHR<Any>) -> Void;
		@:native("269")
		@:optional
		var TwoSixNine : (data:Any, textStatus:String, jqXHR:JqXHR<Any>) -> Void;
		@:native("270")
		@:optional
		var TwoSevenZero : (data:Any, textStatus:String, jqXHR:JqXHR<Any>) -> Void;
		@:native("271")
		@:optional
		var TwoSevenOne : (data:Any, textStatus:String, jqXHR:JqXHR<Any>) -> Void;
		@:native("272")
		@:optional
		var TwoSevenTwo : (data:Any, textStatus:String, jqXHR:JqXHR<Any>) -> Void;
		@:native("273")
		@:optional
		var TwoSevenThree : (data:Any, textStatus:String, jqXHR:JqXHR<Any>) -> Void;
		@:native("274")
		@:optional
		var TwoSevenFour : (data:Any, textStatus:String, jqXHR:JqXHR<Any>) -> Void;
		@:native("275")
		@:optional
		var TwoSevenFive : (data:Any, textStatus:String, jqXHR:JqXHR<Any>) -> Void;
		@:native("276")
		@:optional
		var TwoSevenSix : (data:Any, textStatus:String, jqXHR:JqXHR<Any>) -> Void;
		@:native("277")
		@:optional
		var TwoSevenSeven : (data:Any, textStatus:String, jqXHR:JqXHR<Any>) -> Void;
		@:native("278")
		@:optional
		var TwoSevenEight : (data:Any, textStatus:String, jqXHR:JqXHR<Any>) -> Void;
		@:native("279")
		@:optional
		var TwoSevenNine : (data:Any, textStatus:String, jqXHR:JqXHR<Any>) -> Void;
		@:native("280")
		@:optional
		var TwoEightZero : (data:Any, textStatus:String, jqXHR:JqXHR<Any>) -> Void;
		@:native("281")
		@:optional
		var TwoEightOne : (data:Any, textStatus:String, jqXHR:JqXHR<Any>) -> Void;
		@:native("282")
		@:optional
		var TwoEightTwo : (data:Any, textStatus:String, jqXHR:JqXHR<Any>) -> Void;
		@:native("283")
		@:optional
		var TwoEightThree : (data:Any, textStatus:String, jqXHR:JqXHR<Any>) -> Void;
		@:native("284")
		@:optional
		var TwoEightFour : (data:Any, textStatus:String, jqXHR:JqXHR<Any>) -> Void;
		@:native("285")
		@:optional
		var TwoEightFive : (data:Any, textStatus:String, jqXHR:JqXHR<Any>) -> Void;
		@:native("286")
		@:optional
		var TwoEightSix : (data:Any, textStatus:String, jqXHR:JqXHR<Any>) -> Void;
		@:native("287")
		@:optional
		var TwoEightSeven : (data:Any, textStatus:String, jqXHR:JqXHR<Any>) -> Void;
		@:native("288")
		@:optional
		var TwoEightEight : (data:Any, textStatus:String, jqXHR:JqXHR<Any>) -> Void;
		@:native("289")
		@:optional
		var TwoEightNine : (data:Any, textStatus:String, jqXHR:JqXHR<Any>) -> Void;
		@:native("290")
		@:optional
		var TwoNineZero : (data:Any, textStatus:String, jqXHR:JqXHR<Any>) -> Void;
		@:native("291")
		@:optional
		var TwoNineOne : (data:Any, textStatus:String, jqXHR:JqXHR<Any>) -> Void;
		@:native("292")
		@:optional
		var TwoNineTwo : (data:Any, textStatus:String, jqXHR:JqXHR<Any>) -> Void;
		@:native("293")
		@:optional
		var TwoNineThree : (data:Any, textStatus:String, jqXHR:JqXHR<Any>) -> Void;
		@:native("294")
		@:optional
		var TwoNineFour : (data:Any, textStatus:String, jqXHR:JqXHR<Any>) -> Void;
		@:native("295")
		@:optional
		var TwoNineFive : (data:Any, textStatus:String, jqXHR:JqXHR<Any>) -> Void;
		@:native("296")
		@:optional
		var TwoNineSix : (data:Any, textStatus:String, jqXHR:JqXHR<Any>) -> Void;
		@:native("297")
		@:optional
		var TwoNineSeven : (data:Any, textStatus:String, jqXHR:JqXHR<Any>) -> Void;
		@:native("298")
		@:optional
		var TwoNineEight : (data:Any, textStatus:String, jqXHR:JqXHR<Any>) -> Void;
		@:native("299")
		@:optional
		var TwoNineNine : (data:Any, textStatus:String, jqXHR:JqXHR<Any>) -> Void;
		@:native("304")
		@:optional
		var ThreeZeroFour : (data:Any, textStatus:String, jqXHR:JqXHR<Any>) -> Void;
		@:native("300")
		@:optional
		var ThreeZeroZero : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("301")
		@:optional
		var ThreeZeroOne : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("302")
		@:optional
		var ThreeZeroTwo : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("303")
		@:optional
		var ThreeZeroThree : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("305")
		@:optional
		var ThreeZeroFive : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("306")
		@:optional
		var ThreeZeroSix : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("307")
		@:optional
		var ThreeZeroSeven : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("308")
		@:optional
		var ThreeZeroEight : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("309")
		@:optional
		var ThreeZeroNine : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("310")
		@:optional
		var ThreeOneZero : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("311")
		@:optional
		var ThreeOneOne : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("312")
		@:optional
		var ThreeOneTwo : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("313")
		@:optional
		var ThreeOneThree : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("314")
		@:optional
		var ThreeOneFour : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("315")
		@:optional
		var ThreeOneFive : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("316")
		@:optional
		var ThreeOneSix : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("317")
		@:optional
		var ThreeOneSeven : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("318")
		@:optional
		var ThreeOneEight : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("319")
		@:optional
		var ThreeOneNine : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("320")
		@:optional
		var ThreeTwoZero : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("321")
		@:optional
		var ThreeTwoOne : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("322")
		@:optional
		var ThreeTwoTwo : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("323")
		@:optional
		var ThreeTwoThree : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("324")
		@:optional
		var ThreeTwoFour : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("325")
		@:optional
		var ThreeTwoFive : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("326")
		@:optional
		var ThreeTwoSix : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("327")
		@:optional
		var ThreeTwoSeven : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("328")
		@:optional
		var ThreeTwoEight : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("329")
		@:optional
		var ThreeTwoNine : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("330")
		@:optional
		var ThreeThreeZero : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("331")
		@:optional
		var ThreeThreeOne : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("332")
		@:optional
		var ThreeThreeTwo : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("333")
		@:optional
		var ThreeThreeThree : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("334")
		@:optional
		var ThreeThreeFour : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("335")
		@:optional
		var ThreeThreeFive : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("336")
		@:optional
		var ThreeThreeSix : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("337")
		@:optional
		var ThreeThreeSeven : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("338")
		@:optional
		var ThreeThreeEight : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("339")
		@:optional
		var ThreeThreeNine : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("340")
		@:optional
		var ThreeFourZero : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("341")
		@:optional
		var ThreeFourOne : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("342")
		@:optional
		var ThreeFourTwo : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("343")
		@:optional
		var ThreeFourThree : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("344")
		@:optional
		var ThreeFourFour : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("345")
		@:optional
		var ThreeFourFive : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("346")
		@:optional
		var ThreeFourSix : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("347")
		@:optional
		var ThreeFourSeven : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("348")
		@:optional
		var ThreeFourEight : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("349")
		@:optional
		var ThreeFourNine : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("350")
		@:optional
		var ThreeFiveZero : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("351")
		@:optional
		var ThreeFiveOne : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("352")
		@:optional
		var ThreeFiveTwo : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("353")
		@:optional
		var ThreeFiveThree : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("354")
		@:optional
		var ThreeFiveFour : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("355")
		@:optional
		var ThreeFiveFive : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("356")
		@:optional
		var ThreeFiveSix : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("357")
		@:optional
		var ThreeFiveSeven : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("358")
		@:optional
		var ThreeFiveEight : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("359")
		@:optional
		var ThreeFiveNine : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("360")
		@:optional
		var ThreeSixZero : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("361")
		@:optional
		var ThreeSixOne : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("362")
		@:optional
		var ThreeSixTwo : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("363")
		@:optional
		var ThreeSixThree : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("364")
		@:optional
		var ThreeSixFour : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("365")
		@:optional
		var ThreeSixFive : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("366")
		@:optional
		var ThreeSixSix : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("367")
		@:optional
		var ThreeSixSeven : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("368")
		@:optional
		var ThreeSixEight : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("369")
		@:optional
		var ThreeSixNine : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("370")
		@:optional
		var ThreeSevenZero : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("371")
		@:optional
		var ThreeSevenOne : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("372")
		@:optional
		var ThreeSevenTwo : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("373")
		@:optional
		var ThreeSevenThree : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("374")
		@:optional
		var ThreeSevenFour : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("375")
		@:optional
		var ThreeSevenFive : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("376")
		@:optional
		var ThreeSevenSix : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("377")
		@:optional
		var ThreeSevenSeven : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("378")
		@:optional
		var ThreeSevenEight : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("379")
		@:optional
		var ThreeSevenNine : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("380")
		@:optional
		var ThreeEightZero : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("381")
		@:optional
		var ThreeEightOne : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("382")
		@:optional
		var ThreeEightTwo : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("383")
		@:optional
		var ThreeEightThree : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("384")
		@:optional
		var ThreeEightFour : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("385")
		@:optional
		var ThreeEightFive : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("386")
		@:optional
		var ThreeEightSix : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("387")
		@:optional
		var ThreeEightSeven : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("388")
		@:optional
		var ThreeEightEight : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("389")
		@:optional
		var ThreeEightNine : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("390")
		@:optional
		var ThreeNineZero : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("391")
		@:optional
		var ThreeNineOne : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("392")
		@:optional
		var ThreeNineTwo : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("393")
		@:optional
		var ThreeNineThree : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("394")
		@:optional
		var ThreeNineFour : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("395")
		@:optional
		var ThreeNineFive : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("396")
		@:optional
		var ThreeNineSix : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("397")
		@:optional
		var ThreeNineSeven : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("398")
		@:optional
		var ThreeNineEight : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("399")
		@:optional
		var ThreeNineNine : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("400")
		@:optional
		var FourZeroZero : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("401")
		@:optional
		var FourZeroOne : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("402")
		@:optional
		var FourZeroTwo : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("403")
		@:optional
		var FourZeroThree : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("404")
		@:optional
		var FourZeroFour : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("405")
		@:optional
		var FourZeroFive : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("406")
		@:optional
		var FourZeroSix : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("407")
		@:optional
		var FourZeroSeven : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("408")
		@:optional
		var FourZeroEight : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("409")
		@:optional
		var FourZeroNine : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("410")
		@:optional
		var FourOneZero : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("411")
		@:optional
		var FourOneOne : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("412")
		@:optional
		var FourOneTwo : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("413")
		@:optional
		var FourOneThree : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("414")
		@:optional
		var FourOneFour : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("415")
		@:optional
		var FourOneFive : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("416")
		@:optional
		var FourOneSix : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("417")
		@:optional
		var FourOneSeven : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("418")
		@:optional
		var FourOneEight : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("419")
		@:optional
		var FourOneNine : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("420")
		@:optional
		var FourTwoZero : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("421")
		@:optional
		var FourTwoOne : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("422")
		@:optional
		var FourTwoTwo : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("423")
		@:optional
		var FourTwoThree : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("424")
		@:optional
		var FourTwoFour : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("425")
		@:optional
		var FourTwoFive : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("426")
		@:optional
		var FourTwoSix : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("427")
		@:optional
		var FourTwoSeven : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("428")
		@:optional
		var FourTwoEight : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("429")
		@:optional
		var FourTwoNine : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("430")
		@:optional
		var FourThreeZero : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("431")
		@:optional
		var FourThreeOne : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("432")
		@:optional
		var FourThreeTwo : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("433")
		@:optional
		var FourThreeThree : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("434")
		@:optional
		var FourThreeFour : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("435")
		@:optional
		var FourThreeFive : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("436")
		@:optional
		var FourThreeSix : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("437")
		@:optional
		var FourThreeSeven : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("438")
		@:optional
		var FourThreeEight : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("439")
		@:optional
		var FourThreeNine : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("440")
		@:optional
		var FourFourZero : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("441")
		@:optional
		var FourFourOne : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("442")
		@:optional
		var FourFourTwo : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("443")
		@:optional
		var FourFourThree : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("444")
		@:optional
		var FourFourFour : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("445")
		@:optional
		var FourFourFive : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("446")
		@:optional
		var FourFourSix : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("447")
		@:optional
		var FourFourSeven : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("448")
		@:optional
		var FourFourEight : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("449")
		@:optional
		var FourFourNine : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("450")
		@:optional
		var FourFiveZero : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("451")
		@:optional
		var FourFiveOne : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("452")
		@:optional
		var FourFiveTwo : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("453")
		@:optional
		var FourFiveThree : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("454")
		@:optional
		var FourFiveFour : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("455")
		@:optional
		var FourFiveFive : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("456")
		@:optional
		var FourFiveSix : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("457")
		@:optional
		var FourFiveSeven : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("458")
		@:optional
		var FourFiveEight : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("459")
		@:optional
		var FourFiveNine : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("460")
		@:optional
		var FourSixZero : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("461")
		@:optional
		var FourSixOne : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("462")
		@:optional
		var FourSixTwo : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("463")
		@:optional
		var FourSixThree : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("464")
		@:optional
		var FourSixFour : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("465")
		@:optional
		var FourSixFive : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("466")
		@:optional
		var FourSixSix : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("467")
		@:optional
		var FourSixSeven : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("468")
		@:optional
		var FourSixEight : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("469")
		@:optional
		var FourSixNine : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("470")
		@:optional
		var FourSevenZero : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("471")
		@:optional
		var FourSevenOne : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("472")
		@:optional
		var FourSevenTwo : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("473")
		@:optional
		var FourSevenThree : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("474")
		@:optional
		var FourSevenFour : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("475")
		@:optional
		var FourSevenFive : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("476")
		@:optional
		var FourSevenSix : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("477")
		@:optional
		var FourSevenSeven : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("478")
		@:optional
		var FourSevenEight : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("479")
		@:optional
		var FourSevenNine : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("480")
		@:optional
		var FourEightZero : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("481")
		@:optional
		var FourEightOne : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("482")
		@:optional
		var FourEightTwo : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("483")
		@:optional
		var FourEightThree : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("484")
		@:optional
		var FourEightFour : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("485")
		@:optional
		var FourEightFive : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("486")
		@:optional
		var FourEightSix : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("487")
		@:optional
		var FourEightSeven : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("488")
		@:optional
		var FourEightEight : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("489")
		@:optional
		var FourEightNine : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("490")
		@:optional
		var FourNineZero : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("491")
		@:optional
		var FourNineOne : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("492")
		@:optional
		var FourNineTwo : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("493")
		@:optional
		var FourNineThree : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("494")
		@:optional
		var FourNineFour : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("495")
		@:optional
		var FourNineFive : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("496")
		@:optional
		var FourNineSix : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("497")
		@:optional
		var FourNineSeven : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("498")
		@:optional
		var FourNineEight : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("499")
		@:optional
		var FourNineNine : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("500")
		@:optional
		var FiveZeroZero : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("501")
		@:optional
		var FiveZeroOne : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("502")
		@:optional
		var FiveZeroTwo : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("503")
		@:optional
		var FiveZeroThree : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("504")
		@:optional
		var FiveZeroFour : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("505")
		@:optional
		var FiveZeroFive : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("506")
		@:optional
		var FiveZeroSix : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("507")
		@:optional
		var FiveZeroSeven : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("508")
		@:optional
		var FiveZeroEight : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("509")
		@:optional
		var FiveZeroNine : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("510")
		@:optional
		var FiveOneZero : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("511")
		@:optional
		var FiveOneOne : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("512")
		@:optional
		var FiveOneTwo : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("513")
		@:optional
		var FiveOneThree : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("514")
		@:optional
		var FiveOneFour : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("515")
		@:optional
		var FiveOneFive : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("516")
		@:optional
		var FiveOneSix : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("517")
		@:optional
		var FiveOneSeven : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("518")
		@:optional
		var FiveOneEight : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("519")
		@:optional
		var FiveOneNine : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("520")
		@:optional
		var FiveTwoZero : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("521")
		@:optional
		var FiveTwoOne : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("522")
		@:optional
		var FiveTwoTwo : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("523")
		@:optional
		var FiveTwoThree : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("524")
		@:optional
		var FiveTwoFour : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("525")
		@:optional
		var FiveTwoFive : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("526")
		@:optional
		var FiveTwoSix : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("527")
		@:optional
		var FiveTwoSeven : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("528")
		@:optional
		var FiveTwoEight : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("529")
		@:optional
		var FiveTwoNine : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("530")
		@:optional
		var FiveThreeZero : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("531")
		@:optional
		var FiveThreeOne : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("532")
		@:optional
		var FiveThreeTwo : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("533")
		@:optional
		var FiveThreeThree : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("534")
		@:optional
		var FiveThreeFour : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("535")
		@:optional
		var FiveThreeFive : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("536")
		@:optional
		var FiveThreeSix : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("537")
		@:optional
		var FiveThreeSeven : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("538")
		@:optional
		var FiveThreeEight : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("539")
		@:optional
		var FiveThreeNine : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("540")
		@:optional
		var FiveFourZero : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("541")
		@:optional
		var FiveFourOne : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("542")
		@:optional
		var FiveFourTwo : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("543")
		@:optional
		var FiveFourThree : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("544")
		@:optional
		var FiveFourFour : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("545")
		@:optional
		var FiveFourFive : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("546")
		@:optional
		var FiveFourSix : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("547")
		@:optional
		var FiveFourSeven : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("548")
		@:optional
		var FiveFourEight : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("549")
		@:optional
		var FiveFourNine : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("550")
		@:optional
		var FiveFiveZero : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("551")
		@:optional
		var FiveFiveOne : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("552")
		@:optional
		var FiveFiveTwo : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("553")
		@:optional
		var FiveFiveThree : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("554")
		@:optional
		var FiveFiveFour : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("555")
		@:optional
		var FiveFiveFive : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("556")
		@:optional
		var FiveFiveSix : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("557")
		@:optional
		var FiveFiveSeven : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("558")
		@:optional
		var FiveFiveEight : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("559")
		@:optional
		var FiveFiveNine : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("560")
		@:optional
		var FiveSixZero : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("561")
		@:optional
		var FiveSixOne : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("562")
		@:optional
		var FiveSixTwo : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("563")
		@:optional
		var FiveSixThree : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("564")
		@:optional
		var FiveSixFour : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("565")
		@:optional
		var FiveSixFive : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("566")
		@:optional
		var FiveSixSix : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("567")
		@:optional
		var FiveSixSeven : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("568")
		@:optional
		var FiveSixEight : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("569")
		@:optional
		var FiveSixNine : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("570")
		@:optional
		var FiveSevenZero : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("571")
		@:optional
		var FiveSevenOne : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("572")
		@:optional
		var FiveSevenTwo : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("573")
		@:optional
		var FiveSevenThree : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("574")
		@:optional
		var FiveSevenFour : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("575")
		@:optional
		var FiveSevenFive : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("576")
		@:optional
		var FiveSevenSix : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("577")
		@:optional
		var FiveSevenSeven : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("578")
		@:optional
		var FiveSevenEight : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("579")
		@:optional
		var FiveSevenNine : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("580")
		@:optional
		var FiveEightZero : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("581")
		@:optional
		var FiveEightOne : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("582")
		@:optional
		var FiveEightTwo : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("583")
		@:optional
		var FiveEightThree : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("584")
		@:optional
		var FiveEightFour : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("585")
		@:optional
		var FiveEightFive : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("586")
		@:optional
		var FiveEightSix : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("587")
		@:optional
		var FiveEightSeven : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("588")
		@:optional
		var FiveEightEight : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("589")
		@:optional
		var FiveEightNine : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("590")
		@:optional
		var FiveNineZero : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("591")
		@:optional
		var FiveNineOne : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("592")
		@:optional
		var FiveNineTwo : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("593")
		@:optional
		var FiveNineThree : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("594")
		@:optional
		var FiveNineFour : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("595")
		@:optional
		var FiveNineFive : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("596")
		@:optional
		var FiveNineSix : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("597")
		@:optional
		var FiveNineSeven : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("598")
		@:optional
		var FiveNineEight : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
		@:native("599")
		@:optional
		var FiveNineNine : (jqXHR:JqXHR<Any>, textStatus:String, errorThrown:String) -> Void;
	} & { };
	/**
		A function to be called if the request succeeds. The function gets passed three arguments: The data returned from the server, formatted according to the dataType parameter or the dataFilter callback function, if specified; a string describing the status; and the jqXHR (in jQuery 1.4.x, XMLHttpRequest) object. As of jQuery 1.5, the success setting can accept an array of functions. Each function will be called in turn. This is an Ajax Event.
	**/
	@:optional
	var success : ts.AnyOf2<(data:Any, textStatus:String, jqXHR:JqXHR<Any>) -> Void, std.Array<(data:Any, textStatus:String, jqXHR:JqXHR<Any>) -> Void>>;
	/**
		Set a timeout (in milliseconds) for the request. A value of 0 means there will be no timeout. This will override any global timeout set with $.ajaxSetup(). The timeout period starts at the point the $.ajax call is made; if several other requests are in progress and the browser has no connections available, it is possible for a request to time out before it can be sent. In jQuery 1.4.x and below, the XMLHttpRequest object will be in an invalid state if the request times out; accessing any object members may throw an exception. In Firefox 3.0+ only, script and JSONP requests cannot be cancelled by a timeout; the script will run even if it arrives after the timeout period.
	**/
	@:optional
	var timeout : Float;
	/**
		Set this to true if you wish to use the traditional style of param serialization.
	**/
	@:optional
	var traditional : Bool;
	/**
		An alias for method. You should use type if you're using versions of jQuery prior to 1.9.0.
	**/
	@:optional
	var type : String;
	/**
		A username to be used with XMLHttpRequest in response to an HTTP access authentication request.
	**/
	@:optional
	var username : String;
	/**
		Callback for creating the XMLHttpRequest object. Defaults to the ActiveXObject when available (IE), the XMLHttpRequest otherwise. Override to provide your own implementation for XMLHttpRequest or enhancements to the factory.
	**/
	@:optional
	function xhr():ts.html.IXMLHttpRequest;
	/**
		An object of fieldName-fieldValue pairs to set on the native XHR object.
		
		In jQuery 1.5, the withCredentials property was not propagated to the native XHR and thus CORS requests requiring it would ignore this flag. For this reason, we recommend using jQuery 1.5.1+ should you require the use of it.
	**/
	@:optional
	var xhrFields : global.jquery.ajax.XHRFields;
};