package http_errors;

typedef NamedConstructors = {
	var HttpError : HttpErrorConstructor<Float>;
} & {
	var BadRequest : HttpErrorConstructor<Int>;
	@:native("400")
	var FourZeroZero : HttpErrorConstructor<Int>;
} & {
	var Unauthorized : HttpErrorConstructor<Int>;
	@:native("401")
	var FourZeroOne : HttpErrorConstructor<Int>;
} & {
	var PaymentRequired : HttpErrorConstructor<Int>;
	@:native("402")
	var FourZeroTwo : HttpErrorConstructor<Int>;
} & {
	var Forbidden : HttpErrorConstructor<Int>;
	@:native("403")
	var FourZeroThree : HttpErrorConstructor<Int>;
} & {
	var NotFound : HttpErrorConstructor<Int>;
	@:native("404")
	var FourZeroFour : HttpErrorConstructor<Int>;
} & {
	var MethodNotAllowed : HttpErrorConstructor<Int>;
	@:native("405")
	var FourZeroFive : HttpErrorConstructor<Int>;
} & {
	var NotAcceptable : HttpErrorConstructor<Int>;
	@:native("406")
	var FourZeroSix : HttpErrorConstructor<Int>;
} & {
	var ProxyAuthenticationRequired : HttpErrorConstructor<Int>;
	@:native("407")
	var FourZeroSeven : HttpErrorConstructor<Int>;
} & {
	var RequestTimeout : HttpErrorConstructor<Int>;
	@:native("408")
	var FourZeroEight : HttpErrorConstructor<Int>;
} & {
	var Conflict : HttpErrorConstructor<Int>;
	@:native("409")
	var FourZeroNine : HttpErrorConstructor<Int>;
} & {
	var Gone : HttpErrorConstructor<Int>;
	@:native("410")
	var FourOneZero : HttpErrorConstructor<Int>;
} & {
	var LengthRequired : HttpErrorConstructor<Int>;
	@:native("411")
	var FourOneOne : HttpErrorConstructor<Int>;
} & {
	var PreconditionFailed : HttpErrorConstructor<Int>;
	@:native("412")
	var FourOneTwo : HttpErrorConstructor<Int>;
} & {
	var PayloadTooLarge : HttpErrorConstructor<Int>;
	@:native("413")
	var FourOneThree : HttpErrorConstructor<Int>;
} & {
	var URITooLong : HttpErrorConstructor<Int>;
	@:native("414")
	var FourOneFour : HttpErrorConstructor<Int>;
} & {
	var UnsupportedMediaType : HttpErrorConstructor<Int>;
	@:native("415")
	var FourOneFive : HttpErrorConstructor<Int>;
} & {
	var RangeNotSatisfiable : HttpErrorConstructor<Int>;
	@:native("416")
	var FourOneSix : HttpErrorConstructor<Int>;
} & {
	var ExpectationFailed : HttpErrorConstructor<Int>;
	@:native("417")
	var FourOneSeven : HttpErrorConstructor<Int>;
} & {
	var ImATeapot : HttpErrorConstructor<Int>;
	@:native("418")
	var FourOneEight : HttpErrorConstructor<Int>;
} & {
	var MisdirectedRequest : HttpErrorConstructor<Int>;
	@:native("421")
	var FourTwoOne : HttpErrorConstructor<Int>;
} & {
	var UnprocessableEntity : HttpErrorConstructor<Int>;
	@:native("422")
	var FourTwoTwo : HttpErrorConstructor<Int>;
} & {
	var Locked : HttpErrorConstructor<Int>;
	@:native("423")
	var FourTwoThree : HttpErrorConstructor<Int>;
} & {
	var FailedDependency : HttpErrorConstructor<Int>;
	@:native("424")
	var FourTwoFour : HttpErrorConstructor<Int>;
} & {
	var TooEarly : HttpErrorConstructor<Int>;
	@:native("425")
	var FourTwoFive : HttpErrorConstructor<Int>;
} & {
	var UpgradeRequired : HttpErrorConstructor<Int>;
	@:native("426")
	var FourTwoSix : HttpErrorConstructor<Int>;
} & {
	var PreconditionRequired : HttpErrorConstructor<Int>;
	@:native("428")
	var FourTwoEight : HttpErrorConstructor<Int>;
} & {
	var TooManyRequests : HttpErrorConstructor<Int>;
	@:native("429")
	var FourTwoNine : HttpErrorConstructor<Int>;
} & {
	var RequestHeaderFieldsTooLarge : HttpErrorConstructor<Int>;
	@:native("431")
	var FourThreeOne : HttpErrorConstructor<Int>;
} & {
	var UnavailableForLegalReasons : HttpErrorConstructor<Int>;
	@:native("451")
	var FourFiveOne : HttpErrorConstructor<Int>;
} & {
	var InternalServerError : HttpErrorConstructor<Int>;
	@:native("500")
	var FiveZeroZero : HttpErrorConstructor<Int>;
} & {
	var NotImplemented : HttpErrorConstructor<Int>;
	@:native("501")
	var FiveZeroOne : HttpErrorConstructor<Int>;
} & {
	var BadGateway : HttpErrorConstructor<Int>;
	@:native("502")
	var FiveZeroTwo : HttpErrorConstructor<Int>;
} & {
	var ServiceUnavailable : HttpErrorConstructor<Int>;
	@:native("503")
	var FiveZeroThree : HttpErrorConstructor<Int>;
} & {
	var GatewayTimeout : HttpErrorConstructor<Int>;
	@:native("504")
	var FiveZeroFour : HttpErrorConstructor<Int>;
} & {
	var HTTPVersionNotSupported : HttpErrorConstructor<Int>;
	@:native("505")
	var FiveZeroFive : HttpErrorConstructor<Int>;
} & {
	var VariantAlsoNegotiates : HttpErrorConstructor<Int>;
	@:native("506")
	var FiveZeroSix : HttpErrorConstructor<Int>;
} & {
	var InsufficientStorage : HttpErrorConstructor<Int>;
	@:native("507")
	var FiveZeroSeven : HttpErrorConstructor<Int>;
} & {
	var LoopDetected : HttpErrorConstructor<Int>;
	@:native("508")
	var FiveZeroEight : HttpErrorConstructor<Int>;
} & {
	var BandwidthLimitExceeded : HttpErrorConstructor<Int>;
	@:native("509")
	var FiveZeroNine : HttpErrorConstructor<Int>;
} & {
	var NotExtended : HttpErrorConstructor<Int>;
	@:native("510")
	var FiveOneZero : HttpErrorConstructor<Int>;
} & {
	var NetworkAuthenticationRequire : HttpErrorConstructor<Int>;
	@:native("511")
	var FiveOneOne : HttpErrorConstructor<Int>;
};