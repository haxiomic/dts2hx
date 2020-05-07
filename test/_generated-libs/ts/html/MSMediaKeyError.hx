package ts.html;
@:native("MSMediaKeyError") extern class MSMediaKeyError {
	function new();
	final code : Float;
	final systemCode : Float;
	final MS_MEDIA_KEYERR_CLIENT : Float;
	final MS_MEDIA_KEYERR_DOMAIN : Float;
	final MS_MEDIA_KEYERR_HARDWARECHANGE : Float;
	final MS_MEDIA_KEYERR_OUTPUT : Float;
	final MS_MEDIA_KEYERR_SERVICE : Float;
	final MS_MEDIA_KEYERR_UNKNOWN : Float;
	static var prototype : MSMediaKeyError;
	@:native("MS_MEDIA_KEYERR_CLIENT")
	static final MS_MEDIA_KEYERR_CLIENT_ : Float;
	@:native("MS_MEDIA_KEYERR_DOMAIN")
	static final MS_MEDIA_KEYERR_DOMAIN_ : Float;
	@:native("MS_MEDIA_KEYERR_HARDWARECHANGE")
	static final MS_MEDIA_KEYERR_HARDWARECHANGE_ : Float;
	@:native("MS_MEDIA_KEYERR_OUTPUT")
	static final MS_MEDIA_KEYERR_OUTPUT_ : Float;
	@:native("MS_MEDIA_KEYERR_SERVICE")
	static final MS_MEDIA_KEYERR_SERVICE_ : Float;
	@:native("MS_MEDIA_KEYERR_UNKNOWN")
	static final MS_MEDIA_KEYERR_UNKNOWN_ : Float;
}