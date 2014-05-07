component output=false {

	/* this is a dummy form field pre-processor to strip out rude words from input, NOT to be used as basically bogus! */

	private any function index( event, rc, prc, fieldName="", preProcessorArgs={} ) output=false {
		var rudeWordsRegex = "gosh|blimey|crumbs";
		var replaceWith    = "##@*!";

		return ReReplaceNoCase( ( rc[ fieldname ] ?: "" ), rudeWordsRegex, replaceWith, "all" );
	}

}