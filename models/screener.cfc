component 
displayname="screener" 
output="false" 
persistent="true" 
table="screeners"
{ 
    property name="screenerid" generator="native" index="true" fieldtype="id" ormtype="int";
    property name="screenerName" ormtype="string";
    property name="screenerUUID" ormtype="string";
	property name="questions" fieldtype="one-to-many" cfc="question" lazy="true" inverse="true" singularname="question";

	property name="responses" fieldtype="one-to-many" cfc="response" lazy="true" inverse="true" singularname="response";

}
