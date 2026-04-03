package node.dns;

typedef LookupOptions = {
	/**
		The record family. Must be `4`, `6`, or `0`. For backward compatibility reasons, `'IPv4'` and `'IPv6'` are interpreted
		as `4` and `6` respectively. The value 0 indicates that either an IPv4 or IPv6 address is returned. If the value `0` is used
		with `{ all: true } (see below)`, both IPv4 and IPv6 addresses are returned.
	**/
	@:optional
	var family : ts.AnyOf2<Float, String>;
	/**
		One or more [supported `getaddrinfo`](https://nodejs.org/docs/latest-v20.x/api/dns.html#supported-getaddrinfo-flags) flags. Multiple flags may be
		passed by bitwise `OR`ing their values.
	**/
	@:optional
	var hints : Float;
	/**
		When `true`, the callback returns all resolved addresses in an array. Otherwise, returns a single address.
	**/
	@:optional
	var all : Bool;
	/**
		When `verbatim`, the resolved addresses are return unsorted. When `ipv4first`, the resolved addresses are sorted
		by placing IPv4 addresses before IPv6 addresses. When `ipv6first`, the resolved addresses are sorted by placing IPv6
		addresses before IPv4 addresses. Default value is configurable using
		{@link
		setDefaultResultOrder
		}
		or [`--dns-result-order`](https://nodejs.org/docs/latest-v20.x/api/cli.html#--dns-result-orderorder).
	**/
	@:optional
	var order : String;
	/**
		When `true`, the callback receives IPv4 and IPv6 addresses in the order the DNS resolver returned them. When `false`, IPv4
		addresses are placed before IPv6 addresses. This option will be deprecated in favor of `order`. When both are specified,
		`order` has higher precedence. New code should only use `order`. Default value is configurable using
		{@link
		setDefaultResultOrder
		}
		or [`--dns-result-order`](https://nodejs.org/docs/latest-v20.x/api/cli.html#--dns-result-orderorder).
	**/
	@:optional
	var verbatim : Bool;
};