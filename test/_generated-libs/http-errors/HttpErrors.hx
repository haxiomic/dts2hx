@:jsRequire("http-errors") extern class HttpErrors {
	static var value(get, never) : {
		@:overload(function(rest:haxe.extern.Rest<http_errors.UnknownError>):http_errors.HttpError<Float> { })
		@:selfCall
		function call<N:(Float)>(arg:N, rest:haxe.extern.Rest<http_errors.UnknownError>):http_errors.HttpError<N>;
		var HttpError : http_errors.HttpErrorConstructor<Float>;
		var BadRequest : http_errors.HttpErrorConstructor<Int>;
		@:native("400")
		var FourZeroZero : http_errors.HttpErrorConstructor<Int>;
		var Unauthorized : http_errors.HttpErrorConstructor<Int>;
		@:native("401")
		var FourZeroOne : http_errors.HttpErrorConstructor<Int>;
		var PaymentRequired : http_errors.HttpErrorConstructor<Int>;
		@:native("402")
		var FourZeroTwo : http_errors.HttpErrorConstructor<Int>;
		var Forbidden : http_errors.HttpErrorConstructor<Int>;
		@:native("403")
		var FourZeroThree : http_errors.HttpErrorConstructor<Int>;
		var NotFound : http_errors.HttpErrorConstructor<Int>;
		@:native("404")
		var FourZeroFour : http_errors.HttpErrorConstructor<Int>;
		var MethodNotAllowed : http_errors.HttpErrorConstructor<Int>;
		@:native("405")
		var FourZeroFive : http_errors.HttpErrorConstructor<Int>;
		var NotAcceptable : http_errors.HttpErrorConstructor<Int>;
		@:native("406")
		var FourZeroSix : http_errors.HttpErrorConstructor<Int>;
		var ProxyAuthenticationRequired : http_errors.HttpErrorConstructor<Int>;
		@:native("407")
		var FourZeroSeven : http_errors.HttpErrorConstructor<Int>;
		var RequestTimeout : http_errors.HttpErrorConstructor<Int>;
		@:native("408")
		var FourZeroEight : http_errors.HttpErrorConstructor<Int>;
		var Conflict : http_errors.HttpErrorConstructor<Int>;
		@:native("409")
		var FourZeroNine : http_errors.HttpErrorConstructor<Int>;
		var Gone : http_errors.HttpErrorConstructor<Int>;
		@:native("410")
		var FourOneZero : http_errors.HttpErrorConstructor<Int>;
		var LengthRequired : http_errors.HttpErrorConstructor<Int>;
		@:native("411")
		var FourOneOne : http_errors.HttpErrorConstructor<Int>;
		var PreconditionFailed : http_errors.HttpErrorConstructor<Int>;
		@:native("412")
		var FourOneTwo : http_errors.HttpErrorConstructor<Int>;
		var PayloadTooLarge : http_errors.HttpErrorConstructor<Int>;
		@:native("413")
		var FourOneThree : http_errors.HttpErrorConstructor<Int>;
		var URITooLong : http_errors.HttpErrorConstructor<Int>;
		@:native("414")
		var FourOneFour : http_errors.HttpErrorConstructor<Int>;
		var UnsupportedMediaType : http_errors.HttpErrorConstructor<Int>;
		@:native("415")
		var FourOneFive : http_errors.HttpErrorConstructor<Int>;
		var RangeNotSatisfiable : http_errors.HttpErrorConstructor<Int>;
		@:native("416")
		var FourOneSix : http_errors.HttpErrorConstructor<Int>;
		var ExpectationFailed : http_errors.HttpErrorConstructor<Int>;
		@:native("417")
		var FourOneSeven : http_errors.HttpErrorConstructor<Int>;
		var ImATeapot : http_errors.HttpErrorConstructor<Int>;
		@:native("418")
		var FourOneEight : http_errors.HttpErrorConstructor<Int>;
		var MisdirectedRequest : http_errors.HttpErrorConstructor<Int>;
		@:native("421")
		var FourTwoOne : http_errors.HttpErrorConstructor<Int>;
		var UnprocessableEntity : http_errors.HttpErrorConstructor<Int>;
		@:native("422")
		var FourTwoTwo : http_errors.HttpErrorConstructor<Int>;
		var Locked : http_errors.HttpErrorConstructor<Int>;
		@:native("423")
		var FourTwoThree : http_errors.HttpErrorConstructor<Int>;
		var FailedDependency : http_errors.HttpErrorConstructor<Int>;
		@:native("424")
		var FourTwoFour : http_errors.HttpErrorConstructor<Int>;
		var TooEarly : http_errors.HttpErrorConstructor<Int>;
		@:native("425")
		var FourTwoFive : http_errors.HttpErrorConstructor<Int>;
		var UpgradeRequired : http_errors.HttpErrorConstructor<Int>;
		@:native("426")
		var FourTwoSix : http_errors.HttpErrorConstructor<Int>;
		var PreconditionRequired : http_errors.HttpErrorConstructor<Int>;
		@:native("428")
		var FourTwoEight : http_errors.HttpErrorConstructor<Int>;
		var TooManyRequests : http_errors.HttpErrorConstructor<Int>;
		@:native("429")
		var FourTwoNine : http_errors.HttpErrorConstructor<Int>;
		var RequestHeaderFieldsTooLarge : http_errors.HttpErrorConstructor<Int>;
		@:native("431")
		var FourThreeOne : http_errors.HttpErrorConstructor<Int>;
		var UnavailableForLegalReasons : http_errors.HttpErrorConstructor<Int>;
		@:native("451")
		var FourFiveOne : http_errors.HttpErrorConstructor<Int>;
		var InternalServerError : http_errors.HttpErrorConstructor<Int>;
		@:native("500")
		var FiveZeroZero : http_errors.HttpErrorConstructor<Int>;
		var NotImplemented : http_errors.HttpErrorConstructor<Int>;
		@:native("501")
		var FiveZeroOne : http_errors.HttpErrorConstructor<Int>;
		var BadGateway : http_errors.HttpErrorConstructor<Int>;
		@:native("502")
		var FiveZeroTwo : http_errors.HttpErrorConstructor<Int>;
		var ServiceUnavailable : http_errors.HttpErrorConstructor<Int>;
		@:native("503")
		var FiveZeroThree : http_errors.HttpErrorConstructor<Int>;
		var GatewayTimeout : http_errors.HttpErrorConstructor<Int>;
		@:native("504")
		var FiveZeroFour : http_errors.HttpErrorConstructor<Int>;
		var HTTPVersionNotSupported : http_errors.HttpErrorConstructor<Int>;
		@:native("505")
		var FiveZeroFive : http_errors.HttpErrorConstructor<Int>;
		var VariantAlsoNegotiates : http_errors.HttpErrorConstructor<Int>;
		@:native("506")
		var FiveZeroSix : http_errors.HttpErrorConstructor<Int>;
		var InsufficientStorage : http_errors.HttpErrorConstructor<Int>;
		@:native("507")
		var FiveZeroSeven : http_errors.HttpErrorConstructor<Int>;
		var LoopDetected : http_errors.HttpErrorConstructor<Int>;
		@:native("508")
		var FiveZeroEight : http_errors.HttpErrorConstructor<Int>;
		var BandwidthLimitExceeded : http_errors.HttpErrorConstructor<Int>;
		@:native("509")
		var FiveZeroNine : http_errors.HttpErrorConstructor<Int>;
		var NotExtended : http_errors.HttpErrorConstructor<Int>;
		@:native("510")
		var FiveOneZero : http_errors.HttpErrorConstructor<Int>;
		var NetworkAuthenticationRequire : http_errors.HttpErrorConstructor<Int>;
		@:native("511")
		var FiveOneOne : http_errors.HttpErrorConstructor<Int>;
		dynamic function isHttpError(error:Any):Bool;
	};
	static inline function get_value():{
		@:overload(function(rest:haxe.extern.Rest<http_errors.UnknownError>):http_errors.HttpError<Float> { })
		@:selfCall
		function call<N:(Float)>(arg:N, rest:haxe.extern.Rest<http_errors.UnknownError>):http_errors.HttpError<N>;
		var HttpError : http_errors.HttpErrorConstructor<Float>;
		var BadRequest : http_errors.HttpErrorConstructor<Int>;
		@:native("400")
		var FourZeroZero : http_errors.HttpErrorConstructor<Int>;
		var Unauthorized : http_errors.HttpErrorConstructor<Int>;
		@:native("401")
		var FourZeroOne : http_errors.HttpErrorConstructor<Int>;
		var PaymentRequired : http_errors.HttpErrorConstructor<Int>;
		@:native("402")
		var FourZeroTwo : http_errors.HttpErrorConstructor<Int>;
		var Forbidden : http_errors.HttpErrorConstructor<Int>;
		@:native("403")
		var FourZeroThree : http_errors.HttpErrorConstructor<Int>;
		var NotFound : http_errors.HttpErrorConstructor<Int>;
		@:native("404")
		var FourZeroFour : http_errors.HttpErrorConstructor<Int>;
		var MethodNotAllowed : http_errors.HttpErrorConstructor<Int>;
		@:native("405")
		var FourZeroFive : http_errors.HttpErrorConstructor<Int>;
		var NotAcceptable : http_errors.HttpErrorConstructor<Int>;
		@:native("406")
		var FourZeroSix : http_errors.HttpErrorConstructor<Int>;
		var ProxyAuthenticationRequired : http_errors.HttpErrorConstructor<Int>;
		@:native("407")
		var FourZeroSeven : http_errors.HttpErrorConstructor<Int>;
		var RequestTimeout : http_errors.HttpErrorConstructor<Int>;
		@:native("408")
		var FourZeroEight : http_errors.HttpErrorConstructor<Int>;
		var Conflict : http_errors.HttpErrorConstructor<Int>;
		@:native("409")
		var FourZeroNine : http_errors.HttpErrorConstructor<Int>;
		var Gone : http_errors.HttpErrorConstructor<Int>;
		@:native("410")
		var FourOneZero : http_errors.HttpErrorConstructor<Int>;
		var LengthRequired : http_errors.HttpErrorConstructor<Int>;
		@:native("411")
		var FourOneOne : http_errors.HttpErrorConstructor<Int>;
		var PreconditionFailed : http_errors.HttpErrorConstructor<Int>;
		@:native("412")
		var FourOneTwo : http_errors.HttpErrorConstructor<Int>;
		var PayloadTooLarge : http_errors.HttpErrorConstructor<Int>;
		@:native("413")
		var FourOneThree : http_errors.HttpErrorConstructor<Int>;
		var URITooLong : http_errors.HttpErrorConstructor<Int>;
		@:native("414")
		var FourOneFour : http_errors.HttpErrorConstructor<Int>;
		var UnsupportedMediaType : http_errors.HttpErrorConstructor<Int>;
		@:native("415")
		var FourOneFive : http_errors.HttpErrorConstructor<Int>;
		var RangeNotSatisfiable : http_errors.HttpErrorConstructor<Int>;
		@:native("416")
		var FourOneSix : http_errors.HttpErrorConstructor<Int>;
		var ExpectationFailed : http_errors.HttpErrorConstructor<Int>;
		@:native("417")
		var FourOneSeven : http_errors.HttpErrorConstructor<Int>;
		var ImATeapot : http_errors.HttpErrorConstructor<Int>;
		@:native("418")
		var FourOneEight : http_errors.HttpErrorConstructor<Int>;
		var MisdirectedRequest : http_errors.HttpErrorConstructor<Int>;
		@:native("421")
		var FourTwoOne : http_errors.HttpErrorConstructor<Int>;
		var UnprocessableEntity : http_errors.HttpErrorConstructor<Int>;
		@:native("422")
		var FourTwoTwo : http_errors.HttpErrorConstructor<Int>;
		var Locked : http_errors.HttpErrorConstructor<Int>;
		@:native("423")
		var FourTwoThree : http_errors.HttpErrorConstructor<Int>;
		var FailedDependency : http_errors.HttpErrorConstructor<Int>;
		@:native("424")
		var FourTwoFour : http_errors.HttpErrorConstructor<Int>;
		var TooEarly : http_errors.HttpErrorConstructor<Int>;
		@:native("425")
		var FourTwoFive : http_errors.HttpErrorConstructor<Int>;
		var UpgradeRequired : http_errors.HttpErrorConstructor<Int>;
		@:native("426")
		var FourTwoSix : http_errors.HttpErrorConstructor<Int>;
		var PreconditionRequired : http_errors.HttpErrorConstructor<Int>;
		@:native("428")
		var FourTwoEight : http_errors.HttpErrorConstructor<Int>;
		var TooManyRequests : http_errors.HttpErrorConstructor<Int>;
		@:native("429")
		var FourTwoNine : http_errors.HttpErrorConstructor<Int>;
		var RequestHeaderFieldsTooLarge : http_errors.HttpErrorConstructor<Int>;
		@:native("431")
		var FourThreeOne : http_errors.HttpErrorConstructor<Int>;
		var UnavailableForLegalReasons : http_errors.HttpErrorConstructor<Int>;
		@:native("451")
		var FourFiveOne : http_errors.HttpErrorConstructor<Int>;
		var InternalServerError : http_errors.HttpErrorConstructor<Int>;
		@:native("500")
		var FiveZeroZero : http_errors.HttpErrorConstructor<Int>;
		var NotImplemented : http_errors.HttpErrorConstructor<Int>;
		@:native("501")
		var FiveZeroOne : http_errors.HttpErrorConstructor<Int>;
		var BadGateway : http_errors.HttpErrorConstructor<Int>;
		@:native("502")
		var FiveZeroTwo : http_errors.HttpErrorConstructor<Int>;
		var ServiceUnavailable : http_errors.HttpErrorConstructor<Int>;
		@:native("503")
		var FiveZeroThree : http_errors.HttpErrorConstructor<Int>;
		var GatewayTimeout : http_errors.HttpErrorConstructor<Int>;
		@:native("504")
		var FiveZeroFour : http_errors.HttpErrorConstructor<Int>;
		var HTTPVersionNotSupported : http_errors.HttpErrorConstructor<Int>;
		@:native("505")
		var FiveZeroFive : http_errors.HttpErrorConstructor<Int>;
		var VariantAlsoNegotiates : http_errors.HttpErrorConstructor<Int>;
		@:native("506")
		var FiveZeroSix : http_errors.HttpErrorConstructor<Int>;
		var InsufficientStorage : http_errors.HttpErrorConstructor<Int>;
		@:native("507")
		var FiveZeroSeven : http_errors.HttpErrorConstructor<Int>;
		var LoopDetected : http_errors.HttpErrorConstructor<Int>;
		@:native("508")
		var FiveZeroEight : http_errors.HttpErrorConstructor<Int>;
		var BandwidthLimitExceeded : http_errors.HttpErrorConstructor<Int>;
		@:native("509")
		var FiveZeroNine : http_errors.HttpErrorConstructor<Int>;
		var NotExtended : http_errors.HttpErrorConstructor<Int>;
		@:native("510")
		var FiveOneZero : http_errors.HttpErrorConstructor<Int>;
		var NetworkAuthenticationRequire : http_errors.HttpErrorConstructor<Int>;
		@:native("511")
		var FiveOneOne : http_errors.HttpErrorConstructor<Int>;
		dynamic function isHttpError(error:Any):Bool;
	} return cast HttpErrors;
}