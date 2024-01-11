-- # DIALECT: PostgreSQL

-- Message from original author:
    -- When you run this database and get an error saying
    -- (Msg 2714, Level 16, State 6, Line 6 There is already an object named 'president' in the database.)
    -- Please run the DROPPR.sql query and re run this query and it should work.
    -- Thanks !

CREATE TABLE president
(president_num char(2) PRIMARY KEY,
president_birthdate varchar(20),
president_birthplace varchar(20),
president_firstname char(80),
president_lastname char(80),
president_yearofnomination char(80),
president_lastyearinoffice char(80),
president_education char(80),
president_politicalparty char(80),
president_deathdate char(80),
firstlady_num varchar(2), -- Relationship with the first lady table.
vicepresident_num varchar(3), -- Relationship with the vice president table.
pres_petnum varchar(4), -- Relationship with the president library table.
president_libID varchar(3)); -- Relationship with the president pets table.

CREATE TABLE firstlady
(firstlady_num varchar(2) PRIMARY KEY, -- Also in the president's table to show relationship.
firstlady_firstname char(40),
firstlady_lastname char(40),
firstlady_birthplace char(60),
firstlady_interstingfact varchar(8000));

CREATE TABLE vicepresident
(vicepresident_num varchar(3) PRIMARY KEY,  -- Also in the president's table to show relationship.
vicepresident_firstname char(40),
vicepresident_lastname char(40),
vicepresident_birthplace char(40),
vicepresident_yearinoffice char(40),
vicepresident_lastyearinoffice char(40));

CREATE TABLE president_presidentiallibrary 
(president_libID varchar(3) PRIMARY KEY, -- I didn't use this in the president table because not all presidents have library only a few. And I wanted to avoid having too many null columns.
president_libname varchar(8000),
president_libstate varchar(10),
president_libcity char(80),
president_yearopened char(80)); -- I made a relationship with the president table using presi num.

CREATE TABLE president_pets
(pres_petnum varchar(4) PRIMARY KEY,  -- Also in the president's table to show relation ship.
prespet_name char(80),
prespet_type char(80));


-- Define: UNITED STATES PRESIDENTS
    
INSERT INTO president(president_num, president_birthdate, president_birthplace, president_firstname, president_lastname, president_yearofnomination, president_lastyearinoffice, president_education, president_politicalparty, president_deathdate, firstlady_num, vicepresident_num, pres_petnum, president_libID)
VALUES
    ('01', 'February 22, 1732','VA','George','Washington','1789','1797',NULL,'Unaffiliated','1799','55','101','1001','301'),
    ('02', 'October 30, 1735','MA','John','Adams','1797','1801','Harvard University','Federalist','1826','56','102','1002','302'),
    ('03', 'April 13, 1743','VA','Thomas','Jefferson','1801','1809','The College of William & Mary','Democratic-Republican','1826','57','103','1003','303'),
    ('04', 'March 16, 1751','VA','James','Madison','1809','1817','Princeton University','Democratic-Republican','1836','58','104','1004','304'),
    ('05', 'April 28, 1758','VA','James','Monroe','1817','1825','The College of William & Mary','Democratic-Republican','1831','59','105','1005','305'),
    ('06', 'July 11, 1767','MA','John','Q. Adams','1825','1829','Harvard University','Democratic-Republican','1848','60','106','1006','306'),
    ('07', 'March 15, 1767','SC','Andrew','Jackson','1829','1837','University of Nashville','Democratic','1845','61','107','1007','307'),
    ('08', 'December 5, 1782','VA','Martin','V. Buren','1837','1841','University of the State of New York','Democratic','1862','62','108','1008','308'),
    ('09', 'February 9, 1773','VA','William','H. Harrison','1841','1841','Hampden–Sydney College','Whig','1841','63','109','1009','309'),
    ('10', 'March 29, 1790','VA','John','Tyler','1841','1845','The College of William & Mary','Whig','1862','64','110','1010','310'),
    ('11', 'November 2, 1795','NC','James','K. Polk','1845','1849','University of North Carolina at Chapel Hill','Democratic','1849','65','111','1110','311'),
    ('12', 'November 24, 1784','VA','Zachary','Taylor','1849','1850',NULL,'Whig','1850','66','112','1011','312'),
    ('13', 'January 7, 1800','NY','Millard','Fillmore','1850','1853',NULL,'Whig','1874','67','113','1012','313'),
    ('14', 'November 23, 1804','NH','Franklin','Pierce','1853','1857','Bowdoin College','Democratic','1869','68','114','1013','314'),
    ('15', 'April 23, 1791','PA','James','Buchanan','1857','1861','Dickinson College','Democratic','1868','69','115','1113','315'),
    ('16', 'February 12, 1809','KY','Abraham','Lincoln','1861','1865',NULL,'Republican','1865','70','116','1014','316'),
    ('17', 'December 29, 1808','NC','Andrew','Johnson','1865','1869',NULL,'National Union & Democratic','1875','71','117','1015','317'),
    ('18', 'April 27, 1822','OH','Ulysses','S. Grant','1869','1877','United States Military Academy','Republican','1885','72','118','1016','318'),
    ('19', 'October 4, 1822','OH','Rutherford B.','Hayes','1877','1881','AKenyon College','Republican','1893','73','119','1116','319'),
    ('20', 'November 19, 1831','OH','James','A. Garfield','1881','1881','Williams College','Republican','1881','74','120','1018','320'),
    ('21', 'October 5, 1829','VT','Chester A.','Arthur','1881','1885','Union College','Republican','1886','75','121','1019','321'),
    ('22', 'March 18, 1837','NJ','Grover','Cleveland','1885','1889',NULL,'Democratic','1908','76','122','1020','322'),
    ('23', 'August 20, 1833','OH','Benjamin','Harrison','1889','1893','Miami University','Republican','1901','77','123','1021','323'),
    ('24', 'March 18, 1837','NJ','Grover','Cleveland','1893','1897','Princeton University','Democratic','1908','78','124',NULL,'324'),
    ('25', 'January 29, 1843','OH','William','McKinley','1897','1901','American University','Republican','1901','79','125','1022','325'),
    ('26', 'October 27, 1858','NY','Theodore','Roosevelt','1901','1909','Harvard University','Republican','1919','80','126','1023','326'),
    ('27', 'September 15, 1857','OH','William','H. Taft','1909','1913','Yale University','Republican','1930','81','127','1024','327'),
    ('28', 'December 28, 1856','VA','Woodrow','Wilson','1913','1921','Princeton University','Democratic','1924','82','128','1025','328'),
    ('29', 'November 2, 1865','OH','Warren','G. Harding','1921','1923','Ohio Central College','Republican','1923','83','129','1026','329'),
    ('30', 'July 4, 1872','VT','Calvin','Coolidge','1923','1929','Amherst College','Republican','1933','84','130','1027','330'),
    ('31', 'August 10, 1874','IA','Herbert','Hoover','1929','1933','Stanford University','Republican','1964','85','131','1028','331'),
    ('32', 'January 30, 1882','NY','Franklin','D. Roosevelt','1933','1945','Harvard University','Democratic','1945','86','132','1029','332'),
    ('33', 'May 8, 1884','MO','Harry','S. Truman','1945','1953','Yale University','Democratic','1972','87','133','1030','333'),
    ('34', 'October 14, 1890','TX','Dwight','D. Eisenhower','1953','1961','Eisenhower College','Republican','1969','88','134','1031','334'),
    ('35', 'May 29, 1917','MA','John','F. Kennedy','1961','1963','Harvard University','Democratic','1963','89','135','1032','335'),
    ('36', 'August 27, 1908','VA','Lyndon','B. Johnson','1963','1969','Texas State University','Democratic','1973','90','136','1034','336'),
    ('37', 'January 9, 1913','CA','Richard','Nixon','1969','1974','Whittier College','Republican','1994','91','137','1035','337'),
    ('38', 'July 14, 1913','NE','Gerald','Ford','1974','1977','University of Michigan Law School','Republican','2006','92','138','1036','338'),
    ('39', 'October 1, 1924','GA','Jimmy','Carter','1977','1981','Union College ','Democratic',NULL,'93','139','1037','339'),
    ('40', 'February 6, 1911','IL','Ronald','Reagan','1981','1989','Eureka College','Republican','2004','94','140','1038','340'),
    ('41', 'June 12, 1924','MA','George','H.W. Bush','1989','1993','Yale University','Republican',NULL,'95','141','1039','341'),
    ('42', 'August 19, 1946','AR','Bill','Clinton','1993','2001','Georgetown University','Democratic',NULL,'96','142','1040','342'),
    ('43', 'July 6, 1946','CT','George','W. Bush','2001','2009','Yale University','Republican',NULL,'97','143','1041','343'),
    ('44', 'August 4, 1961','HI','Barack','Obama','2009','2017','Harvard Law School','Democratic',NULL,'98','144','1042','344'),
    ('45', 'June 14, 1946','NY','Donald','Trump','2017',NULL,'Wharton School of the University of Pennsylvania','Republican',NULL,'99','145','1043','345');

-- Define: UNITED STATES PRESIDENTS' WIVES

INSERT INTO firstlady (firstlady_num, firstlady_firstname, firstlady_lastname, firstlady_birthplace, firstlady_interstingfact)
VALUES
    ('55','Martha','Dandridge','VA','Also known as Lady Washington.'),
    ('56','Abigail','Smith','MA','First to be wife and the mother of a president.'),
    ('57','Martha','Jefferson','VA','First to give birth in the white house.'),
    ('58','Dolley','Payne','NC','First American to respond to a telegraph.'),
    ('59','Elizabeth','Kortright','NY','Known to be very charming and elegant woman.'),
    ('60','Louisa','Johnson','London','The very first lady to be born in a foreign country.'),
    ('61','Sarah','Jackson','PA','She was born in Philadelphia!'),
    ('62','Sarah','Van Buren','SC','Youngest women ever to be a first lady.'),
    ('63','Anna','Harrison','NJ','Oldest woman ever to become First Lady.'),
    ('64','Letitia','Tyler','VA','Known to be selfless and devoted to her family.'),
    ('65','Sarah','Polk','TN','First met James when she was 12.'),
    ('66','Margaret','taylor','MD','Recalled to be reclusive and not very social.'),
    ('67','Abigail','Fillmore','NY','Remembered to be witty and very educated.'),
    ('68','Jane','M. Pierce','NH','Did not like being a first lady.'),
    ('69','Harriet','R. Buchanan','PA','She built a hospital to help children in need.'),
    ('70','Mary','Lincoln','KY','Often visited wounded soldiers to comfort them.'),
    ('71','Eliza','Johnson','TN','Taught her husband how to write.'),
    ('72','Julia','Grant','MO','The first lady to be recorded on film.'),
    ('73','Lucy','Hayes','OH','Was an advocate for African Americans.'),
    ('74','Lucretia','Garfield','OH','She was a school teacher.'),
    ('75','Mary','Arthur','NY','Was supportive of civil rights for Afro Americans.'),
    ('76','Rose','Cleveland','NY','She was an intellectual and enjoyed lecturing.'),
    ('77','Caroline','Harrison','OH','Known for her elegant white house receptions.'),
    ('78','Frances','Cleveland','NY','Only first lady to marry at the white house.'),
    ('79','Ida','McKinley','OH','Was said to be very close with her husband.'),
    ('80','Edith','Roosevelt','CT','Often held a bouquet of flowers in each hand.'),
    ('81','Helen','Taft','OH','The first First Lady to own and drive a car.'),
    ('82','Edith','Wilson','VA','Described by as a very sympathetic wife.'),
    ('83','Florence','Harding','OH','She was the first First Lady to vote.'),
    ('84','Grace','Coolidge','VT','Was voted one of Americas 12 greatest women.'),
    ('85','Lou','Hoover','IA','The only First Lady to speak an Asian language.'),
    ('86','Eleanor','Roosevelt','NY','Had a magazine column and a radio show'),
    ('87','Elizabeth','Truman','MO','Was said to be very stylish and well dressed.'),
    ('88','Mamie','Eisenhower','IA','Clipped coupons for the white house staff.'),
    ('89','Jacqueline','Kennedy','NY.','Promoted American arts, and history'),
    ('90','Claudia','Johnson','TX','Campaigned extensively for her husband'),
    ('91','Catherine','Nixon','NV','Known for being very hospitable to strangers.'),
    ('92','Elizabeth','Ford','IL','As First Lady, Ford was an advocate of the arts'),
    ('93','Rosalynn','Carter','GA','the first First Lady to keep her own office'),
    ('94','Nancy','Reagan','NY','Promoted "Just Say No" anti-drug campaign'),
    ('95','Barbara','Bush','NY','Strong advocate for universal literacy'),
    ('96','Hillary','Clinton','IL','Promoted child care as first lady'),
    ('97','Laura','Bush','TX', 'Promoted education and womens health'),
    ('98','Michelle','Obama','IL','Advocate for poverty awareness, and nutrition'),
    ('99','Melania','Trump','Slovenia','Second foreign-born woman to be first lady');

-- Define: UNITED STATES VICE PRESIDENTS

INSERT INTO vicepresident (vicepresident_num, vicepresident_firstname, vicepresident_lastname, vicepresident_birthplace, vicepresident_yearinoffice, vicepresident_lastyearinoffice)
VALUES
    ('101','John','Adams','MA','1789','1797'),
    ('102','Thomas','Jefferson','VA','1797','1801'),
    ('103','George','Clinton','NY','1805','1812'),
    ('104','Elbridge','Gerry','MA','1813','1814'),
    ('105','Daniel D.',' Tompkins','NY','1817','1825'),
    ('106','John C.','Calhoun','SC','1825','1929'),
    ('107','Martin Van','Buren','NY','1833','1837'),
    ('108','Richard M.','Johnson','KY','1837','1841'),
    ('109','John','Tyler','VA','1841','1841'),
    ('110',NULL,NULL,NULL,'1841','1845'),
    ('111','George M.','Dallas','PA','1845','1849'),
    ('112','Milliard','Fillmore','NY','1849','1850'),
    ('113',NULL,NULL,NULL,'1850','1853'),
    ('114','William','King','NC','1853','1853'),
    ('115','John C.','Breckinridge','KY','1857','1861'),
    ('116','Andrew','Johnson','NC','1865','1865'),
    ('117',NULL,NULL,NULL,'1865','1865'),
    ('118','Schuyler','Colfax','NY','1869','1873'),
    ('119','William','Wheeler','NY','1877','1881'),
    ('120','Chester','Arthur','VT','1881','1881'),
    ('121',NULL,NULL,NULL,'1881','1885'),
    ('122','Thomas','Hendricks','IN','1885','1885'),
    ('123','Levi P.','Morton','VT','1889','1893'),
    ('124','Aldai E.','Stevenson','KY','1893','1897'),
    ('125','Garret','Hobart','NJ','1897','1899'),
    ('126','Charles','Fairbanks','OH','1905','1909'),
    ('127','James S.','Sherman','NY','1909','1912'),
    ('128','Thomas R.','Marshall','IN','1913','1921'),
    ('129','Calvin','Coolidge','VT','1921','1923'),
    ('130','Charles','Dawes','OH','1925','1929'),
    ('131','Charles','Curtis','KS','1929','1933'),
    ('132','John Nance','Garner','TX','1933','1941'),
    ('133','Alben','Barkley','KY','1949','1953'),
    ('134','Richard','Nixon','CA','1953','1961'),
    ('135','Lyndon B.','Johnson','TX','1961','1963'),
    ('136','Hubert','Humphrey','SD','1965','1969'),
    ('137','Gerald','Ford','NE','1973','1974'),
    ('138','Nelson','Rockefeller','ME','1974','1977'),
    ('139','Walter','Mondale','MN','1977','1981'),
    ('140','George','Bush','MA','1981','1989'),
    ('141','Dan','Quayle','IN','1989','1993'),
    ('142','Al','Gore','WA','1993','2001'),
    ('143','Dick','Cheney','NE','2001','2009'),
    ('144','Joe','Biden','PA','2009','2017'),
    ('145','Mike','Pence','IN','2017',NULL);

-- Define: UNITED STATES PRESIDENTIAL LIBRARIES

INSERT INTO president_presidentiallibrary (president_libID, president_libname, president_libstate, president_libcity, president_yearopened)
VALUES
    ('301', 'Fred W. Smith National Library for the Study of George Washington','VA','Mount Vernon','2013'),
    ('302', 'Stone Library at Adams National Historical Park','MA','Quincy','1870'),
    ('303', 'Robert H. Smith International Center for Jefferson Studies at Kenwood','VA','Charlottesville','2002'),
    ('304', 'James Monroe Museum and Memorial Library','VA','Fredericksburg','1786'),
    ('305',NULL,NULL,NULL,NULL),
    ('306',NULL,NULL,NULL,NULL),
    ('307',NULL,NULL,NULL,NULL),
    ('308',NULL,NULL,NULL,NULL),
    ('309',NULL,NULL,NULL,NULL),
    ('310',NULL,NULL,NULL,NULL),
    ('311',NULL,NULL,NULL,NULL),
    ('312',NULL,NULL,NULL,NULL),
    ('313',NULL,NULL,NULL,NULL),
    ('314',NULL,NULL,NULL,NULL),
    ('315',NULL,NULL,NULL,NULL),
    ('316', 'Abraham Lincoln Presidential Library and Museum','IL','Springfield','2005'),
    ('317', 'President Andrew Johnson Museum and Library','TN','Tusculum','1841'),
    ('318', 'Ulysses S. Grant Presidential Library','MS','Starkville','2017'),
    ('319', 'Rutherford B. Hayes Presidential Center','OH','Fremont','1916'),
    ('320', NULL,NULL,NULL,NULL),
    ('321',NULL,NULL,NULL,NULL),
    ('322',NULL,NULL,NULL,NULL),
    ('323',NULL,NULL,NULL,NULL),
    ('324',NULL,NULL,NULL,NULL),
    ('325', 'William McKinley Presidential Library and Museum','OH','Canton','1963'),
    ('326',NULL,NULL,NULL,NULL),
    ('327',NULL,NULL,NULL,NULL),
    ('328', 'Woodrow Wilson Presidential Library','VA','Staunton','1846'),
    ('329',NULL,NULL,NULL,NULL),
    ('330', 'Calvin Coolidge Presidential Library and Museum','MA','Northampton','1920'),
    ('331', 'Herbert Hoover Presidential Library and Museum','IA','West Branch','1962'),
    ('332', 'Franklin D. Roosevelt Presidential Library and Museum','NY','Hyde Park','1941'),
    ('333', 'Harry S. Truman Presidential Library and Museum','MO','Independence','1957'),
    ('334', 'Dwight D. Eisenhower Presidential Library, Museum and Boyhood Home','KS','Abilene','1954'),
    ('335', 'John F. Kennedy Presidential Library and Museum','MA','Massachusetts','1979'),
    ('336', 'Lyndon Baines Johnson Library and Museum','TX','Austin','1971'),
    ('337', 'Richard Nixon Presidential Library and Museum','CA','Yorba Linda','1990'),
    ('338', 'Gerald R. Ford Presidential Library','MI','Ann Arbor','1981'),
    ('339', 'Jimmy Carter Library and Museum','GA','Atlanta','1986'),
    ('340', 'Ronald Reagan Presidential Library','CA','Simi Valley','1991'),
    ('341', 'George Bush Presidential Library & Museum','TX','College Station','1997'),
    ('342', 'William J. Clinton Presidential Center and Park','AR','Little Rock','2004'),
    ('343', 'George W. Bush Presidential Center','TX','Dallas','2013'),
    ('344', 'Barack Obama Presidential Center','IL','Chicago','2021'),
    ('345',NULL,NULL,NULL,NULL);

-- Define: UNITED STATES PRESIDENTS' PETS

INSERT INTO president_pets (pres_petnum, prespet_name, prespet_type)
VALUES
    ('1001','Nelson and Prescott','Horses'),
    ('1002','Cleopatra','Horse'),
    ('1003','Grizzle','Dog'),
    ('1004','Polly','Parrot'),
    ('1005','Sebastian','Siberian Husky'),
    ('1006',NULL,'Alligator'),
    ('1007','Polly','Parrot'),
    ('1008',NULL,'Tiger'),
    ('1009','Sukey','Cow'),
    ('1010','The General','Horse'),
    ('1110',NULL,NULL),
    ('1011','Old Whitey','Horse'),
    ('1012','Manson and Dixon','Ponies'),
    ('1013','Teacup','Dog'),
    ('1113','Lara','Dog'),
    ('1014','Jackson','Turkey'),
    ('1015',NULL,'White Mice'),
    ('1016','Reb','Pony'),
    ('1116','Siam','Siamese cat'),
    ('1018','Veto','Dog'),
    ('1019',NULL,NULL),
    ('1020',NULL,'Mocking bird'),
    ('1021','Old Whiskers','Goat'),
    ('1022','Yankee Doodle','Parrot'),
    ('1023','Emily Spinach','Garden snake'),
    ('1024','Mooly Woolly','Cows'),
    ('1025',NULL,'Sheep'),
    ('1026','Bob','Canary'),
    ('1027','Tiger','Cat'),
    ('1028','Weejie','Elkhound'),
    ('1029','Fala','Black Scottie'),
    ('1030','goat','Dewey'),
    ('1031','Heidi','Dog'),
    ('1032','Pushinka','Dog'),
    ('1034','Him and Her','Beagles'),
    ('1035','Vicky','French Poodle'),
    ('1036','Liberty','Dog'),
    ('1037','Grits','Dog'),
    ('1038','Rex','Dog'),
    ('1039','Millie','Springer Spaniel'),
    ('1040','Sox','Cat'),
    ('1041','Spot','Springer Spaniel'),
    ('1042','Bo','Water dog'),
    ('1043',NULL,NULL);

