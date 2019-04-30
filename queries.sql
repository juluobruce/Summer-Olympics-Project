-- creating data bases for 5 diff countries 

DROP TABLE us;

CREATE TABLE us (
	"ID" INT NOT NULL,
	"Name" VARCHAR(250) NOT NULL,
	"Sex" VARCHAR(250) NOT NULL, 
	"Age" FLOAT,
	"Team" VARCHAR(250) NOT NULL,
	"Games" VARCHAR(250) NOT NULL,
	"Year" FLOAT NOT NULL,
	"Season" VARCHAR(250) NOT NULL,
	"City" VARCHAR(250) NOT NULL,
	"Sport" VARCHAR(250) NOT NULL,
	"Event" VARCHAR(250) NOT NULL,
	"Medal" VARCHAR(250),
	"region" VARCHAR (250) NOT NULL	
);


DROP TABLE germany;

CREATE TABLE germany (
	"ID" INT NOT NULL,
	"Name" VARCHAR(250) NOT NULL,
	"Sex" VARCHAR(250) NOT NULL, 
	"Age" FLOAT,
	"Team" VARCHAR(250) NOT NULL,
	"Games" VARCHAR(250) NOT NULL,
	"Year" FLOAT NOT NULL,
	"Season" VARCHAR(250) NOT NULL,
	"City" VARCHAR(250) NOT NULL,
	"Sport" VARCHAR(250) NOT NULL,
	"Event" VARCHAR(250) NOT NULL,
	"Medal" VARCHAR(250),
	"region" VARCHAR (250) NOT NULL	
);

DROP TABLE uk;

CREATE TABLE uk (
	"ID" INT NOT NULL,
	"Name" VARCHAR(250) NOT NULL,
	"Sex" VARCHAR(250) NOT NULL, 
	"Age" FLOAT,
	"Team" VARCHAR(250) NOT NULL,
	"Games" VARCHAR(250) NOT NULL,
	"Year" FLOAT NOT NULL,
	"Season" VARCHAR(250) NOT NULL,
	"City" VARCHAR(250) NOT NULL,
	"Sport" VARCHAR(250) NOT NULL,
	"Event" VARCHAR(250) NOT NULL,
	"Medal" VARCHAR(250),
	"region" VARCHAR (250) NOT NULL	
);


DROP TABLE france;

CREATE TABLE france (
	"ID" INT NOT NULL,
	"Name" VARCHAR(250) NOT NULL,
	"Sex" VARCHAR(250) NOT NULL, 
	"Age" FLOAT,
	"Team" VARCHAR(250) NOT NULL,
	"Games" VARCHAR(250) NOT NULL,
	"Year" FLOAT NOT NULL,
	"Season" VARCHAR(250) NOT NULL,
	"City" VARCHAR(250) NOT NULL,
	"Sport" VARCHAR(250) NOT NULL,
	"Event" VARCHAR(250) NOT NULL,
	"Medal" VARCHAR(250),
	"region" VARCHAR (250) NOT NULL	
);


DROP TABLE russia;

CREATE TABLE russia (
	"ID" INT NOT NULL,
	"Name" VARCHAR(250) NOT NULL,
	"Sex" VARCHAR(250) NOT NULL, 
	"Age" FLOAT,
	"Team" VARCHAR(250) NOT NULL,
	"Games" VARCHAR(250) NOT NULL,
	"Year" FLOAT NOT NULL,
	"Season" VARCHAR(250) NOT NULL,
	"City" VARCHAR(250) NOT NULL,
	"Sport" VARCHAR(250) NOT NULL,
	"Event" VARCHAR(250) NOT NULL,
	"Medal" VARCHAR(250),
	"region" VARCHAR (250) NOT NULL	
);


SELECT * FROM us;

-- Counting total of medalist, not including empty values 

SELECT COUNT("Medal") 
FROM US
WHERE "Medal" IS NOT NULL;

SELECT COUNT("Medal") 
FROM germany
WHERE "Medal" IS NOT NULL;

SELECT COUNT("Medal") 
FROM France
WHERE "Medal" IS NOT NULL;

SELECT COUNT("Medal") 
FROM UK
WHERE "Medal" IS NOT NULL;

SELECT COUNT("Medal") 
FROM russia
WHERE "Medal" IS NOT NULL;

-- US: 1080, Russia: 374 Germany: 365, UK: 338 France: 115, 

-- Medal Count By Sex 

Select * from us

SELECT 
	"Sex",
	COUNT("Medal") as "Medal Awards" 
FROM US
WHERE "Medal" IS NOT NULL
GROUP BY("Sex")




-- Create a table with Most Medal events (US)
SELECT 
	"Event",
	COUNT("Medal") as "Medal Awards" 
FROM US
WHERE "Medal" IS NOT NULL
GROUP BY("Event") 
ORDER BY("Medal Awards") DESC


-- Create a table with Event, Medal, Games, Region


select * from us

Select "Event",
"Games",
"region",
"Medal"
from US
Where "Medal"='Gold'




