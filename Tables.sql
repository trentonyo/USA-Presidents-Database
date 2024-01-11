# DIALECT: MySQL

# These are all my tables. I made five tables, all the presidents of the states, their first ladies
# vice presidents, their libraries if they had any, and also pets. Presidents that didn't have any libraries
# or pets I put them as null. When you run this database and get an error saying
#  (Msg 2714, Level 16, State 6, Line 6 There is already an object named 'president' in the database.)
# Please run the DROPPR.sql query and re run this query and it should work.
# Thanks !

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

# --My first table, all U.S.A presidents from George Washington to Donald Trump.

INSERT INTO president
VALUES
('01', 'February 22, 1732','VA','George','Washington','1789','1797','null','Unaffiliated','1799','55','101','1001','301');
INSERT INTO president
VALUES
('02', 'October 30, 1735','MA','John','Adams','1797','1801','Harvard University','Federalist','1826','56','102','1002','302');
INSERT INTO president
VALUES
('03', 'April 13, 1743','VA','Thomas','Jefferson','1801','1809','The College of William & Mary','Democratic-Republican','1826','57','103','1003','303');
INSERT INTO president
VALUES
('04', 'March 16, 1751','VA','James','Madison','1809','1817','Princeton University','Democratic-Republican','1836','58','104','1004','304');
INSERT INTO president
VALUES
('05', 'April 28, 1758','VA','James','Monroe','1817','1825','The College of William & Mary','Democratic-Republican','1831','59','105','1005','305');
INSERT INTO president
VALUES
('06', 'July 11, 1767','MA','John','Q. Adams','1825','1829','Harvard University','Democratic-Republican','1848','60','106','1006','306');
INSERT INTO president
VALUES
('07', 'March 15, 1767','SC','Andrew','Jackson','1829','1837','University of Nashville','Democratic','1845','61','107','1007','307');
INSERT INTO president
VALUES
('08', 'December 5, 1782','VA','Martin','V. Buren','1837','1841','University of the State of New York','Democratic','1862','62','108','1008','308');
INSERT INTO president
VALUES
('09', 'February 9, 1773','VA','William','H. Harrison','1841','1841','Hampden–Sydney College','Whig','1841','63','109','1009','309');
INSERT INTO president
VALUES
('10', 'March 29, 1790','VA','John','Tyler','1841','1845','The College of William & Mary','Whig','1862','64','110','1010','310');
INSERT INTO president
VALUES
('11', 'November 2, 1795','NC','James','K. Polk','1845','1849','University of North Carolina at Chapel Hill','Democratic','1849','65','111','1110','311');
INSERT INTO president
VALUES
('12', 'November 24, 1784','VA','Zachary','Taylor','1849','1850','null','Whig','1850','66','112','1011','312');
INSERT INTO president
VALUES
('13', 'January 7, 1800','NY','Millard','Fillmore','1850','1853','null','Whig','1874','67','113','1012','313');
INSERT INTO president
VALUES
('14', 'November 23, 1804','NH','Franklin','Pierce','1853','1857','Bowdoin College','Democratic','1869','68','114','1013','314');
INSERT INTO president
VALUES
('15', 'April 23, 1791','PA','James','Buchanan','1857','1861','Dickinson College','Democratic','1868','69','115','1113','315');
INSERT INTO president
VALUES
('16', 'February 12, 1809','KY','Abraham','Lincoln','1861','1865','null','Republican','1865','70','116','1014','316');
INSERT INTO president
VALUES
('17', 'December 29, 1808','NC','Andrew','Johnson','1865','1869','null','National Union & Democratic','1875','71','117','1015','317');
INSERT INTO president
VALUES
('18', 'April 27, 1822','OH','Ulysses','S. Grant','1869','1877','United States Military Academy','Republican','1885','72','118','1016','318');
INSERT INTO president
VALUES
('19', 'October 4, 1822','OH','Rutherford B.','Hayes','1877','1881','AKenyon College','Republican','1893','73','119','1116','319');
INSERT INTO president
VALUES
('20', 'November 19, 1831','OH','James','A. Garfield','1881','1881','Williams College','Republican','1881','74','120','1018','320');
INSERT INTO president
VALUES
('21', 'October 5, 1829','VT','Chester A.','Arthur','1881','1885','Union College','Republican','1886','75','121','1019','321');
INSERT INTO president
VALUES
('22', 'March 18, 1837','NJ','Grover','Cleveland','1885','1889','null','Democratic','1908','76','122','1020','322');
INSERT INTO president
VALUES
('23', 'August 20, 1833','OH','Benjamin','Harrison','1889','1893','Miami University','Republican','1901','77','123','1021','323');
INSERT INTO president
VALUES
('24', 'March 18, 1837','NJ','Grover','Cleveland','1893','1897','Princeton University','Democratic','1908','78','124','null','324');
INSERT INTO president
VALUES
('25', 'January 29, 1843','OH','William','McKinley','1897','1901','American University','Republican','1901','79','125','1022','325');
INSERT INTO president
VALUES
('26', 'October 27, 1858','NY','Theodore','Roosevelt','1901','1909','Harvard University','Republican','1919','80','126','1023','326');
INSERT INTO president
VALUES
('27', 'September 15, 1857','OH','William','H. Taft','1909','1913','Yale University','Republican','1930','81','127','1024','327');
INSERT INTO president
VALUES
('28', 'December 28, 1856','VA','Woodrow','Wilson','1913','1921','Princeton University','Democratic','1924','82','128','1025','328');
INSERT INTO president
VALUES
('29', 'November 2, 1865','OH','Warren','G. Harding','1921','1923','Ohio Central College','Republican','1923','83','129','1026','329');
INSERT INTO president
VALUES
('30', 'July 4, 1872','VT','Calvin','Coolidge','1923','1929','Amherst College','Republican','1933','84','130','1027','330');
INSERT INTO president
VALUES
('31', 'August 10, 1874','IA','Herbert','Hoover','1929','1933','Stanford University','Republican','1964','85','131','1028','331');
INSERT INTO president
VALUES
('32', 'January 30, 1882','NY','Franklin','D. Roosevelt','1933','1945','Harvard University','Democratic','1945','86','132','1029','332');
INSERT INTO president
VALUES
('33', 'May 8, 1884','MO','Harry','S. Truman','1945','1953','Yale University','Democratic','1972','87','133','1030','333');
INSERT INTO president
VALUES
('34', 'October 14, 1890','TX','Dwight','D. Eisenhower','1953','1961','Eisenhower College','Republican','1969','88','134','1031','334');
INSERT INTO president
VALUES
('35', 'May 29, 1917','MA','John','F. Kennedy','1961','1963','Harvard University','Democratic','1963','89','135','1032','335');
INSERT INTO president
VALUES
('36', 'August 27, 1908','VA','Lyndon','B. Johnson','1963','1969','Texas State University','Democratic','1973','90','136','1034','336');
INSERT INTO president
VALUES
('37', 'January 9, 1913','CA','Richard','Nixon','1969','1974','Whittier College','Republican','1994','91','137','1035','337');
INSERT INTO president
VALUES
('38', 'July 14, 1913','NE','Gerald','Ford','1974','1977','University of Michigan Law School','Republican','2006','92','138','1036','338');
INSERT INTO president
VALUES
('39', 'October 1, 1924','GA','Jimmy','Carter','1977','1981','Union College ','Democratic','null','93','139','1037','339');
INSERT INTO president
VALUES
('40', 'February 6, 1911','IL','Ronald','Reagan','1981','1989','Eureka College','Republican','2004','94','140','1038','340');
INSERT INTO president
VALUES
('41', 'June 12, 1924','MA','George','H.W. Bush','1989','1993','Yale University','Republican','null','95','141','1039','341');
INSERT INTO president
VALUES
('42', 'August 19, 1946','AR','Bill','Clinton','1993','2001','Georgetown University','Democratic','null','96','142','1040','342');
INSERT INTO president
VALUES
('43', 'July 6, 1946','CT','George','W. Bush','2001','2009','Yale University','Republican','null','97','143','1041','343');
INSERT INTO president
VALUES
('44', 'August 4, 1961','HI','Barack','Obama','2009','2017','Harvard Law School','Democratic','null','98','144','1042','344');
INSERT INTO president
VALUES
('45', 'June 14, 1946','NY','Donald','Trump','2017','null','Wharton School of the University of Pennsylvania','Republican','null','99','145','1043','345');





# My second table all the first Ladies of the U.S.A, from Lady Washington to Melania Trump

INSERT INTO firstlady
VALUES
('55','Martha','Dandridge','VA','Also known as Lady Washington.');

INSERT INTO firstlady
VALUES
('56','Abigail','Smith','MA','First to be wife and the mother of a president.');

INSERT INTO firstlady
VALUES
('57','Martha','Jefferson','VA','First to give birth in the white house.'); 

INSERT INTO firstlady
VALUES
('58','Dolley','Payne','NC','First American to respond to a telegraph.');

INSERT INTO firstlady
VALUES
('59','Elizabeth','Kortright','NY','Known to be very charming and elegant woman.');
INSERT INTO firstlady
VALUES
('60','Louisa','Johnson','London','The very first lady to be born in a foreign country.');

INSERT INTO firstlady
VALUES
('61','Sarah','Jackson','PA','She was born in Philadelphia!');

INSERT INTO firstlady
VALUES
('62','Sarah','Van Buren','SC','Youngest women ever to be a first lady.');

INSERT INTO firstlady
VALUES
('63','Anna','Harrison','NJ','Oldest woman ever to become First Lady.');

INSERT INTO firstlady
VALUES
('64','Letitia','Tyler','VA','Known to be selfless and devoted to her family.');
INSERT INTO firstlady
VALUES
('65','Sarah','Polk','TN','First met James when she was 12.');

INSERT INTO firstlady
VALUES
('66','Margaret','taylor','MD','Recalled to be reclusive and not very social.');

INSERT INTO firstlady
VALUES
('67','Abigail','Fillmore','NY','Remembered to be witty and very educated.');

INSERT INTO firstlady
VALUES
('68','Jane','M. Pierce','NH','Did not like being a first lady.');

INSERT INTO firstlady
VALUES
('69','Harriet','R. Buchanan','PA','She built a hospital to help children in need.');

INSERT INTO firstlady
VALUES
('70','Mary','Lincoln','KY','Often visited wounded soldiers to comfort them.');

INSERT INTO firstlady
VALUES
('71','Eliza','Johnson','TN','Taught her husband how to write.');

INSERT INTO firstlady
VALUES
('72','Julia','Grant','MO','The first lady to be recorded on film.');


INSERT INTO firstlady
VALUES
('73','Lucy','Hayes','OH','Was an advocate for African Americans.');


INSERT INTO firstlady
VALUES
('74','Lucretia','Garfield','OH','She was a school teacher.');

INSERT INTO firstlady
VALUES
('75','Mary','Arthur','NY','Was supportive of civil rights for Afro Americans.');

INSERT INTO firstlady
VALUES
('76','Rose','Cleveland','NY','She was an intellectual and enjoyed lecturing.'); 

INSERT INTO firstlady
VALUES
('77','Caroline','Harrison','OH','Known for her elegant white house receptions.');

INSERT INTO firstlady
VALUES
('78','Frances','Cleveland','NY','Only first lady to marry at the white house.');

INSERT INTO firstlady
VALUES
('79','Ida','McKinley','OH','Was said to be very close with her husband.');

INSERT INTO firstlady
VALUES
('80','Edith','Roosevelt','CT','Often held a bouquet of flowers in each hand.'); 
INSERT INTO firstlady
VALUES
('81','Helen','Taft','OH','The first First Lady to own and drive a car.');

INSERT INTO firstlady
VALUES
('82','Edith','Wilson','VA','Described by as a very sympathetic wife.'); 

INSERT INTO firstlady
VALUES
('83','Florence','Harding','OH','She was the first First Lady to vote.');

INSERT INTO firstlady
VALUES
('84','Grace','Coolidge','VT','Was voted one of Americas 12 greatest women.');

INSERT INTO firstlady
VALUES
('85','Lou','Hoover','IA','The only First Lady to speak an Asian language.');

INSERT INTO firstlady
VALUES
('86','Eleanor','Roosevelt','NY','Had a magazine column and a radio show');

INSERT INTO firstlady
VALUES
('87','Elizabeth','Truman','MO','Was said to be very stylish and well dressed.');

INSERT INTO firstlady
VALUES
('88','Mamie','Eisenhower','IA','Clipped coupons for the white house staff.');

INSERT INTO firstlady
VALUES
('89','Jacqueline','Kennedy','NY.','Promoted American arts, and history');
INSERT INTO firstlady
VALUES
('90','Claudia','Johnson','TX','Campaigned extensively for her husband');

INSERT INTO firstlady
VALUES
('91','Catherine','Nixon','NV','Known for being very hospitable to strangers.');

INSERT INTO firstlady
VALUES
('92','Elizabeth','Ford','IL','As First Lady, Ford was an advocate of the arts');

INSERT INTO firstlady
VALUES
('93','Rosalynn','Carter','GA','the first First Lady to keep her own office');
INSERT INTO firstlady
VALUES
('94','Nancy','Reagan','NY','Promoted "Just Say No" anti-drug campaign');

INSERT INTO firstlady
VALUES
('95','Barbara','Bush','NY','Strong advocate for universal literacy');

INSERT INTO firstlady
VALUES
('96','Hillary','Clinton','IL','Promoted child care as first lady');

INSERT INTO firstlady
VALUES
('97','Laura','Bush','TX','Promoted education and women\'s health');

INSERT INTO firstlady
VALUES
('98','Michelle','Obama','IL','Advocate for poverty awareness, and nutrition');
INSERT INTO firstlady
VALUES
('99','Melania','Trump','Slovenia','Second foreign-born woman to be first lady');


-- My third table vice presidents of the U.S.A all vice presidents from John Adamas to Mike Pence.

INSERT INTO vicepresident
VALUES
('101','John','Adams','MA','1789','1797');

INSERT INTO vicepresident
VALUES
('102','Thomas','Jefferson','VA','1797','1801');


INSERT INTO vicepresident
VALUES
('103','George','Clinton','NY','1805','1812');


INSERT INTO vicepresident
VALUES
('104','Elbridge','Gerry','MA','1813','1814');


INSERT INTO vicepresident
VALUES
('105','Daniel D.',' Tompkins','NY','1817','1825');

INSERT INTO vicepresident
VALUES
('106','John C.','Calhoun','SC','1825','1929');

INSERT INTO vicepresident
VALUES
('107','Martin Van','Buren','NY','1833','1837');

INSERT INTO vicepresident
VALUES
('108','Richard M.','Johnson','KY','1837','1841');

INSERT INTO vicepresident
VALUES
('109','John','Tyler','VA','1841','1841');

INSERT INTO vicepresident
VALUES
('110','Null','Null','null','1841','1845');

INSERT INTO vicepresident
VALUES
('111','George M.','Dallas','PA','1845','1849');

INSERT INTO vicepresident
VALUES
('112','Milliard','Fillmore','NY','1849','1850');

INSERT INTO vicepresident
VALUES
('113','Null','Null','null','1850','1853');

INSERT INTO vicepresident
VALUES
('114','William','King','NC','1853','1853');

INSERT INTO vicepresident
VALUES
('115','John C.','Breckinridge','KY','1857','1861');


INSERT INTO vicepresident
VALUES
('116','Andrew','Johnson','NC','1865','1865');

INSERT INTO vicepresident
VALUES
('117','null','null','null','1865','1865');

INSERT INTO vicepresident
VALUES
('118','Schuyler','Colfax','NY','1869','1873');

INSERT INTO vicepresident
VALUES
('119','William','Wheeler','NY','1877','1881');

INSERT INTO vicepresident
VALUES
('120','Chester','Arthur','VT','1881','1881');

INSERT INTO vicepresident
VALUES
('121','null','null','null','1881','1885');

INSERT INTO vicepresident
VALUES
('122','Thomas','Hendricks','IN','1885','1885');

INSERT INTO vicepresident
VALUES
('123','Levi P.','Morton','VT','1889','1893');

INSERT INTO vicepresident
VALUES
('124','Aldai E.','Stevenson','KY','1893','1897');

INSERT INTO vicepresident
VALUES
('125','Garret','Hobart','NJ','1897','1899');

INSERT INTO vicepresident
VALUES
('126','Charles','Fairbanks','OH','1905','1909');

INSERT INTO vicepresident
VALUES
('127','James S.','Sherman','NY','1909','1912');

INSERT INTO vicepresident
VALUES
('128','Thomas R.','Marshall','IN','1913','1921');

INSERT INTO vicepresident
VALUES
('129','Calvin','Coolidge','VT','1921','1923');

INSERT INTO vicepresident
VALUES
('130','Charles','Dawes','OH','1925','1929');

INSERT INTO vicepresident
VALUES
('131','Charles','Curtis','KS','1929','1933');

INSERT INTO vicepresident
VALUES
('132','John Nance','Garner','TX','1933','1941');

INSERT INTO vicepresident
VALUES
('133','Alben','Barkley','KY','1949','1953');

INSERT INTO vicepresident
VALUES
('134','Richard','Nixon','CA','1953','1961');

INSERT INTO vicepresident
VALUES
('135','Lyndon B.','Johnson','TX','1961','1963');

INSERT INTO vicepresident
VALUES
('136','Hubert','Humphrey','SD','1965','1969');


INSERT INTO vicepresident
VALUES
('137','Gerald','Ford','NE','1973','1974');


INSERT INTO vicepresident
VALUES
('138','Nelson','Rockefeller','ME','1974','1977');

INSERT INTO vicepresident
VALUES
('139','Walter','Mondale','MN','1977','1981');

INSERT INTO vicepresident
VALUES
('140','George','Bush','MA','1981','1989');

INSERT INTO vicepresident
VALUES
('141','Dan','Quayle','IN','1989','1993');

INSERT INTO vicepresident
VALUES
('142','Al','Gore','WA','1993','2001');

INSERT INTO vicepresident
VALUES
('143','Dick','Cheney','NE','2001','2009');

INSERT INTO vicepresident
VALUES
('144','Joe','Biden','PA','2009','2017');

INSERT INTO vicepresident
VALUES
('145','Mike','Pence','IN','2017','null');




# My four table, I have presidential libraries. Obama's library is scheduled to be finished in the year 2021 I didn't want to leave it blank so I put it in his row.
INSERT INTO president_presidentiallibrary
VALUES
('301', 'Fred W. Smith National president_presidentiallibrary for the Study of George Washington','VA','Mount Vernon','2013');

INSERT INTO president_presidentiallibrary
VALUES
('302', 'Stone president_presidentiallibrary at Adams National Historical Park','MA','Quincy','1870');

INSERT INTO president_presidentiallibrary
VALUES
('303', 'Robert H. Smith International Center for Jefferson Studies at Kenwood','VA','Charlottesville','2002');

INSERT INTO president_presidentiallibrary
VALUES
('304', 'James Monroe Museum and Memorial president_presidentiallibrary','VA','Fredericksburg','1786');


INSERT INTO president_presidentiallibrary
VALUES
('305','null','null','null','null');

INSERT INTO president_presidentiallibrary
VALUES
('306','null','null','null','null');

INSERT INTO president_presidentiallibrary
VALUES
('307','null','null','null','null');


INSERT INTO president_presidentiallibrary
VALUES
('308','null','null','null','null');


INSERT INTO president_presidentiallibrary
VALUES
('309','null','null','null','null');

INSERT INTO president_presidentiallibrary
VALUES
('310','null','null','null','null');

INSERT INTO president_presidentiallibrary
VALUES
('311','null','null','null','null');

INSERT INTO president_presidentiallibrary
VALUES
('312','null','null','null','null');



INSERT INTO president_presidentiallibrary
VALUES
('313','null','null','null','null');


INSERT INTO president_presidentiallibrary
VALUES
('314','null','null','null','null');


INSERT INTO president_presidentiallibrary
VALUES
('315','null','null','null','null');


INSERT INTO president_presidentiallibrary
VALUES
('316', 'Abraham Lincoln Presidential president_presidentiallibrary and Museum','IL','Springfield','2005');

INSERT INTO president_presidentiallibrary
VALUES
('317', 'President Andrew Johnson Museum and president_presidentiallibrary','TN','Tusculum','1841');

INSERT INTO president_presidentiallibrary
VALUES
('318', 'Ulysses S. Grant Presidential president_presidentiallibrary','MS','Starkville','2017');

INSERT INTO president_presidentiallibrary
VALUES
('319', 'Rutherford B. Hayes Presidential Center','OH','Fremont','1916');

INSERT INTO president_presidentiallibrary
VALUES
('320', 'null','null','null','null');

INSERT INTO president_presidentiallibrary
VALUES
('321','null','null','null','null');

INSERT INTO president_presidentiallibrary
VALUES
('322','null','null','null','null');

INSERT INTO president_presidentiallibrary
VALUES
('323','null','null','null','null');

INSERT INTO president_presidentiallibrary
VALUES
('324','null','null','null','null');


INSERT INTO president_presidentiallibrary
VALUES
('325', 'William McKinley Presidential president_presidentiallibrary and Museum','OH','Canton','1963');

INSERT INTO president_presidentiallibrary
VALUES
('326','null','null','null','null');

INSERT INTO president_presidentiallibrary
VALUES
('327','null','null','null','null');


INSERT INTO president_presidentiallibrary
VALUES
('328', 'Woodrow Wilson Presidential president_presidentiallibrary','VA','Staunton','1846');


INSERT INTO president_presidentiallibrary
VALUES
('329','null','null','null','null');


INSERT INTO president_presidentiallibrary
VALUES
('330', 'Calvin Coolidge Presidential president_presidentiallibrary and Museum','MA','Northampton','1920');

INSERT INTO president_presidentiallibrary
VALUES
('331', 'Herbert Hoover Presidential president_presidentiallibrary and Museum','IA','West Branch','1962');

INSERT INTO president_presidentiallibrary
VALUES
('332', 'Franklin D. Roosevelt Presidential president_presidentiallibrary and Museum','NY','Hyde Park','1941');

INSERT INTO president_presidentiallibrary
VALUES
('333', 'Harry S. Truman Presidential president_presidentiallibrary and Museum','MO','Independence','1957');

INSERT INTO president_presidentiallibrary
VALUES
('334', 'Dwight D. Eisenhower Presidential president_presidentiallibrary, Museum and Boyhood Home','KS','Abilene','1954');

INSERT INTO president_presidentiallibrary
VALUES
('335', 'John F. Kennedy Presidential president_presidentiallibrary and Museum','MA','Massachusetts','1979');

INSERT INTO president_presidentiallibrary
VALUES
('336', 'Lyndon Baines Johnson president_presidentiallibrary and Museum','TX','Austin','1971');

INSERT INTO president_presidentiallibrary
VALUES
('337', 'Richard Nixon Presidential president_presidentiallibrary and Museum','CA','Yorba Linda','1990');

INSERT INTO president_presidentiallibrary
VALUES
('338', 'Gerald R. Ford Presidential president_presidentiallibrary','MI','Ann Arbor','1981');

INSERT INTO president_presidentiallibrary
VALUES
('339', 'Jimmy Carter president_presidentiallibrary and Museum','GA','Atlanta','1986');

INSERT INTO president_presidentiallibrary
VALUES
('340', 'Ronald Reagan Presidential president_presidentiallibrary','CA','Simi Valley','1991');

INSERT INTO president_presidentiallibrary
VALUES
('341', 'George Bush Presidential president_presidentiallibrary & Museum','TX','College Station','1997');

INSERT INTO president_presidentiallibrary
VALUES
('342', 'William J. Clinton Presidential Center and Park','AR','Little Rock','2004');

INSERT INTO president_presidentiallibrary
VALUES
('343', 'George W. Bush Presidential Center','TX','Dallas','2013');

INSERT INTO president_presidentiallibrary
VALUES
('344', 'Barack Obama Presidential Center','IL','Chicago','2021');

INSERT INTO president_presidentiallibrary
VALUES
('345','null','null','null','null');


# My last table this is a table to show presidential pets. So far the only president not to have a pet is president Donald Trump !


INSERT INTO president_pets
VALUES
('1001','Nelson and Prescott','Horses');

INSERT INTO president_pets
VALUES
('1002','Cleopatra','horse');

INSERT INTO president_pets
VALUES
('1003','Grizzle','Dog');

INSERT INTO president_pets
VALUES
('1004','Polly','Parrot');

INSERT INTO president_pets
VALUES
('1005','Sebastian','Siberian Husky');

INSERT INTO president_pets
VALUES
('1006','null','Alligator');

INSERT INTO president_pets
VALUES
('1007','Polly','Parrot');

INSERT INTO president_pets
VALUES
('1008','null','Tiger');

INSERT INTO president_pets
VALUES
('1009','Sukey','Cow');

INSERT INTO president_pets
VALUES
('1010','The General','Horse');

INSERT INTO president_pets
VALUES
('1110','null','null');


INSERT INTO president_pets
VALUES
('1011','Old Whitey','Horse');

INSERT INTO president_pets
VALUES
('1012','Manson and Dixon','Ponies');

INSERT INTO president_pets
VALUES
('1013','Teacup','Dog');

INSERT INTO president_pets
VALUES
('1113','Lara','Dog');

INSERT INTO president_pets
VALUES
('1014','Jackson','Turkey');

INSERT INTO president_pets
VALUES
('1015','null','White Mice');

INSERT INTO president_pets
VALUES
('1016','Reb','Pony');

INSERT INTO president_pets
VALUES
('1116','Siam','Siamese cat');

INSERT INTO president_pets
VALUES
('1018','Veto','Dog');

INSERT INTO president_pets
VALUES
('1019','null','null');

INSERT INTO president_pets
VALUES
('1020','null','A mocking bird');

INSERT INTO president_pets
VALUES
('1021','Old Whiskers','Goat');

INSERT INTO president_pets
VALUES
('1022','Yankee Doodle','Parrot');

INSERT INTO president_pets
VALUES
('1023','Emily Spinach','Garden snake');

INSERT INTO president_pets
VALUES
('1024','Mooly Woolly','Cows');

INSERT INTO president_pets
VALUES
('1025','null','Sheep');

INSERT INTO president_pets
VALUES
('1026','Bob','Canary');

INSERT INTO president_pets
VALUES
('1027','Tiger','Cat');

INSERT INTO president_pets
VALUES
('1028','Weejie','Elkhound');

INSERT INTO president_pets
VALUES
('1029','Fala','Black Scottie');

INSERT INTO president_pets
VALUES
('1030','goat','Dewey');

INSERT INTO president_pets
VALUES
('1031','Heidi','Dog');

INSERT INTO president_pets
VALUES
('1032','Pushinka','Dog');

INSERT INTO president_pets
VALUES
('1034','Him and Her','Beagles');

INSERT INTO president_pets
VALUES
('1035','Vicky','French Poodle');

INSERT INTO president_pets
VALUES
('1036','Liberty','Dog');

INSERT INTO president_pets
VALUES
('1037','Grits','Dog');

INSERT INTO president_pets
VALUES
('1038','Rex','Dog');

INSERT INTO president_pets
VALUES
('1039','Millie','Springer Spaniel');

INSERT INTO president_pets
VALUES
('1040','Sox','Cat');

INSERT INTO president_pets
VALUEs
('1041','Spot','Springer Spaniel');

INSERT INTO president_pets
VALUES
('1042','Bo','Water dog');

INSERT INTO president_pets
VALUES
('1043','null','null');


select * from president;

select * from firstlady;

select * from vicepresident;

select * from president_presidentiallibrary;

select * from president_pets;


