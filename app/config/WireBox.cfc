component extends="preside.system.config.WireBox" output=false {

	public void function configure() output=false {
		super.configure();

		map( "blogsService" )
			.to( "app.services.BlogsService" )
			.parent( "baseService" )
			.asSingleton()
			.noAutowire();
	}

}