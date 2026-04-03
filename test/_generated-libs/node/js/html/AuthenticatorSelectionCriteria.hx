package js.html;

typedef AuthenticatorSelectionCriteria = {
	@:optional
	var authenticatorAttachment : AuthenticatorAttachment;
	@:optional
	var requireResidentKey : Bool;
	@:optional
	var residentKey : ResidentKeyRequirement;
	@:optional
	var userVerification : UserVerificationRequirement;
};