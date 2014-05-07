<cfparam name="args.title"  type="string" field="blog_post.label" />
<cfparam name="args.author" type="string" field="blog_author.label" />

<cfoutput>
	<li>"#args.title#" by #args.author#</li>
</cfoutput>