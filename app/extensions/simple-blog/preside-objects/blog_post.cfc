component output=false datamanagergroup="blogs" {
	property name="slug"         type="string"  dbtype="varchar"  maxLength="50"   required="true"  uniqueindexes="slug|2" format="slug";
	property name="teaser"       type="string"  dbtype="varchar"  maxLength="200"  required="false";
	property name="body"         type="string"  dbtype="longtext" maxLength="0"    required="false";
	property name="published"    type="boolean" dbtype="boolean"   required="false" default="false";
	property name="publish_date" type="date"    dbtype="timestamp" required="false";

	property name="blog"       relationship="many-to-one"  relatedTo="blog"          required="true" uniqueindexes="slug|1";
	property name="author"     relationship="many-to-one"  relatedTo="blog_author"   required="true";
	property name="categories" relationship="many-to-many" relatedTo="blog_category" required="false" dbtype="none";
}