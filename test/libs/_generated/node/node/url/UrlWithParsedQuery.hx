package node.url;
extern interface UrlWithParsedQuery extends Url_ {
	var query : node.querystring.ParsedUrlQuery;
}