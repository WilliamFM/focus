component 
displayname="respondent" 
output="false" 
persistent="true" 
table="respondents"
{ 
    property name="respondentID" generator="native" index="true" fieldtype="id" ormtype="int";
    property name="respondentUUID" ormtype="string";    
    property name="respondentType" ormtype="string";
	property name="responses" fieldtype="one-to-many" cfc="response" lazy="true" inverse="true" singularname="response";
	property name="answers" fieldtype="one-to-many" cfc="answer" lazy="true" inverse="true" singularname="answer";
}