component extends="preside.system.config.Config" output=false {

	public void function configure() output=false {
		super.configure();

		settings.preside_admin_path         = "sample_admin";
		settings.dsn                        = "sample_dsn";
		settings.system_user                = "sysadmin";
		settings.default_locale             = "en";
		settings.default_log_name           = "sample_app";
		settings.default_log_level          = "information";
		settings.sql_log_name               = "sample_app_sql";
		settings.sql_log_level              = "information";
	}
}