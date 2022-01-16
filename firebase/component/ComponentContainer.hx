package firebase.component;

/**
	ComponentContainer that provides Providers for service name T, e.g. `auth`, `auth-internal`
**/
@:jsRequire("@firebase/component", "ComponentContainer") extern class ComponentContainer {
	function new(name:String);
	private final name : Dynamic;
	private final providers : Dynamic;
	function addComponent<T>(component:Component<T>):Void;
	function addOrOverwriteComponent<T>(component:Component<T>):Void;
	/**
		getProvider provides a type safe interface where it can only be called with a field name
		present in NameServiceMapping interface.
		
		Firebase SDKs providing services should extend NameServiceMapping interface to register
		themselves.
	**/
	function getProvider<T>(name:T):Provider<T>;
	function getProviders():Array<Provider<Any>>;
	static var prototype : ComponentContainer;
}