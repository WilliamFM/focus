component 
displayname="requirement" 
output="false" 
persistent="true" 
table="requirements"
{ 
    property name="requirementID" generator="native" index="true" fieldtype="id" ormtype="int";
    property name="requirementLabel" ormtype="string";
    property name="requirementValue" ormtype="string";
    property name="requirementUUID" ormtype="string";    
    property name="requirementType" ormtype="string";    
	property name="question" fieldtype="many-to-one" fkcolumn="questionID" cfc="question" lazy="true";
}
