package node.http2;

typedef SessionOptions = {
	/**
		Sets the maximum dynamic table size for deflating header fields.
	**/
	@:optional
	var maxDeflateDynamicTableSize : Float;
	/**
		Sets the maximum number of settings entries per `SETTINGS` frame.
		The minimum value allowed is `1`.
	**/
	@:optional
	var maxSettings : Float;
	/**
		Sets the maximum memory that the `Http2Session` is permitted to use.
		The value is expressed in terms of number of megabytes, e.g. `1` equal 1 megabyte.
		The minimum value allowed is `1`.
		This is a credit based limit, existing `Http2Stream`s may cause this limit to be exceeded,
		but new `Http2Stream` instances will be rejected while this limit is exceeded.
		The current number of `Http2Stream` sessions, the current memory use of the header compression tables,
		current data queued to be sent, and unacknowledged `PING` and `SETTINGS` frames are all counted towards the current limit.
	**/
	@:optional
	var maxSessionMemory : Float;
	/**
		Sets the maximum number of header entries.
		This is similar to `server.maxHeadersCount` or `request.maxHeadersCount` in the `node:http` module.
		The minimum value is `1`.
	**/
	@:optional
	var maxHeaderListPairs : Float;
	/**
		Sets the maximum number of outstanding, unacknowledged pings.
	**/
	@:optional
	var maxOutstandingPings : Float;
	/**
		Sets the maximum allowed size for a serialized, compressed block of headers.
		Attempts to send headers that exceed this limit will result in
		a `'frameError'` event being emitted and the stream being closed and destroyed.
	**/
	@:optional
	var maxSendHeaderBlockLength : Float;
	/**
		Strategy used for determining the amount of padding to use for `HEADERS` and `DATA` frames.
	**/
	@:optional
	var paddingStrategy : Float;
	/**
		Sets the maximum number of concurrent streams for the remote peer as if a `SETTINGS` frame had been received.
		Will be overridden if the remote peer sets its own value for `maxConcurrentStreams`.
	**/
	@:optional
	var peerMaxConcurrentStreams : Float;
	/**
		The initial settings to send to the remote peer upon connection.
	**/
	@:optional
	var settings : Settings;
	/**
		The array of integer values determines the settings types,
		which are included in the `CustomSettings`-property of the received remoteSettings.
		Please see the `CustomSettings`-property of the `Http2Settings` object for more information, on the allowed setting types.
	**/
	@:optional
	var remoteCustomSettings : Array<Float>;
	/**
		Specifies a timeout in milliseconds that
		a server should wait when an [`'unknownProtocol'`][] is emitted. If the
		socket has not been destroyed by that time the server will destroy it.
	**/
	@:optional
	var unknownProtocolTimeout : Float;
};