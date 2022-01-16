package firebase.component;

@:enum extern abstract InstantiationMode(String) from String to String {
	var LAZY = "LAZY";
	var EAGER = "EAGER";
	var EXPLICIT = "EXPLICIT";
}