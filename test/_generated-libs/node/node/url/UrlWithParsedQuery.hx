package node.url;
extern typedef UrlWithParsedQuery = Url_ & { var query : node.querystring.ParsedUrlQuery; };