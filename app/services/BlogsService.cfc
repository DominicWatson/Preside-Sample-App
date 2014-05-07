component output=false extends="preside.system.base.Service" {

	public query function getBlog( required string blogId ) output=false {
		return getPresideObject( "blog" ).selectData( filter={id = arguments.blogId } );
	}

	public query function getBlogPosts( required string blog, boolean publishedOnly=false ) output=false {
		var filter = { blog = arguments.blog };
		if ( publishedOnly ) {
			filter[ "published" ] = 1;
		}

		return getPresideObject( "blog_post" ).selectData(
			  selectFields = [ "slug", "teaser", "label as title" ]
			, filter       = filter
		);
	}

	public query function getPost( required string slug, boolean publishedOnly=false ) output=false {
		var filter = { slug = arguments.slug };
		if ( publishedOnly ) {
			filter[ "published" ] = 1;
		}

		return getPresideObject( "blog_post" ).selectData(
			  selectFields = [ "id", "teaser", "body", "label as title" ]
			, filter       = filter
		);
	}

}