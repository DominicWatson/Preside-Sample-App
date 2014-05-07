component output=false datamanagergroup="events" datamanagergridfields="label,event_category,start_date,end_date" {
	property name="event_category" relationship="many-to-one" required="true";
	property name="start_date" type="date" dbtype="date" required="true";
	property name="end_date" type="date" dbtype="date" required="true";
	property name="description" type="string" dbtype="text" required="false";
	property name="max_attendees" type="numeric" dbtype="int" required="false" default="100" maxValue="10000" step="10";
}