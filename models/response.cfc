component 
displayname="response" 
output="false" 
persistent="true" 
table="responses"
{ 
    property name="responseid" generator="native" index="true" fieldtype="id" ormtype="int";
    property name="responseLabel" ormtype="string";
    property name="responseUUID" ormtype="string";    
    property name="responseType" ormtype="string";    
	property name="answers" fieldtype="one-to-many" cfc="answer" lazy="true" inverse="true" singularname="answer";
	property name="screener" fieldtype="many-to-one" fkcolumn="screenerID" cfc="screener" lazy="true";
	property name="respondent" fieldtype="many-to-one" fkcolumn="respondentID" cfc="respondent" lazy="true";
}
