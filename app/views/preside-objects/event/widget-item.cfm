<cfparam name="args.title"       type="string" field="event.label" />
<cfparam name="args.start_date"  type="string" />
<cfparam name="args.end_date"    type="string" />
<cfparam name="args.description" type="string" />

<cfoutput>
	<li class="event">
		<h3>#args.title#</h3>
		<p class="date">
			#DateFormat( args.start_date, "d mmmm" )#
			<cfif DateDiff( "d", args.start_date, args.end_date )>
				&ndash; #DateFormat( args.end_date, "d mmmm" )#
			</cfif>
		</p>
		<p class="description">#args.description#</p>
	</li>
</cfoutput>