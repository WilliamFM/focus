component 
displayname="option" 
output="false" 
persistent="true" 
table="options"
{ 
    property name="optionid" generator="native" index="true" fieldtype="id" ormtype="int";
    property name="optionLabel" ormtype="string";
    property name="optionValue" ormtype="string";
    property name="optionUUID" ormtype="string";    
    property name="optionType" ormtype="string";    
	property name="question" fieldtype="many-to-one" fkcolumn="questionID" cfc="question" lazy="true";
}
