DROP TABLE IF EXISTS CityStateZip;

CREATE TABLE CityStateZip
(Zip INT (6) NOT NULL,
City VARCHAR (30) NOT NULL,
State VARCHAR (30) NOT NULL);

INSERT INTO CityStateZip (Zip, City, State) VALUE
(12001, "New Haven", "WA"),
(12011, "Connecticut", "MO"),
(42001, "New Oregon", "FL"),
(21001, "Bellevue", "KS"),
(12002, "Rodez", "WA"),
(12003, "Castelló De La Plana", "WA"),
(12034, "Paesana", "WA"),
(11001, "Kirkland", "KS"),
(12201, "Hallows", "NE"),
(12005, "Ballwin", "MO");

SELECT *
FROM CityStateZip





