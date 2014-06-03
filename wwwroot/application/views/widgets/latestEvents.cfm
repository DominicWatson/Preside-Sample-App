<cfscript>
	title  = args.title  ?: 'Latest events';
	events = renderPresideObjectView(
		  object  = "event"
		, view    = "widget-item"
		, orderBy = "start_date desc"
		, maxRows = Val( args.max_events ?: 3 )
		, filter  = Len( Trim( args.event_category ?: "" ) ) ? { event_category = args.event_category } : {}
	);
</cfscript>

<cfoutput>
	<h2>#title#</h2>
	<cfif Len( Trim( events ) )>
		<ul class="list-unstyled">#events#</ul>
	<cfelse>
		<p><em>No events to show</em></p>
	</cfif>
</cfoutput>