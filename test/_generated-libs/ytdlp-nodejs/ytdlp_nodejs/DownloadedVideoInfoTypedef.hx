package ytdlp_nodejs;

typedef DownloadedVideoInfoTypedef = {
	/**
		Video identifier
	**/
	var id : String;
	/**
		Video title
	**/
	var title : String;
	/**
		Video title ignoring live timestamp and generic title
	**/
	@:optional
	var fulltitle : String;
	/**
		Video filename extension
	**/
	@:optional
	var ext : String;
	/**
		A secondary title of the video
	**/
	@:optional
	var alt_title : String;
	/**
		The description of the video
	**/
	@:optional
	var description : String;
	/**
		An alternative identifier for the video
	**/
	@:optional
	var display_id : String;
	/**
		Full name of the video uploader
	**/
	@:optional
	var uploader : String;
	/**
		Nickname or id of the video uploader
	**/
	@:optional
	var uploader_id : String;
	/**
		URL to the video uploader's profile
	**/
	@:optional
	var uploader_url : String;
	/**
		License name the video is licensed under
	**/
	@:optional
	var license : String;
	/**
		The creators of the video
	**/
	@:optional
	var creators : Array<String>;
	/**
		The creators of the video; comma-separated
	**/
	@:optional
	var creator : String;
	/**
		UNIX timestamp of the moment the video became available
	**/
	@:optional
	var timestamp : Float;
	/**
		Video upload date in UTC (YYYYMMDD)
	**/
	@:optional
	var upload_date : String;
	/**
		UNIX timestamp of the moment the video was released
	**/
	@:optional
	var release_timestamp : Float;
	/**
		The date (YYYYMMDD) when the video was released in UTC
	**/
	@:optional
	var release_date : String;
	/**
		Year (YYYY) when the video or album was released
	**/
	@:optional
	var release_year : Float;
	/**
		UNIX timestamp of the moment the video was last modified
	**/
	@:optional
	var modified_timestamp : Float;
	/**
		The date (YYYYMMDD) when the video was last modified in UTC
	**/
	@:optional
	var modified_date : String;
	/**
		Full name of the channel the video is uploaded on
	**/
	@:optional
	var channel : String;
	/**
		Id of the channel
	**/
	@:optional
	var channel_id : String;
	/**
		URL of the channel
	**/
	@:optional
	var channel_url : String;
	/**
		Number of followers of the channel
	**/
	@:optional
	var channel_follower_count : Float;
	/**
		Whether the channel is verified on the platform
	**/
	@:optional
	var channel_is_verified : Bool;
	/**
		Physical location where the video was filmed
	**/
	@:optional
	var location : String;
	/**
		Length of the video in seconds
	**/
	@:optional
	var duration : Float;
	/**
		Length of the video (HH:mm:ss)
	**/
	@:optional
	var duration_string : String;
	/**
		How many users have watched the video on the platform
	**/
	@:optional
	var view_count : Float;
	/**
		How many users are currently watching the video
	**/
	@:optional
	var concurrent_view_count : Float;
	/**
		Number of positive ratings of the video
	**/
	@:optional
	var like_count : Float;
	/**
		Number of negative ratings of the video
	**/
	@:optional
	var dislike_count : Float;
	/**
		Number of reposts of the video
	**/
	@:optional
	var repost_count : Float;
	/**
		Average rating given by users
	**/
	@:optional
	var average_rating : Float;
	/**
		Number of comments on the video
	**/
	@:optional
	var comment_count : Float;
	/**
		Number of times the video has been saved or bookmarked
	**/
	@:optional
	var save_count : Float;
	/**
		Age restriction for the video (years)
	**/
	@:optional
	var age_limit : Float;
	/**
		One of "not_live", "is_live", "is_upcoming", "was_live", "post_live"
	**/
	@:optional
	var live_status : String;
	/**
		Whether this video is a live stream or a fixed-length video
	**/
	@:optional
	var is_live : Bool;
	/**
		Whether this video was originally a live stream
	**/
	@:optional
	var was_live : Bool;
	/**
		Whether the video is allowed to play in embedded players
	**/
	@:optional
	var playable_in_embed : String;
	/**
		Whether the video is "private", "premium_only", "subscriber_only", "needs_auth", "unlisted" or "public"
	**/
	@:optional
	var availability : String;
	/**
		The type of media as classified by the site
	**/
	@:optional
	var media_type : String;
	/**
		Time in seconds where the reproduction should start
	**/
	@:optional
	var start_time : Float;
	/**
		Time in seconds where the reproduction should end
	**/
	@:optional
	var end_time : Float;
	/**
		Name of the extractor
	**/
	@:optional
	var extractor : String;
	/**
		Key name of the extractor
	**/
	@:optional
	var extractor_key : String;
	/**
		Unix epoch of when the information extraction was completed
	**/
	@:optional
	var epoch : Float;
	/**
		Number that will be increased with each download
	**/
	@:optional
	var autonumber : Float;
	/**
		Number that will be increased with each video
	**/
	@:optional
	var video_autonumber : Float;
	/**
		Total number of extracted items in the playlist
	**/
	@:optional
	var n_entries : Float;
	/**
		Identifier of the playlist that contains the video
	**/
	@:optional
	var playlist_id : String;
	/**
		Name of the playlist that contains the video
	**/
	@:optional
	var playlist_title : String;
	/**
		playlist_title if available or else playlist_id
	**/
	@:optional
	var playlist : String;
	/**
		Total number of items in the playlist
	**/
	@:optional
	var playlist_count : Float;
	/**
		Index of the video in the playlist
	**/
	@:optional
	var playlist_index : String;
	/**
		Position of the video in the playlist download queue
	**/
	@:optional
	var playlist_autonumber : Float;
	/**
		Full name of the playlist uploader
	**/
	@:optional
	var playlist_uploader : String;
	/**
		Nickname or id of the playlist uploader
	**/
	@:optional
	var playlist_uploader_id : String;
	/**
		Display name of the channel that uploaded the playlist
	**/
	@:optional
	var playlist_channel : String;
	/**
		Identifier of the channel that uploaded the playlist
	**/
	@:optional
	var playlist_channel_id : String;
	/**
		URL of the playlist webpage
	**/
	@:optional
	var playlist_webpage_url : String;
	/**
		A URL to the video webpage
	**/
	@:optional
	var webpage_url : String;
	/**
		The basename of the webpage URL
	**/
	@:optional
	var webpage_url_basename : String;
	/**
		The domain of the webpage URL
	**/
	@:optional
	var webpage_url_domain : String;
	/**
		The URL given by the user
	**/
	@:optional
	var original_url : String;
	/**
		List of categories the video belongs to
	**/
	@:optional
	var categories : Array<String>;
	/**
		List of tags assigned to the video
	**/
	@:optional
	var tags : Array<String>;
	/**
		List of cast members
	**/
	@:optional
	@:native("cast")
	var cast_ : Array<String>;
	/**
		Final filepath after post-processing
	**/
	@:optional
	var filepath : String;
};