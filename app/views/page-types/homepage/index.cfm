<cfparam name="args.header_content"    type="string" editable="true" />
<cfparam name="args.left_sub_content"  type="string" editable="true" />
<cfparam name="args.right_sub_content" type="string" editable="true" />

<cfoutput>
	<div class="jumbotron">#args.header_content#</div>

	<div class="row marketing">
		<div class="col-lg-6">#args.left_sub_content#</div>

		<div class="col-lg-6">#args.right_sub_content#</div>
	</div>
</cfoutput>