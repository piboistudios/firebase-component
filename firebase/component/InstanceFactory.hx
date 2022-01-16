package firebase.component;

/**
	Factory to create an instance of type T, given a ComponentContainer.
	ComponentContainer is the IOC container that provides {@link Provider}
	for dependencies.
	
	NOTE: The container only provides {@link Provider} rather than the actual instances of dependencies.
	It is useful for lazily loaded dependencies and optional dependencies.
**/
typedef InstanceFactory<T> = (container:ComponentContainer, options:InstanceFactoryOptions) -> Dynamic;