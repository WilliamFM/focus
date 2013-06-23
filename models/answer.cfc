component 
displayname="answer" 
output="false" 
persistent="true" 
table="answers"
{ 
    property name="answerid" generator="native" index="true" fieldtype="id" ormtype="int";
    property name="answerLabel" ormtype="string";
    property name="answerValue" ormtype="string";
    property name="answerUUID" ormtype="string";    
    property name="answerType" ormtype="string";    
	property name="question" fieldtype="many-to-one" fkcolumn="questionID" cfc="question" lazy="true";
	property name="response" fieldtype="many-to-one" fkcolumn="responseID" cfc="response" lazy="true";
	property name="respondent" fieldtype="many-to-one" fkcolumn="respondentID" cfc="respondent" lazy="true";
}
