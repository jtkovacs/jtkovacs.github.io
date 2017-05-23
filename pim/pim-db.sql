CREATE TABLE `OrgNeed` (
  `NeedID` Auto,
  `Need` Text,
  PRIMARY KEY (`NeedID`)
);

CREATE TABLE `Field` (
  `FieldID` Auto,
  `Field` Text,
  PRIMARY KEY (`FieldID`)
);

CREATE TABLE `Title` (
  `TitleID` Auto,
  `FieldID` Int,
  `Title` Text,
  PRIMARY KEY (`TitleID`),
  KEY `FK` (`FieldID`)
);

CREATE TABLE `Skill` (
  `SkillID` Auto,
  `Skill` Text,
  PRIMARY KEY (`SkillID`)
);

CREATE TABLE `Resource` (
  `ResourceID` Auto,
  `URL` Text,
  `Status` List,
  `Type` List,
  PRIMARY KEY (`ResourceID`)
);

CREATE TABLE `Tool` (
  `ToolID` Auto,
  `Tool` Text,
  PRIMARY KEY (`ToolID`)
);

CREATE TABLE `Technique` (
  `TechniqueID` Auto,
  `Technique` Text,
  PRIMARY KEY (`TechniqueID`)
);

CREATE TABLE `NeedField` (
  `FieldID` Int,
  `NeedID` Int,
  KEY `PK, FK` (`FieldID`, `NeedID`)
);

CREATE TABLE `SkillField` (
  `FieldID` Int,
  `SkillID` Int,
  KEY `PK, FK` (`FieldID`, `SkillID`)
);

CREATE TABLE `NeedSkill` (
  `SkillID` Int,
  `NeedID` Int,
  KEY `PK, FK` (`SkillID`, `NeedID`)
);

CREATE TABLE `ToolSkill` (
  `SkillID` Int,
  `ToolID` Int,
  KEY `PK, FK` (`SkillID`, `ToolID`)
);

CREATE TABLE `TechniqueSkill` (
  `SkillID` Int,
  `TechniqueID` Int,
  KEY `PK, FK` (`SkillID`, `TechniqueID`)
);

CREATE TABLE `ResourceSkill` (
  `SkillID` Int,
  `ResourceID` Int,
  KEY `PK, FK` (`SkillID`, `ResourceID`)
);

CREATE TABLE `ToolTechnique` (
  `TooliD` Int,
  `TechniqueID` Int,
  KEY `PK, FK` (`TooliD`, `TechniqueID`)
);

CREATE TABLE `ResourceTool` (
  `ToolID` Int,
  `ResourceID` Int,
  KEY `PK, FK` (`ToolID`, `ResourceID`)
);

CREATE TABLE `ResourceTechnique` (
  `TechniqueID` Int,
  `ResourceID` Int,
  KEY `PK, FK` (`TechniqueID`, `ResourceID`)
);
