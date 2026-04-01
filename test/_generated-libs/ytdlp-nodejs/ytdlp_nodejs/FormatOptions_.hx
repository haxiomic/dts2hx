package ytdlp_nodejs;

typedef FormatOptions_<F:(String)> = {
	@:optional
	var format : ts.AnyOf2<String, FormatArgs<F>>;
	@:optional
	dynamic function onProgress(p:VideoProgress):Void;
	/**
		Callback fired with video info before download starts.
		Uses yt-dlp's `before_dl` print hook.
	**/
	@:optional
	dynamic function beforeDownload(info:DownloadedVideoInfo):Void;
	/**
		Display progress bar. Maps to `--progress`.
	**/
	@:optional
	var progress : Bool;
	/**
		Color output (always, never, auto, no_color). Maps to `--color WHEN`.
	**/
	@:optional
	var color : String;
	/**
		Output filename template. Maps to `-o, --output TEMPLATE`.
	**/
	@:optional
	var output : String;
	/**
		Force character encoding. Maps to `--encoding ENCODING`.
	**/
	@:optional
	var encoding : String;
	/**
		Write .part files. Maps to `--part`.
	**/
	@:optional
	var part : Bool;
	/**
		Login username. Maps to `-u, --username USERNAME`.
	**/
	@:optional
	var username : String;
	/**
		Update yt-dlp to the latest version. Maps to `--update`.
	**/
	@:optional
	var update : Bool;
	/**
		Quiet mode, print given template. Maps to `-O, --print [WHEN:]TEMPLATE`.
	**/
	@:optional
	var print : String;
	/**
		Print help text and exit. Maps to `--help`.
	**/
	@:optional
	var printHelp : Bool;
	/**
		Print program version and exit. Maps to `--version`.
	**/
	@:optional
	var printVersion : Bool;
	/**
		Do not check for updates. Maps to `--no-update`.
	**/
	@:optional
	var noUpdate : Bool;
	/**
		Update to a specific version. Maps to `--update-to TAG`.
	**/
	@:optional
	var updateTo : String;
	/**
		Continue on download errors. Maps to `--ignore-errors`.
	**/
	@:optional
	var ignoreErrors : Bool;
	/**
		Continue with next video after error. Maps to `--no-abort-on-error`.
	**/
	@:optional
	var noAbortOnError : Bool;
	/**
		Abort on download error. Maps to `--abort-on-error`.
	**/
	@:optional
	var abortOnError : Bool;
	/**
		Display current browser user-agent. Maps to `--dump-user-agent`.
	**/
	@:optional
	var dumpUserAgent : Bool;
	/**
		List all supported extractors. Maps to `--list-extractors`.
	**/
	@:optional
	var listExtractors : Bool;
	/**
		Output descriptions of all extractors. Maps to `--extractor-descriptions`.
	**/
	@:optional
	var extractorDescriptions : Bool;
	/**
		Use only specific extractors. Maps to `--use-extractors NAMES`.
	**/
	@:optional
	var useExtractors : Array<String>;
	/**
		Use this prefix for search queries. Maps to `--default-search PREFIX`.
	**/
	@:optional
	var defaultSearch : String;
	/**
		Don't read configuration files. Maps to `--ignore-config`.
	**/
	@:optional
	var ignoreConfig : Bool;
	/**
		Don't load config from default locations. Maps to `--no-config-location`.
	**/
	@:optional
	var noConfigLocations : Bool;
	/**
		Location of the main config file. Maps to `--config-locations PATH`.
	**/
	@:optional
	var configLocations : Array<String>;
	/**
		Directories to load plugins from. Maps to `--plugin-dirs PATH`.
	**/
	@:optional
	var pluginDirs : Array<String>;
	/**
		Disable loading plugins. Maps to `--no-plugin-dirs`.
	**/
	@:optional
	var noPluginDirs : Bool;
	/**
		Don't extract videos of a playlist. Maps to `--flat-playlist`.
	**/
	@:optional
	var flatPlaylist : Bool;
	/**
		Extract videos of a playlist. Maps to `--no-flat-playlist`.
	**/
	@:optional
	var noFlatPlaylist : Bool;
	/**
		Download livestreams from the start. Maps to `--live-from-start`.
	**/
	@:optional
	var liveFromStart : Bool;
	/**
		Don't download from the start. Maps to `--no-live-from-start`.
	**/
	@:optional
	var noLiveFromStart : Bool;
	/**
		Wait seconds for a video to become available. Maps to `--wait-for-video SEC`.
	**/
	@:optional
	var waitForVideo : Float;
	/**
		Don't wait for video. Maps to `--no-wait-for-video`.
	**/
	@:optional
	var noWaitForVideo : Bool;
	/**
		Mark videos watched on YouTube. Maps to `--mark-watched`.
	**/
	@:optional
	var markWatched : Bool;
	/**
		Don't mark videos watched. Maps to `--no-mark-watched`.
	**/
	@:optional
	var noMarkWatched : Bool;
	/**
		Options to adjust behavior. Maps to `--compat-options OPTS`.
	**/
	@:optional
	var compatOptions : Array<String>;
	/**
		Command aliases. Maps to `--alias ALIAS CMD`.
	**/
	@:optional
	var aliases : Array<String>;
	/**
		JavaScript runtime for extractors requiring JS execution.
		Supported values: 'deno', 'node', 'phantomjs', etc.
		Maps to `--js-runtime RUNTIME`.
	**/
	@:optional
	var jsRuntime : String;
	/**
		Use the specified HTTP/HTTPS/SOCKS proxy. Maps to `--proxy URL`.
	**/
	@:optional
	var proxy : String;
	/**
		Time to wait before giving up (seconds). Maps to `--socket-timeout SEC`.
	**/
	@:optional
	var socketTimeout : Float;
	/**
		Client-side IP address to bind to. Maps to `--source-address IP`.
	**/
	@:optional
	var sourceAddress : String;
	/**
		Make all connections via IPv4. Maps to `--force-ipv4`.
	**/
	@:optional
	var forceIpv4 : Bool;
	/**
		Make all connections via IPv6. Maps to `--force-ipv6`.
	**/
	@:optional
	var forceIpv6 : Bool;
	/**
		Client to impersonate for requests. Maps to `--impersonate CLIENT`.
	**/
	@:optional
	var impersonate : Array<String>;
	/**
		List available clients to impersonate. Maps to `--list-impersonate-targets`.
	**/
	@:optional
	var listImpersonateTargets : Bool;
	/**
		Enable file:// URLs. Maps to `--enable-file-urls`.
	**/
	@:optional
	var enableFileUrls : Bool;
	/**
		Proxy for geo verification. Maps to `--geo-verification-proxy URL`.
	**/
	@:optional
	var geoVerificationProxy : String;
	/**
		How to fake X-Forwarded-For header. Maps to `--xff VALUE`.
	**/
	@:optional
	var xff : String;
	/**
		Bypass geographic restriction. Maps to `--geo-bypass`.
	**/
	@:optional
	var geoBypass : Bool;
	/**
		Force bypass with a two-letter country code. Maps to `--geo-bypass-country CODE`.
	**/
	@:optional
	var geoBypassCountry : String;
	/**
		Force bypass with an IP block. Maps to `--geo-bypass-ip-block IP_BLOCK`.
	**/
	@:optional
	var geoBypassIpBlock : String;
	/**
		Playlist items to download (e.g., "1,3,5-7"). Maps to `--playlist-items ITEM_SPEC`.
	**/
	@:optional
	var playlistItems : String;
	/**
		Don't download files smaller than SIZE. Maps to `--min-filesize SIZE`.
	**/
	@:optional
	var minFilesize : String;
	/**
		Don't download files larger than SIZE. Maps to `--max-filesize SIZE`.
	**/
	@:optional
	var maxFilesize : String;
	/**
		Download only videos uploaded on this date. Maps to `--date DATE`.
	**/
	@:optional
	var date : String;
	/**
		Download only videos uploaded before this date. Maps to `--datebefore DATE`.
	**/
	@:optional
	var dateBefore : String;
	/**
		Download only videos uploaded after this date. Maps to `--dateafter DATE`.
	**/
	@:optional
	var dateAfter : String;
	/**
		Generic video filter. Maps to `--match-filter FILTER`.
	**/
	@:optional
	var matchFilter : String;
	/**
		Do not use any --match-filter. Maps to `--no-match-filters`.
	**/
	@:optional
	var noMatchFilters : Bool;
	/**
		Stop on filter match. Maps to `--break-match-filters FILTER`.
	**/
	@:optional
	var breakMatchFilters : String;
	/**
		Do not --break-match-filters. Maps to `--no-break-match-filters`.
	**/
	@:optional
	var noBreakMatchFilters : Bool;
	/**
		Download only the video for a single URL. Maps to `--no-playlist`.
	**/
	@:optional
	var noPlaylist : Bool;
	/**
		Download the playlist if URL is a video and playlist. Maps to `--yes-playlist`.
	**/
	@:optional
	var yesPlaylist : Bool;
	/**
		Download only videos suitable for the given age. Maps to `--age-limit YEARS`.
	**/
	@:optional
	var ageLimit : Float;
	/**
		Download only videos not in the archive. Maps to `--download-archive FILE`.
	**/
	@:optional
	var downloadArchive : String;
	/**
		Do not use archive file. Maps to `--no-download-archive`.
	**/
	@:optional
	var noDownloadArchive : Bool;
	/**
		Maximum number of files to download. Maps to `--max-downloads NUMBER`.
	**/
	@:optional
	var maxDownloads : Float;
	/**
		Stop if video is in archive. Maps to `--break-on-existing`.
	**/
	@:optional
	var breakOnExisting : Bool;
	/**
		Do not stop on existing. Maps to `--no-break-on-existing`.
	**/
	@:optional
	var noBreakOnExisting : Bool;
	/**
		Reset per input URL. Maps to `--break-per-input`.
	**/
	@:optional
	var breakPerInput : Bool;
	/**
		Do not reset per input. Maps to `--no-break-per-input`.
	**/
	@:optional
	var noBreakPerInput : Bool;
	/**
		Skip rest of playlist after N errors. Maps to `--skip-playlist-after-errors N`.
	**/
	@:optional
	var skipPlaylistAfterErrors : Float;
	/**
		Playlist video to start at (1-indexed). Maps to `--playlist-start NUMBER`.
	**/
	@:optional
	var playlistStart : Float;
	/**
		Playlist video to end at (1-indexed). Maps to `--playlist-end NUMBER`.
	**/
	@:optional
	var playlistEnd : Float;
	/**
		Download only videos whose title matches regex. Maps to `--match-title REGEX`.
	**/
	@:optional
	var matchTitle : String;
	/**
		Skip videos whose title matches regex. Maps to `--reject-title REGEX`.
	**/
	@:optional
	var rejectTitle : String;
	/**
		Download ads as well. Maps to `--include-ads`.
	**/
	@:optional
	var includeAds : Bool;
	/**
		Stop on rejected title. Maps to `--break-on-reject`.
	**/
	@:optional
	var breakOnReject : Bool;
	/**
		Number of fragments to download concurrently.
		Maps to `-N, --concurrent-fragments N`.
	**/
	@:optional
	var concurrentFragments : Float;
	/**
		Minimum download rate to avoid throttling (e.g., "100K").
		Re-extracts video data if download rate falls below this.
		Maps to `--throttled-rate RATE`.
	**/
	@:optional
	var throttledRate : String;
	/**
		Number of retries for file access. Maps to `--file-access-retries RETRIES`.
	**/
	@:optional
	var fileAccessRetries : Float;
	/**
		Time to sleep between retries in seconds.
		Can be a number, "linear=START[:END[:STEP]]" or "exp=START[:END[:BASE]]".
		Use retrySleepType for type-specific sleep.
		Maps to `--retry-sleep [TYPE:]EXPR`.
	**/
	@:optional
	var retrySleep : ts.AnyOf2<String, Float>;
	/**
		Type-specific retry sleep configuration.
		Keys: 'http', 'fragment', 'file_access', 'extractor'.
		Maps to `--retry-sleep TYPE:EXPR`.
	**/
	@:optional
	var retrySleepByType : haxe.DynamicAccess<String>;
	/**
		Delete fragments after download. Maps to `--no-keep-fragments`.
	**/
	@:optional
	var noKeepFragments : Bool;
	/**
		Automatically resize the download buffer. Maps to `--resize-buffer`.
	**/
	@:optional
	var resizeBuffer : Bool;
	/**
		Don't automatically resize buffer. Maps to `--no-resize-buffer`.
	**/
	@:optional
	var noResizeBuffer : Bool;
	/**
		Process playlist entries as received. Maps to `--lazy-playlist`.
	**/
	@:optional
	var lazyPlaylist : Bool;
	/**
		Parse entire playlist before downloading. Maps to `--no-lazy-playlist`.
	**/
	@:optional
	var noLazyPlaylist : Bool;
	/**
		Don't use mpegts container for HLS. Maps to `--no-hls-use-mpegts`.
	**/
	@:optional
	var noHlsUseMpegts : Bool;
	/**
		Download only matching sections (time range or chapters).
		Examples: "*10:15-inf", "intro", "*from-url".
		Maps to `--download-sections REGEX`.
	**/
	@:optional
	var downloadSections : String;
	/**
		External downloader to use.
		Supports: native, aria2c, axel, curl, ffmpeg, httpie, wget.
		Maps to `--downloader [PROTO:]NAME`.
	**/
	@:optional
	var downloader : String;
	/**
		Arguments to pass to external downloader. Maps to `--downloader-args NAME:ARGS`.
	**/
	@:optional
	var downloaderArgs : String;
	/**
		Number of retries (default 10). Maps to `-R, --retries RETRIES`.
	**/
	@:optional
	var retries : Float;
	/**
		Number of retries for a fragment. Maps to `--fragment-retries RETRIES`.
	**/
	@:optional
	var fragmentRetries : Float;
	/**
		Skip unavailable fragments. Maps to `--skip-unavailable-fragments`.
	**/
	@:optional
	var skipUnavailableFragments : Bool;
	/**
		Abort download if a fragment is unavailable. Maps to `--abort-on-unavailable-fragments`.
	**/
	@:optional
	var abortOnUnavailableFragment : Bool;
	/**
		Keep downloaded fragments on disk. Maps to `--keep-fragments`.
	**/
	@:optional
	var keepFragments : Bool;
	/**
		Size of download buffer (e.g., "1024", "16K"). Maps to `--buffer-size SIZE`.
	**/
	@:optional
	var bufferSize : String;
	/**
		Don't resume partial downloads. Maps to `--no-resume-dl`.
	**/
	@:optional
	var noResumeDl : Bool;
	/**
		Force resume of partial downloads. Maps to `-c, --continue`.
	**/
	@:optional
	var continueDownload : Bool;
	/**
		Do not resume partial downloads. Maps to `--no-continue`.
	**/
	@:optional
	var noContinue : Bool;
	/**
		Maximum download rate (e.g., "50K", "4.2M"). Maps to `-r, --limit-rate RATE`.
	**/
	@:optional
	var limitRate : String;
	/**
		Extract cookies from browser. Maps to `--cookies-from-browser BROWSER`.
	**/
	@:optional
	var cookiesFromBrowser : String;
	/**
		Don't read cookies from files. Maps to `--no-cookies`.
	**/
	@:optional
	var noCookies : Bool;
	/**
		Number of retries for known extractor errors. Maps to `--extractor-retries RETRIES`.
	**/
	@:optional
	var extractorRetries : Float;
	/**
		Process dynamic DASH manifests. Maps to `--allow-dynamic-mpd`.
	**/
	@:optional
	var allowDynamicMpd : Bool;
	/**
		Use mpegts container for HLS. Maps to `--hls-use-mpegts`.
	**/
	@:optional
	var hlsUseMpegts : Bool;
	/**
		Size of a chunk for chunk-based HTTP downloading.
		May help bypass throttling (experimental).
		Maps to `--http-chunk-size SIZE`.
	**/
	@:optional
	var httpChunkSize : String;
	/**
		Skip download (useful with --print). Maps to `--no-download`.
	**/
	@:optional
	var noDownload : Bool;
	/**
		Download playlist videos in reverse order. Maps to `--playlist-reverse`.
	**/
	@:optional
	var playlistReverse : Bool;
	/**
		Download playlist videos in random order. Maps to `--playlist-random`.
	**/
	@:optional
	var playlistRandom : Bool;
	/**
		Set xattr filesize. Maps to `--xattr-set-filesize`.
	**/
	@:optional
	var xattrSetFilesize : Bool;
	/**
		Split HLS at discontinuities. Maps to `--hls-split-discontinuity`.
	**/
	@:optional
	var hlsSplitDiscontinuity : Bool;
	/**
		File containing URLs to download. Maps to `-a, --batch-file FILE`.
	**/
	@:optional
	var batchFile : String;
	/**
		Don't read batch file. Maps to `--no-batch-file`.
	**/
	@:optional
	var noBatchFile : Bool;
	/**
		Limit filename length to N characters. Maps to `--trim-filenames LENGTH`.
	**/
	@:optional
	var trimFileNames : Float;
	/**
		Don't restrict characters in filenames. Maps to `--no-restrict-filenames`.
	**/
	@:optional
	var noRestrictFilenames : Bool;
	/**
		Don't force Windows-safe filenames. Maps to `--no-windows-filenames`.
	**/
	@:optional
	var noWindowsFilenames : Bool;
	/**
		Force resume of partially downloaded files (deprecated).
	**/
	@:optional
	@:native("continue")
	var continue_ : Bool;
	/**
		Don't use .part files. Maps to `--no-part`.
	**/
	@:optional
	var noPart : Bool;
	/**
		Use file modification time from server. Maps to `--mtime`.
	**/
	@:optional
	var mtime : Bool;
	/**
		Don't use server mtime. Maps to `--no-mtime`.
	**/
	@:optional
	var noMtime : Bool;
	/**
		Write video description to .description file. Maps to `--write-description`.
	**/
	@:optional
	var writeDescription : Bool;
	/**
		Don't write description file. Maps to `--no-write-description`.
	**/
	@:optional
	var noWriteDescription : Bool;
	/**
		Write video metadata to .info.json file. Maps to `--write-info-json`.
	**/
	@:optional
	var writeInfoJson : Bool;
	/**
		Don't write info json. Maps to `--no-write-info-json`.
	**/
	@:optional
	var noWriteInfoJson : Bool;
	/**
		Write playlist metadata files. Maps to `--write-playlist-metafiles`.
	**/
	@:optional
	var writePlaylistMetafiles : Bool;
	/**
		Don't write playlist metadata. Maps to `--no-write-playlist-metafiles`.
	**/
	@:optional
	var noWritePlaylistMetafiles : Bool;
	/**
		Remove some private fields from infojson. Maps to `--clean-info-json`.
	**/
	@:optional
	var cleanInfoJson : Bool;
	/**
		Don't clean infojson. Maps to `--no-clean-info-json`.
	**/
	@:optional
	var noCleanInfoJson : Bool;
	/**
		Write video comments to infojson. Maps to `--write-comments`.
	**/
	@:optional
	var writeComments : Bool;
	/**
		Don't write comments. Maps to `--no-write-comments`.
	**/
	@:optional
	var noWriteComments : Bool;
	/**
		JSON file with video metadata. Maps to `--load-info-json FILE`.
	**/
	@:optional
	var loadInfoJson : String;
	/**
		File to read cookies from. Maps to `--cookies FILE`.
	**/
	@:optional
	var cookies : String;
	/**
		Do not read cookies from browser. Maps to `--no-cookies-from-browser`.
	**/
	@:optional
	var noCookiesFromBrowser : Bool;
	/**
		Location to store cached data. Maps to `--cache-dir DIR`.
	**/
	@:optional
	var cacheDir : String;
	/**
		Disable caching. Maps to `--no-cache-dir`.
	**/
	@:optional
	var noCacheDir : Bool;
	/**
		Delete all filesystem cache files. Maps to `--rm-cache-dir`.
	**/
	@:optional
	var rmCacheDir : Bool;
	/**
		Paths for different file types.
		Maps to `-P, --paths [TYPES:]PATH`.
	**/
	@:optional
	var paths : ts.AnyOf2<String, haxe.DynamicAccess<String>>;
	/**
		Placeholder for unavailable template. Maps to `--output-na-placeholder TEXT`.
	**/
	@:optional
	var outputNaPlaceholder : String;
	/**
		Restrict filenames to ASCII. Maps to `--restrict-filenames`.
	**/
	@:optional
	var restrictFilenames : Bool;
	/**
		Force filenames to be Windows-safe. Maps to `--windows-filenames`.
	**/
	@:optional
	var windowsFilenames : Bool;
	/**
		Don't overwrite existing files. Maps to `--no-overwrites`.
	**/
	@:optional
	var noOverwrites : Bool;
	/**
		Overwrite all video and metadata files. Maps to `--force-overwrites`.
	**/
	@:optional
	var forceOverwrites : Bool;
	/**
		Don't overwrite the video. Maps to `--no-force-overwrites`.
	**/
	@:optional
	var noForceOverwrites : Bool;
	/**
		Start autonumber from given value. Maps to `--autonumber-start NUMBER`.
	**/
	@:optional
	var autonumberStart : Float;
	/**
		Don't use .part files. Maps to `--no-part-files`.
	**/
	@:optional
	var noPartFiles : Bool;
	/**
		Write thumbnail image to disk. Maps to `--write-thumbnail`.
	**/
	@:optional
	var writeThumbnail : Bool;
	/**
		Write all thumbnail formats to disk. Maps to `--write-all-thumbnails`.
	**/
	@:optional
	var writeAllThumbnails : Bool;
	/**
		Don't write thumbnails. Maps to `--no-write-thumbnails`.
	**/
	@:optional
	var noWriteThumbnails : Bool;
	/**
		Convert thumbnails to format. Maps to `--convert-thumbnails FORMAT`.
	**/
	@:optional
	var convertThumbnails : String;
	/**
		Write internet shortcut file. Maps to `--write-link`.
	**/
	@:optional
	var writeLink : Bool;
	/**
		Write .url Windows shortcut. Maps to `--write-url-link`.
	**/
	@:optional
	var writeUrlLink : Bool;
	/**
		Write .webloc macOS shortcut. Maps to `--write-webloc-link`.
	**/
	@:optional
	var writeWeblocLink : Bool;
	/**
		Write .lnk Windows shortcut. Maps to `--write-lnk-link`.
	**/
	@:optional
	var writeLnkLink : Bool;
	/**
		Write .desktop Linux shortcut. Maps to `--write-desktop-link`.
	**/
	@:optional
	var writeDesktopLink : Bool;
	/**
		Quiet mode, print only errors. Maps to `-q, --quiet`.
	**/
	@:optional
	var quiet : Bool;
	/**
		Ignore warnings. Maps to `--no-warnings`.
	**/
	@:optional
	var noWarnings : Bool;
	/**
		Simulate, don't download or write files. Maps to `-s, --simulate`.
	**/
	@:optional
	var simulate : Bool;
	/**
		Don't simulate. Maps to `--no-simulate`.
	**/
	@:optional
	var noSimulate : Bool;
	/**
		Ignore "no video formats" errors. Maps to `--ignore-no-formats-error`.
	**/
	@:optional
	var ignoreNoFormatsError : Bool;
	/**
		Ignore EOF errors. Maps to `--ignore-eof-error`.
	**/
	@:optional
	var ignoreEoFError : Bool;
	/**
		Don't ignore EOF errors. Maps to `--no-ignore-eof-error`.
	**/
	@:optional
	var noIgnoreEoFError : Bool;
	/**
		Don't emit color codes. Maps to `--no-color`.
	**/
	@:optional
	var noColor : Bool;
	/**
		Display HTTP traffic. Maps to `--print-traffic`.
	**/
	@:optional
	var printTraffic : Bool;
	/**
		Display progress in console title. Maps to `--console-title`.
	**/
	@:optional
	var consoleTitle : Bool;
	/**
		Print various debugging information. Maps to `-v, --verbose`.
	**/
	@:optional
	var verbose : Bool;
	/**
		Activate quiet mode. Maps to `--no-quiet`.
	**/
	@:optional
	var noQuiet : Bool;
	/**
		Don't ignore "no formats" errors. Maps to `--no-ignore-no-formats-error`.
	**/
	@:optional
	var noIgnoreNoFormatsError : Bool;
	/**
		Don't display progress bar. Maps to `--no-progress`.
	**/
	@:optional
	var noProgress : Bool;
	/**
		Simulate and print info as JSON (single video). Maps to `-J, --dump-single-json`.
	**/
	@:optional
	var dumpSingleJson : Bool;
	/**
		Simulate and print info as JSON. Maps to `-j, --dump-json`.
	**/
	@:optional
	var dumpJson : Bool;
	/**
		Print JSON (equivalent to -j). Maps to `--print-json`.
	**/
	@:optional
	var printJson : Bool;
	/**
		Don't download video. Maps to `--skip-download`.
	**/
	@:optional
	var skipDownload : Bool;
	/**
		Print template to file. Maps to `--print-to-file [WHEN:]TEMPLATE FILE`.
	**/
	@:optional
	var printToFile : String;
	/**
		Force write to archive. Maps to `--force-write-archive`.
	**/
	@:optional
	var forceWriteArchive : Bool;
	/**
		Output progress on a new line. Maps to `--newline`.
	**/
	@:optional
	var newline : Bool;
	/**
		Time between progress updates in seconds. Maps to `--progress-delta SEC`.
	**/
	@:optional
	var progressDelta : Float;
	/**
		Print the yt-dlp command line. Maps to `--print-command-line`.
	**/
	@:optional
	var debugPrintCommandLine : Bool;
	/**
		Write downloaded pages to files. Maps to `--write-pages`.
	**/
	@:optional
	var writePages : Bool;
	/**
		Dump parsed web pages. Maps to `--dump-pages`.
	**/
	@:optional
	var dumpPages : Bool;
	/**
		Use an unencrypted connection. Maps to `--legacy-server-connect`.
	**/
	@:optional
	var legacyServerConnect : Bool;
	/**
		Suppress HTTPS certificate validation. Maps to `--no-check-certificates`.
	**/
	@:optional
	var noCheckCertificates : Bool;
	/**
		Use an unencrypted connection. Maps to `--prefer-insecure`.
	**/
	@:optional
	var preferInsecure : Bool;
	/**
		Specify additional HTTP headers. Maps to `--add-header FIELD:VALUE`.
	**/
	@:optional
	var addHeaders : haxe.DynamicAccess<String>;
	/**
		Specify custom binary path. Maps to `--bin-path PATH`.
	**/
	@:optional
	var binPath : String;
	/**
		Work around bidi issue. Maps to `--bidi-workaround`.
	**/
	@:optional
	var bidiWorkaround : Bool;
	/**
		Seconds to sleep between requests. Maps to `--sleep-requests SEC`.
	**/
	@:optional
	var sleepRequests : Float;
	/**
		Seconds to sleep before each download. Maps to `--sleep-interval SEC`.
	**/
	@:optional
	var sleepInterval : Float;
	/**
		Max seconds to sleep. Maps to `--max-sleep-interval SEC`.
	**/
	@:optional
	var maxSleepInterval : Float;
	/**
		Seconds to sleep before subtitle download. Maps to `--sleep-subtitles SEC`.
	**/
	@:optional
	var sleepSubtitles : Float;
	/**
		Sort formats by given fields. Maps to `-S, --format-sort SORTORDER`.
	**/
	@:optional
	var formatSort : Array<String>;
	/**
		Force format sorting. Maps to `--format-sort-force`.
	**/
	@:optional
	var formatSortForce : Bool;
	/**
		Don't force format sorting. Maps to `--no-format-sort-force`.
	**/
	@:optional
	var noFormatSortForce : Bool;
	/**
		Preferred audio format (mp3, wav, etc.). Maps to `--audio-format FORMAT`.
	**/
	@:optional
	var audioFormat : String;
	/**
		Preferred video format. Maps to `--video-format FORMAT`.
	**/
	@:optional
	var videoFormat : String;
	/**
		Prefer free container formats. Maps to `--prefer-free-formats`.
	**/
	@:optional
	var preferFreeFormats : Bool;
	/**
		Don't prefer free formats. Maps to `--no-prefer-free-formats`.
	**/
	@:optional
	var noPreferFreeFormats : Bool;
	/**
		Force keyframes at cuts. Maps to `--yt-dlp-force-keyframes`.
	**/
	@:optional
	var ytdlpForceKeyframes : Bool;
	/**
		Container for merging formats (mp4, mkv, etc.). Maps to `--merge-output-format FORMAT`.
	**/
	@:optional
	var mergeOutputFormat : String;
	/**
		Merge multiple video streams. Maps to `--video-multistreams`.
	**/
	@:optional
	var videoMultiStreams : Bool;
	/**
		Don't merge multiple video streams. Maps to `--no-video-multistreams`.
	**/
	@:optional
	var noVideoMultiStreams : Bool;
	/**
		Merge multiple audio streams. Maps to `--audio-multistreams`.
	**/
	@:optional
	var audioMultiStreams : Bool;
	/**
		Don't merge multiple audio streams. Maps to `--no-audio-multistreams`.
	**/
	@:optional
	var noAudioMultiStreams : Bool;
	/**
		Check that formats are downloadable. Maps to `--check-formats`.
	**/
	@:optional
	var checkFormats : Bool;
	/**
		Check all formats. Maps to `--check-all-formats`.
	**/
	@:optional
	var checkAllFormats : Bool;
	/**
		Don't check formats. Maps to `--no-check-formats`.
	**/
	@:optional
	var noCheckFormats : Bool;
	/**
		Write subtitle files. Maps to `--write-subs`.
	**/
	@:optional
	var writeSubs : Bool;
	/**
		Write auto-generated subtitle files. Maps to `--write-auto-subs`.
	**/
	@:optional
	var writeAutoSubs : Bool;
	/**
		Write all available subtitles. Maps to `--write-all-subs`.
	**/
	@:optional
	var writeAllSubs : Bool;
	/**
		Don't write subtitle files. Maps to `--no-write-subs`.
	**/
	@:optional
	var noWriteSubs : Bool;
	/**
		List available subtitles. Maps to `--list-subs`.
	**/
	@:optional
	var listSubs : Bool;
	/**
		Subtitle format (srt, vtt, ass, etc.). Maps to `--sub-format FORMAT`.
	**/
	@:optional
	var subFormat : String;
	/**
		Languages of subtitles to download. Maps to `--sub-langs LANGS`.
	**/
	@:optional
	var subLangs : Array<String>;
	/**
		Login password. Maps to `-p, --password PASSWORD`.
	**/
	@:optional
	var password : String;
	/**
		Two-factor auth code. Maps to `-2, --twofactor CODE`.
	**/
	@:optional
	var twoFactor : String;
	/**
		Use .netrc authentication. Maps to `-n, --netrc`.
	**/
	@:optional
	var netrc : Bool;
	/**
		Video password (vimeo, etc.). Maps to `--video-password PASSWORD`.
	**/
	@:optional
	var videoPassword : String;
	/**
		Location of .netrc file. Maps to `--netrc-location PATH`.
	**/
	@:optional
	var netrcLocation : String;
	/**
		Command to get netrc credentials. Maps to `--netrc-cmd COMMAND`.
	**/
	@:optional
	var netrcCmd : String;
	/**
		Client certificate file. Maps to `--client-certificate CERTFILE`.
	**/
	@:optional
	var clientCertificate : String;
	/**
		Client certificate key file. Maps to `--client-certificate-key KEYFILE`.
	**/
	@:optional
	var clientCertificateKey : String;
	/**
		Client certificate password. Maps to `--client-certificate-password PASSWORD`.
	**/
	@:optional
	var clientCertificatePassword : String;
	/**
		List available MSOs. Maps to `--ap-list-mso`.
	**/
	@:optional
	var apListMso : Bool;
	/**
		Adobe Pass MSO. Maps to `--ap-mso MSO`.
	**/
	@:optional
	var apMso : String;
	/**
		Adobe Pass username. Maps to `--ap-username USERNAME`.
	**/
	@:optional
	var apUsername : String;
	/**
		Adobe Pass password. Maps to `--ap-password PASSWORD`.
	**/
	@:optional
	var apPassword : String;
	/**
		Extract and save audio. Maps to `-x, --extract-audio`.
	**/
	@:optional
	var extractAudio : Bool;
	/**
		Audio quality (0-9 VBR or specific bitrate). Maps to `--audio-quality QUALITY`.
	**/
	@:optional
	var audioQuality : String;
	/**
		Remux video to another container. Maps to `--remux-video FORMAT`.
	**/
	@:optional
	var remuxVideo : String;
	/**
		Re-encode video to another format. Maps to `--recode-video FORMAT`.
	**/
	@:optional
	var recodeVideo : String;
	/**
		Additional args for post processors. Maps to `--postprocessor-args NAME:ARGS`.
	**/
	@:optional
	var postprocessorArgs : haxe.DynamicAccess<Array<String>>;
	/**
		Keep the original video. Maps to `-k, --keep-video`.
	**/
	@:optional
	var keepVideo : Bool;
	/**
		Delete the original video. Maps to `--no-keep-video`.
	**/
	@:optional
	var noKeepVideo : Bool;
	/**
		Overwrite post-processed files. Maps to `--post-overwrites`.
	**/
	@:optional
	var postOverwrites : Bool;
	/**
		Don't overwrite post-processed files. Maps to `--no-post-overwrites`.
	**/
	@:optional
	var noPostOverwrites : Bool;
	/**
		Embed subtitles in the video. Maps to `--embed-subs`.
	**/
	@:optional
	var embedSubs : Bool;
	/**
		Don't embed subtitles. Maps to `--no-embed-subs`.
	**/
	@:optional
	var noEmbedSubs : Bool;
	/**
		Embed thumbnail in the video. Maps to `--embed-thumbnail`.
	**/
	@:optional
	var embedThumbnail : Bool;
	/**
		Don't embed thumbnail. Maps to `--no-embed-thumbnail`.
	**/
	@:optional
	var noEmbedThumbnail : Bool;
	/**
		Embed metadata in the file. Maps to `--embed-metadata`.
	**/
	@:optional
	var embedMetadata : Bool;
	/**
		Don't embed metadata. Maps to `--no-embed-metadata`.
	**/
	@:optional
	var noEmbedMetadata : Bool;
	/**
		Embed chapters in the video. Maps to `--embed-chapters`.
	**/
	@:optional
	var embedChapters : Bool;
	/**
		Don't embed chapters. Maps to `--no-embed-chapters`.
	**/
	@:optional
	var noEmbedChapters : Bool;
	/**
		Embed info.json in video. Maps to `--embed-info-json`.
	**/
	@:optional
	var embedInfoJson : Bool;
	/**
		Don't embed info.json. Maps to `--no-embed-info-json`.
	**/
	@:optional
	var noEmbedInfoJson : Bool;
	/**
		Parse and modify metadata. Maps to `--parse-metadata FROM:TO`.
	**/
	@:optional
	var parseMetadata : haxe.DynamicAccess<String>;
	/**
		Replace text in a metadata field. Maps to `--replace-in-metadata FIELDS REGEX REPLACE`.
	**/
	@:optional
	var replaceInMetadata : haxe.DynamicAccess<ts.Tuple2<String, String>>;
	/**
		Write extended attributes. Maps to `--xattrs`.
	**/
	@:optional
	var xattrs : Bool;
	/**
		Concatenate playlist into a single file. Maps to `--concat-playlist POLICY`.
	**/
	@:optional
	var concatPlaylist : String;
	/**
		Fix file problems (never, warn, detect_or_warn, force). Maps to `--fixup POLICY`.
	**/
	@:optional
	var fixup : String;
	/**
		Location of FFmpeg binary. Maps to `--ffmpeg-location PATH`.
	**/
	@:optional
	var ffmpegLocation : String;
	/**
		Execute command on file. Maps to `--exec CMD`.
	**/
	@:optional
	var exec : String;
	/**
		Don't execute command. Maps to `--no-exec`.
	**/
	@:optional
	var noExec : Bool;
	/**
		Convert subtitles to format. Maps to `--convert-subs FORMAT`.
	**/
	@:optional
	var convertSubs : String;
	/**
		Split video by chapters. Maps to `--split-chapters`.
	**/
	@:optional
	var splitChapters : Bool;
	/**
		Don't split by chapters. Maps to `--no-split-chapters`.
	**/
	@:optional
	var noSplitChapters : Bool;
	/**
		Remove chapters matching regex. Maps to `--remove-chapters REGEX`.
	**/
	@:optional
	var removeChapters : String;
	/**
		Don't remove chapters. Maps to `--no-remove-chapters`.
	**/
	@:optional
	var noRemoveChapters : Bool;
	/**
		Force keyframes around chapters for accurate cuts. Maps to `--force-keyframes-at-cuts`.
	**/
	@:optional
	var forceKeyframesAtCuts : Bool;
	/**
		Don't force keyframes. Maps to `--no-force-keyframes-at-cuts`.
	**/
	@:optional
	var noForceKeyframesAtCuts : Bool;
	/**
		Enable a plugin-based postprocessor. Maps to `--use-postprocessor NAME`.
	**/
	@:optional
	var usePostProcessor : Array<String>;
	/**
		SponsorBlock categories to create chapters for.
		Available: sponsor, intro, outro, selfpromo, preview, filler, interaction, etc.
		Maps to `--sponsorblock-mark CATS`.
	**/
	@:optional
	var sponsorblockMark : Array<String>;
	/**
		SponsorBlock categories to remove from video.
		Available: sponsor, intro, outro, selfpromo, preview, filler, etc.
		Maps to `--sponsorblock-remove CATS`.
	**/
	@:optional
	var sponsorblockRemove : Array<String>;
	/**
		Template for SponsorBlock chapter titles. Maps to `--sponsorblock-chapter-title TEMPLATE`.
	**/
	@:optional
	var sponsorblockChapterTitle : String;
	/**
		Disable all SponsorBlock options. Maps to `--no-sponsorblock`.
	**/
	@:optional
	var noSponsorblock : Bool;
	/**
		SponsorBlock API URL. Maps to `--sponsorblock-api URL`.
	**/
	@:optional
	var sponsorblockApi : String;
	/**
		Pass arguments to specific extractors.
		Maps to `--extractor-args IE_KEY:ARGS`.
	**/
	@:optional
	var extractorArgs : haxe.DynamicAccess<Array<String>>;
	/**
		Don't process dynamic DASH manifests. Maps to `--ignore-dynamic-mpd`.
	**/
	@:optional
	var ignoreDynamicMpd : Bool;
	/**
		Don't split HLS at discontinuities. Maps to `--no-hls-split-discontinuity`.
	**/
	@:optional
	var noHlsSplitDiscontinuity : Bool;
	/**
		HTTP Referer header. Maps to `--referer URL`.
	**/
	@:optional
	var referer : String;
	/**
		Custom User-Agent header. Maps to `--user-agent UA`.
	**/
	@:optional
	var userAgent : String;
	/**
		Additional HTTP headers. Maps to `--headers FIELD:VALUE`.
	**/
	@:optional
	var headers : haxe.DynamicAccess<String>;
	/**
		List all available formats. Maps to `-F, --list-formats`.
	**/
	@:optional
	var listFormats : Bool;
	/**
		List all available thumbnails. Maps to `--list-thumbnails`.
	**/
	@:optional
	var listThumbnails : Bool;
	/**
		Additional yt-dlp options to append.
	**/
	@:optional
	var additionalOptions : Array<String>;
	/**
		Raw yt-dlp arguments (appended last).
	**/
	@:optional
	var rawArgs : Array<String>;
};