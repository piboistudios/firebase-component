package firebase.component;

/**
	PUBLIC: A public component provides a set of public APIs to customers. A service namespace will be patched
	onto `firebase` namespace. Assume the component name is `test`, customers will be able
	to get the service by calling `firebase.test()` or `app.test()` where `app` is a `FirebaseApp` instance.
	
	PRIVATE: A private component provides a set of private APIs that are used internally by other
	Firebase SDKs. No serivce namespace is created in `firebase` namespace and customers have no way to get them.
**/
@:enum extern abstract ComponentType(String) from String to String {
	var PUBLIC = "PUBLIC";
	var PRIVATE = "PRIVATE";
	var VERSION = "VERSION";
}