<cfscript>
	title  = args.title  ?: 'Latest posts';
	posts  = renderPresideObjectView(
		  object  = "blog_post"
		, view    = "widget-item"
		, orderBy = "publish_date desc"
		, maxRows = Val( args.max_posts ?: 3 )
		, filter  = removeEmptyStructKeys( {
			  "blog"                   = args.blog     ?: ""
			, "author"                 = args.author   ?: ""
			, "blog_category.id"   = args.category ?: ""
		} )
	);
</cfscript>

<cfoutput>
	<h2>#title#</h2>
	<cfif Len( posts )>
		<ul>#posts#</ul>
	<cfelse>
		<p><em>No posts to show</em></p>
	</cfif>
</cfoutput>