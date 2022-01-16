package firebase.component;

/**
	Provider for instance for service name T, e.g. 'auth', 'auth-internal'
	NameServiceMapping[T] is an alias for the type of the instance
**/
@:jsRequire("@firebase/component", "Provider") extern class Provider<T> {
	function new(name:T, container:ComponentContainer);
	private final name : Dynamic;
	private final container : Dynamic;
	private var component : Dynamic;
	private final instances : Dynamic;
	private final instancesDeferred : Dynamic;
	private final instancesOptions : Dynamic;
	private var onInitCallbacks : Dynamic;
	function get(?identifier:String):js.lib.Promise<Dynamic>;
	@:overload(function(?options:{ @:optional var identifier : String; @:optional var optional : Bool; }):Dynamic { })
	function getImmediate(options:{ @:optional var identifier : String; var optional : Bool; }):Null<Dynamic>;
	function getComponent():Null<Component<T>>;
	function setComponent(component:Component<T>):Void;
	function clearInstance(?identifier:String):Void;
	function delete():js.lib.Promise<ts.Undefined>;
	function isComponentSet():Bool;
	function isInitialized(?identifier:String):Bool;
	function getOptions(?identifier:String):{ };
	function initialize(?opts:InstanceFactoryOptions):Dynamic;
	function onInit(callback:firebase.component.dist.src.types.OnInitCallBack<T>, ?identifier:String):() -> Void;
	/**
		Invoke onInit callbacks synchronously
	**/
	private var invokeOnInitCallbacks : Dynamic;
	private var getOrInitializeService : Dynamic;
	private var normalizeInstanceIdentifier : Dynamic;
	private var shouldAutoInitialize : Dynamic;
	static var prototype : Provider<Dynamic>;
}