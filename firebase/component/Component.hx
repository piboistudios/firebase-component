package firebase.component;

/**
	Component for service name T, e.g. `auth`, `auth-internal`
**/
@:jsRequire("@firebase/component", "Component") extern class Component<T> {
	function new(name:T, instanceFactory:InstanceFactory<T>, type:ComponentType);
	final name : T;
	function instanceFactory(container:ComponentContainer, options:InstanceFactoryOptions):Dynamic;
	final type : ComponentType;
	var multipleInstances : Bool;
	/**
		Properties to be added to the service namespace
	**/
	var serviceProps : firebase.component.dist.src.types.Dictionary;
	var instantiationMode : InstantiationMode;
	@:optional
	dynamic function onInstanceCreated(container:ComponentContainer, instanceIdentifier:String, instance:Dynamic):Void;
	function setInstantiationMode(mode:InstantiationMode):Component<T>;
	function setMultipleInstances(multipleInstances:Bool):Component<T>;
	function setServiceProps(props:firebase.component.dist.src.types.Dictionary):Component<T>;
	function setInstanceCreatedCallback(callback:firebase.component.dist.src.types.OnInstanceCreatedCallback<T>):Component<T>;
	static var prototype : Component<Dynamic>;
}