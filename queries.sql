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
	COUNT("Medal") as "Medal Awards", 
	"Sex"
FROM US
WHERE "Medal" IS NOT NULL
GROUP BY("Sex")


SELECT COUNT("Medal"),
	sum(case when "Sex" = M then 1 else 0 end) Male,
  	sum(case when "Sex" = F then 1 else 0 end) Female
from us
group by Sex

-- Create a table with Event, Medal, Games, Region


-- Create a table with Most Medal events

select * from us

SELECT SUM(CASE WHEN Type = 'Blue' THEN 1 ELSE 0 END) AS Blue, 
SUM(CASE WHEN Type = 'Red' THEN 1 ELSE 0 END) AS Red FROM TABLE











SELECT ("Event"), COUNT(*) 
FROM us 
GROUP BY "Event"
ORDER BY "Event" Asc,

