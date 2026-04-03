package node.inspector;

@:jsRequire("inspector", "Network") @valueModuleOnly extern class Network {
	/**
		This feature is only available with the `--experimental-network-inspection` flag enabled.
		
		Broadcasts the `Network.requestWillBeSent` event to connected frontends. This event indicates that
		the application is about to send an HTTP request.
	**/
	static function requestWillBeSent(params:node.inspector.network.RequestWillBeSentEventDataType):Void;
	/**
		This feature is only available with the `--experimental-network-inspection` flag enabled.
		
		Broadcasts the `Network.responseReceived` event to connected frontends. This event indicates that
		HTTP response is available.
	**/
	static function responseReceived(params:node.inspector.network.ResponseReceivedEventDataType):Void;
	/**
		This feature is only available with the `--experimental-network-inspection` flag enabled.
		
		Broadcasts the `Network.loadingFinished` event to connected frontends. This event indicates that
		HTTP request has finished loading.
	**/
	static function loadingFinished(params:node.inspector.network.LoadingFinishedEventDataType):Void;
	/**
		This feature is only available with the `--experimental-network-inspection` flag enabled.
		
		Broadcasts the `Network.loadingFailed` event to connected frontends. This event indicates that
		HTTP request has failed to load.
	**/
	static function loadingFailed(params:node.inspector.network.LoadingFailedEventDataType):Void;
}