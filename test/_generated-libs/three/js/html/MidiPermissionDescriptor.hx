package js.html;
extern interface MidiPermissionDescriptor extends PermissionDescriptor {
	var name : String;
	@:optional
	var sysex : Bool;
}