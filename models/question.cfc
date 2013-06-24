component 
displayname="question" 
output="false" 
persistent="true" 
table="questions"
{ 
    property name="questionid" generator="native" index="true" fieldtype="id" ormtype="int";
    property name="questionLabel" ormtype="string";
    property name="questionUUID" ormtype="string";    
    property name="questionType" ormtype="string"; 
    property name="master" ormtype="string";    
	property name="options" fieldtype="one-to-many" cfc="option" lazy="true" inverse="true" singularname="option";
	property name="requirements" fieldtype="one-to-many" cfc="requirement" lazy="true" inverse="true" singularname="requirement";
	property name="screener" fieldtype="many-to-one" fkcolumn="screenerID" cfc="screener" lazy="true";
}
