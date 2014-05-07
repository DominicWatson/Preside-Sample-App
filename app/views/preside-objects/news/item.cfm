<cfparam name="args.title"       type="string" field="news.label" />
<cfparam name="args.publish_date"  type="string" />
<cfparam name="args.description" type="string" />





<cfoutput>
	<li class="news">
		<h3>#args.title#</h3>
		<p class="date">
			#DateFormat( args.publish_date, "d mmmm" )#
		</p>
		<p class="description">
		#renderPresideObjectProperty( object="news", property="description", data=args.description )#
		</p>
	</li>
</cfoutput>