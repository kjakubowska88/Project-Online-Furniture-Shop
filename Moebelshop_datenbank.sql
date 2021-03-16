	
	DROP DATABASE IF EXISTS MoebelShop;
	
	CREATE DATABASE MoebelShop;
	USE MoebelShop;


	--MITARBEITER--


	Drop table if exists mitarbeiter;
	CREATE TABLE mitarbeiter (
		Ma_ID INTEGER NOT NULL AUTO_INCREMENT,
		Ma_Vname VARCHAR(150),
		Ma_Name VARCHAR(150),
		Ma_Funk enum ('Buero', 'IT', 'Kunden Service', 'Moebel Shop', 'Lager') NOT NULL,
		Ma_Ort VARCHAR(50),
		Ma_PLZ VARCHAR(10),
		Ma_Email VARCHAR(40),
		Primary key (MA_ID)
			)
			;
	INSERT INTO `Mitarbeiter` (`Ma_ID`,`Ma_Vname`,`Ma_Name`,`Ma_Funk`,`Ma_Ort`,`Ma_PLZ`,`Ma_Email`) 
	VALUES (1,"Leonard","Rose",3,"Berlin","09128","vitae.purus.gravida@mollisDuis.net"),(2,"Karina","Boone",1,"Hamburg","28604","massa.rutrum.magna@Phasellusvitae.co.uk"),(3,"Lila","Mckinney",5,"Berlin","54622","nulla@arcu.org"),(4,"Jaime","Whitehead",4,"Berlin","62951","est.Mauris@variusultricesmauris.org"),(5,"Axel","Coffey",4,"Nordrhein-Westphalen","21605","quis.massa.Mauris@massalobortisultrices.edu"),(6,"Emma","Gentry",4,"Hamburg","12262","erat.neque@Inat.net"),(7,"Wynne","Hurley",5,"Bremen","10573","at.lacus.Quisque@porttitor.org"),(8,"Florence","Palmer",5,"Berlin","60665","iaculis@Vestibulum.ca"),(9,"Rooney","Medina",2,"Bremen","01046","Nullam.nisl.Maecenas@nuncQuisqueornare.ca"),(10,"Brynne","Castaneda",1,"Berlin","89913","nunc@orciconsectetuereuismod.org");
	INSERT INTO `Mitarbeiter` (`Ma_ID`,`Ma_Vname`,`Ma_Name`,`Ma_Funk`,`Ma_Ort`,`Ma_PLZ`,`Ma_Email`) 
	VALUES (11,"Victoria","Stein",2,"Bremen","84528","mus.Donec.dignissim@adipiscing.com"),(12,"Rae","Brewer",4,"Berlin","93905","dictum@maurissitamet.ca"),(13,"Sawyer","Reese",5,"Berlin","00674","nisi.nibh@commodo.net"),(14,"Abbot","Hood",4,"Berlin","49659","molestie@uterat.net"),(15,"Alden","Shaw",2,"Berlin","97185","Nulla.interdum@est.com"),(16,"Riley","Flores",4,"Sachsen","36518","amet.nulla@eunequepellentesque.co.uk"),(17,"Quemby","Bishop",3,"Hamburg","09326","eu.enim@acmattissemper.ca"),(18,"Joseph","Parrish",4,"Nordrhein-Westphalen","83395","ornare.tortor@atvelitPellentesque.net"),(19,"Curran","Dalton",5,"Hessen","89821","felis.orci@estconguea.ca"),(20,"Beck","Roach",3,"Bremen","08453","eget.metus@Vestibulumut.edu");
	INSERT INTO `Mitarbeiter` (`Ma_ID`,`Ma_Vname`,`Ma_Name`,`Ma_Funk`,`Ma_Ort`,`Ma_PLZ`,`Ma_Email`) 
	VALUES (21,"Micah","Pitts",5,"Hamburg","24313","id@ligula.co.uk"),(22,"Inez","Fuentes",2,"Bremen","25676","vulputate.eu.odio@velsapien.co.uk"),(23,"Genevieve","Brock",4,"Hamburg","11570","dictum.cursus.Nunc@nonegestasa.com"),(24,"Sylvester","Harrison",3,"Bremen","83050","inceptos.hymenaeos.Mauris@nonlobortisquis.net"),(25,"Jena","Obrien",1,"Niedersachsen","11571","primis.in.faucibus@adipiscingelit.com"),(26,"Heather","Campos",5,"Berlin","08414","a.felis.ullamcorper@nuncidenim.co.uk"),(27,"Chelsea","Delgado",2,"Rheinland-Pfalz","95253","aliquet.nec@sedfacilisisvitae.com"),(28,"Kennedy","Little",5,"Berlin","77262","rhoncus.Proin@lectus.org"),(29,"Curran","Powell",3,"Sachsen","43319","nec.ante.blandit@ametnulla.com"),(30,"Amos","Decker",3,"Berlin","26743","nonummy@vitae.edu");
	INSERT INTO `Mitarbeiter` (`Ma_ID`,`Ma_Vname`,`Ma_Name`,`Ma_Funk`,`Ma_Ort`,`Ma_PLZ`,`Ma_Email`) 
	VALUES (31,"Signe","Walls",3,"Berlin","04752","dictum@arcu.edu"),(32,"Kalia","Perkins",1,"Hamburg","74383","tempor@nec.ca"),(33,"Linus","Best",1,"Saarland","76345","Sed.nulla@Nullamscelerisque.com"),(34,"Ronan","Kirk",3,"Saarland","02550","consectetuer@ultricesposuere.co.uk"),(35,"Debra","Castillo",5,"Niedersachsen","26543","lorem.ipsum.sodales@nuncidenim.co.uk"),(36,"Marcia","Dale",1,"Hamburg","68301","ut.sem@nec.com"),(37,"Cora","Mcpherson",5,"Berlin","75829","dolor.dolor@nascetur.net"),(38,"Hoyt","Byers",3,"Berlin","43783","Nullam.nisl@nonenim.net"),(39,"Allen","Downs",3,"Berlin","57965","Suspendisse.ac@faucibusMorbivehicula.ca"),(40,"Tallulah","Espinoza",4,"Saarland","77431","gravida.molestie.arcu@dictum.org");
	INSERT INTO `Mitarbeiter` (`Ma_ID`,`Ma_Vname`,`Ma_Name`,`Ma_Funk`,`Ma_Ort`,`Ma_PLZ`,`Ma_Email`) 
	VALUES (41,"Barclay","Herring",2,"Bremen","87784","mauris.elit.dictum@aliquamiaculis.edu"),(42,"Warren","Lara",2,"Hamburg","46071","posuere.at.velit@quislectusNullam.ca"),(43,"Kibo","Sosa",2,"Bremen","19260","mus.Donec@velesttempor.org"),(44,"Leroy","Roy",5,"Hamburg","39320","dui.semper@ac.edu"),(45,"Geoffrey","Joyner",4,"Hamburg","26858","egestas@convallisdolorQuisque.edu"),(46,"Jakeem","Weiss",3,"Nordrhein-Westphalen","96469","Vivamus.non.lorem@euultrices.com"),(47,"Emily","Wilson",5,"Bremen","38662","imperdiet.dictum@tellus.edu"),(48,"Hilel","Chan",5,"Sachsen","56863","cursus.Nunc@Nullamfeugiatplacerat.co.uk"),(49,"Reece","Humphrey",3,"Berlin","88873","ac.tellus.Suspendisse@nonjusto.com"),(50,"Barrett","Solis",3,"Berlin","42680","viverra.Maecenas@augueeu.com");
	INSERT INTO `Mitarbeiter` (`Ma_ID`,`Ma_Vname`,`Ma_Name`,`Ma_Funk`,`Ma_Ort`,`Ma_PLZ`,`Ma_Email`) 
	VALUES (51,"Sylvester","Kirk",5,"Berlin","67373","cursus@eratSed.net"),(52,"Dane","Santiago",5,"Hamburg","59927","eget.tincidunt.dui@Namligula.edu"),(53,"Hedwig","Watkins",3,"Hamburg","77903","Pellentesque@vestibulumneque.ca"),(54,"Christian","Hensley",4,"Bremen","49195","Nulla.interdum.Curabitur@necurnasuscipit.net"),(55,"Adara","Pope",3,"Sachsen","59162","elit.fermentum.risus@dolorquamelementum.org"),(56,"Zeus","Cooley",5,"Berlin","67167","erat@elementumpurus.org"),(57,"Kirsten","Franklin",4,"Bayern","16912","ultrices.posuere@amet.co.uk"),(58,"Anthony","Watson",3,"Berlin","97003","Curae.Phasellus.ornare@cursusnon.ca"),(59,"Lester","Reynolds",3,"Hamburg","19415","Ut.semper@egetmollislectus.org"),(60,"Aquila","Bradley",4,"Bremen","70152","at.iaculis@mieleifend.org");
	INSERT INTO `Mitarbeiter` (`Ma_ID`,`Ma_Vname`,`Ma_Name`,`Ma_Funk`,`Ma_Ort`,`Ma_PLZ`,`Ma_Email`) 
	VALUES (61,"Kelsey","Montoya",2,"Sachsen-Anhalt","90286","scelerisque.lorem.ipsum@incursus.com"),(62,"Lyle","Weeks",5,"Bremen","74102","augue.malesuada.malesuada@acmattis.edu"),(63,"Alice","Hess",1,"Berlin","75068","interdum@feugiatnonlobortis.org"),(64,"Judith","Lewis",3,"Hamburg","76057","nonummy@sit.com"),(65,"Maisie","Love",5,"Hamburg","38184","vulputate@nisl.edu"),(66,"Eleanor","Foreman",3,"Berlin","63651","lobortis.Class.aptent@Fuscediamnunc.org"),(67,"Lilah","Fitzgerald",5,"Berlin","71738","at@Quisqueimperdiet.net"),(68,"Maggy","Wolfe",5,"Sachsen","78086","penatibus@rhoncusProin.co.uk"),(69,"Bert","Herrera",3,"Hamburg","89452","nibh.Quisque.nonummy@IntegerurnaVivamus.net"),(70,"Alfonso","Aguilar",2,"Berlin","39605","erat@Cum.ca");
	INSERT INTO `Mitarbeiter` (`Ma_ID`,`Ma_Vname`,`Ma_Name`,`Ma_Funk`,`Ma_Ort`,`Ma_PLZ`,`Ma_Email`) 
	VALUES (71,"Seth","Randall",5,"Bremen","22838","laoreet@pharetra.net"),(72,"Megan","Gibbs",1,"Hamburg","11593","Morbi@egetipsum.net"),(73,"Jakeem","Mcdowell",1,"Berlin","19073","molestie.arcu@eudoloregestas.com"),(74,"Pascale","Lyons",4,"Berlin","87009","auctor.nunc@Phasellusin.edu"),(75,"Wynne","Schneider",4,"Berlin","84007","Aliquam@euarcu.edu"),(76,"Nina","Palmer",5,"Bremen","32893","vel@risus.edu"),(77,"Amos","Stanton",5,"Berlin","15367","dui.lectus@semelit.com"),(78,"Imelda","Bates",5,"Baden Württemberg","06360","Sed.id@nequeNullam.com"),(79,"Daniel","Ortiz",2,"Hamburg","27498","ipsum@dictumeleifendnunc.org"),(80,"Hunter","Howell",1,"Berlin","98449","montes@nascetur.edu");

	select * from mitarbeiter;

	
	--KLASSE--


	Drop table if exists klasse;
		CREATE TABLE klasse (
			KL_ID int AUTO_INCREMENT,
			KL_Name VARCHAR(255),
			PRIMARY KEY (KL_ID)
							)	;
	Insert into klasse (KL_Name) values ('Stuhl'); --1
	set @Stuhl = last_insert_id();

	Insert into klasse (KL_Name) values ('Schreibtisch'); --2
	set @Schreibtisch = last_insert_id();

	Insert into klasse (KL_Name) values ('Tisch'); --3
	set @Tisch = last_insert_id();

	Insert into klasse (KL_Name) values ('Buchregal'); --4
	set @Buchregal = last_insert_id();

	Insert into klasse (KL_Name) values ('Schrank'); --5
	set @Schrank = last_insert_id();

	Insert into klasse (KL_Name) values ('Wohnwand'); --6
	set @Wohnwand = last_insert_id();

	Insert into klasse (KL_Name) values ('Bett'); --7
	set @Bett = last_insert_id();

	Insert into klasse (KL_Name) values ('Sofa'); --8
	set @Sofa = last_insert_id();

	Insert into klasse (KL_Name) values ('Sessel'); --9
	set @Sessel = last_insert_id();

	Insert into klasse (KL_Name) values ('Ecksofa'); --10
	set @Ecksofa = last_insert_id();

		
		select * from klasse;
	 
	 
	 --HOLZART--

	Drop table if exists holzart;
	CREATE TABLE holzart(
	HO_ID int AUTO_INCREMENT,
	HO_Name VARCHAR(55),
	PRIMARY KEY (HO_ID)
		);
		
	Insert into holzart (HO_Name) values ('Ahorn'); -- 1
	set @ahorn = last_insert_id();

	Insert into holzart (HO_Name) values ('Buche'); -- 2
	set @buche = last_insert_id();

	Insert into holzart (HO_Name) values ('Eiche');--3
	set @eiche = last_insert_id();

	Insert into holzart (HO_Name) values ('Kiefer');--4
	set @kiefer = last_insert_id();

	Insert into holzart (HO_Name) values ('Walnuss');--5
	set @walnuss = last_insert_id();

	
		select * from holzart;


	--Moebel--

	
	Drop table if exists moebel;
	CREATE TABLE moebel 
	   (Moe_ID INTEGER NOT NULL AUTO_INCREMENT,
		Moe_ArtNr VARCHAR (150),
		Moe_Stand DEC (4),
		Moe_Name VARCHAR(250),
		Moe_EK DEC (5,2),
		Moe_VK DEC (5,2),
		Moe_Lizeit ENUM ('24h', '48h', '3Tage', '4Tage', '1Woche') NOT NULL,
		Moe_Kategorie ENUM ('Wohnzimmer', 'Schlafzimmer', 'Arbeitszimmer') NOT NULL,
		Moe_Farbe ENUM ( 'Holz', 'Weiss', 'Schwarz', 'Grau', 'Lila', 'Rot', 'Gelb', 'Braun', 'Blau', 'Gruen', 'Multicolor') NOT NULL,
		HO_ID INTEGER NOT NULL,
		KL_ID INTEGER NOT NULL ,
		PRIMARY KEY (Moe_ID),
		FOREIGN KEY (Ho_ID) REFERENCES Holzart (Ho_ID), 
		FOREIGN KEY (KL_ID) REFERENCES Klasse (KL_ID),
		CONSTRAINT UC_Moebel UNIQUE (Moe_ID,Moe_ArtNr)
		
		)		;

	--STUHL--

	Insert into moebel (Moe_ArtNr, Moe_Stand, Moe_Name, Moe_EK, Moe_VK, Moe_Lizeit, Moe_kategorie, Moe_Farbe, HO_ID, KL_ID)
	values ('Stuhl123', '100', 'Stuhl Max', '45.00', '69.90', '1', '1', '1', @Ahorn, @Stuhl );
	Insert into moebel (Moe_ArtNr, Moe_Stand, Moe_Name, Moe_EK, Moe_VK, Moe_Lizeit, Moe_kategorie, Moe_Farbe, HO_ID, KL_ID)
	values ('Stuhl123a', '105', 'Stuhl Max', '45.00', '69.90', '1', '1', '3', @Ahorn, @Stuhl );
	Insert into moebel (Moe_ArtNr, Moe_Stand, Moe_Name, Moe_EK, Moe_VK, Moe_Lizeit, Moe_kategorie, Moe_Farbe, HO_ID, KL_ID)
	values ('Stuhl123b', '188', 'Stuhl Max', '55.00', '89.90', '1', '3', '4', @Ahorn, @Stuhl );
	Insert into moebel (Moe_ArtNr, Moe_Stand, Moe_Name, Moe_EK, Moe_VK, Moe_Lizeit, Moe_kategorie, Moe_Farbe, HO_ID, KL_ID)
	values ('Stuhl123c', '76', 'Stuhl Max', '55.00', '89.90', '1', '3', '3', @Ahorn, @Stuhl );

	Insert into moebel (Moe_ArtNr, Moe_Stand, Moe_Name, Moe_EK, Moe_VK, Moe_Lizeit, Moe_kategorie, Moe_Farbe, HO_ID, KL_ID)
	values ('Stuhl124', '88', 'Stuhl Felix', '65.00', '85.90', '1', '1', '1', @Buche, @Stuhl );
	Insert into moebel (Moe_ArtNr, Moe_Stand, Moe_Name, Moe_EK, Moe_VK, Moe_Lizeit, Moe_kategorie, Moe_Farbe, HO_ID, KL_ID)
	values ('Stuhl124a', '60', 'Stuhl Felix', '65.00', '85.90', '1', '1', '1', @Buche, @Stuhl );
	Insert into moebel (Moe_ArtNr, Moe_Stand, Moe_Name, Moe_EK, Moe_VK, Moe_Lizeit, Moe_kategorie, Moe_Farbe, HO_ID, KL_ID)
	values ('Stuhl124b', '124', 'Stuhl Felix', '75.00', '99.90', '1', '3', '4', @Buche, @Stuhl );
	Insert into moebel (Moe_ArtNr, Moe_Stand, Moe_Name, Moe_EK, Moe_VK, Moe_Lizeit, Moe_kategorie, Moe_Farbe, HO_ID, KL_ID)
	values ('Stuhl124c', '6', 'Stuhl Felix', '75.00', '99.90', '1', '3', '3', @Buche, @Stuhl );

	Insert into moebel (Moe_ArtNr, Moe_Stand, Moe_Name, Moe_EK, Moe_VK, Moe_Lizeit, Moe_kategorie, Moe_Farbe, HO_ID, KL_ID)
	values ('Stuhl125', '18', 'Stuhl Rosalie', '29.00', '35.90', '1', '1', '1', @Eiche, @Stuhl );
	Insert into moebel (Moe_ArtNr, Moe_Stand, Moe_Name, Moe_EK, Moe_VK, Moe_Lizeit, Moe_kategorie, Moe_Farbe, HO_ID, KL_ID)
	values ('Stuhl125a', '108', 'Stuhl Rosalie', '29.00', '35.90', '1', '1', '8', @Eiche, @Stuhl );
	Insert into moebel (Moe_ArtNr, Moe_Stand, Moe_Name, Moe_EK, Moe_VK, Moe_Lizeit, Moe_kategorie, Moe_Farbe, HO_ID, KL_ID)
	values ('Stuhl125b', '9', 'Stuhl Rosalie', '35.00', '49.90', '1', '3', '1', @Walnuss, @Stuhl );
	Insert into moebel (Moe_ArtNr, Moe_Stand, Moe_Name, Moe_EK, Moe_VK, Moe_Lizeit, Moe_kategorie, Moe_Farbe, HO_ID, KL_ID)
	values ('Stuhl125c', '13', 'Stuhl Rosalie', '35.00', '49.90', '1', '3', '2', @Buche, @Stuhl );

	Insert into moebel (Moe_ArtNr, Moe_Stand, Moe_Name, Moe_EK, Moe_VK, Moe_Lizeit, Moe_kategorie, Moe_Farbe, HO_ID, KL_ID)
	values ('Stuhl126', '32', 'Stuhl Peter', '69.00', '88.90', '1', '1', '1', @Walnuss, @Stuhl );
	Insert into moebel (Moe_ArtNr, Moe_Stand, Moe_Name, Moe_EK, Moe_VK, Moe_Lizeit, Moe_kategorie, Moe_Farbe, HO_ID, KL_ID)
	values ('Stuhl126a', '22', 'Stuhl Peter', '64.90', '84.90', '1', '1', '1', @Buche, @Stuhl );
	Insert into moebel (Moe_ArtNr, Moe_Stand, Moe_Name, Moe_EK, Moe_VK, Moe_Lizeit, Moe_kategorie, Moe_Farbe, HO_ID, KL_ID)
	values ('Stuhl126b', '2', 'Stuhl Peter', '79.00', '99.90', '1', '3', '3', @Walnuss, @Stuhl );
	Insert into moebel (Moe_ArtNr, Moe_Stand, Moe_Name, Moe_EK, Moe_VK, Moe_Lizeit, Moe_kategorie, Moe_Farbe, HO_ID, KL_ID)
	values ('Stuhl126c', '0', 'Stuhl Peter', '79.00', '99.90', '1', '3', '4', @Walnuss, @Stuhl );


	--Schreibtisch--
	Insert into moebel (Moe_ArtNr, Moe_Stand, Moe_Name, Moe_EK, Moe_VK, Moe_Lizeit, Moe_kategorie, Moe_Farbe, HO_ID, KL_ID)
	values ('SchrTisch123', '60', 'Schreibtisch Max', '45.00', '69.90', '2', '3', '1', @Ahorn, @Schreibtisch );

	Insert into moebel (Moe_ArtNr, Moe_Stand, Moe_Name, Moe_EK, Moe_VK, Moe_Lizeit, Moe_kategorie, Moe_Farbe, HO_ID, KL_ID)
	values ('SchrTisch124', '62', 'Schreibtisch Felix', '56.90', '79.90', '2', '3', '1', @Eiche, @Schreibtisch );
	Insert into moebel (Moe_ArtNr, Moe_Stand, Moe_Name, Moe_EK, Moe_VK, Moe_Lizeit, Moe_kategorie, Moe_Farbe, HO_ID, KL_ID)
	values ('SchrTisch124a', '160', 'Schreibtisch Felix', '56.90', '79.90', '2', '3', '3', @Eiche, @Schreibtisch );
	Insert into moebel (Moe_ArtNr, Moe_Stand, Moe_Name, Moe_EK, Moe_VK, Moe_Lizeit, Moe_kategorie, Moe_Farbe, HO_ID, KL_ID)
	values ('SchrTisch124b', '42', 'Schreibtisch Felix', '56.90', '79.90', '2', '3', '2', @Eiche, @Schreibtisch );

	Insert into moebel (Moe_ArtNr, Moe_Stand, Moe_Name, Moe_EK, Moe_VK, Moe_Lizeit, Moe_kategorie, Moe_Farbe, HO_ID, KL_ID)
	values ('SchrTisch125', '144', 'Schreibtisch Rosalie', '76.00', '99.99', '2', '3', '1', @Buche, @Schreibtisch );
	Insert into moebel (Moe_ArtNr, Moe_Stand, Moe_Name, Moe_EK, Moe_VK, Moe_Lizeit, Moe_kategorie, Moe_Farbe, HO_ID, KL_ID)
	values ('SchrTisch125a', '24', 'Schreibtisch Rosalie', '76.00', '99.99', '2', '3', '2', @Buche, @Schreibtisch );

	Insert into moebel (Moe_ArtNr, Moe_Stand, Moe_Name, Moe_EK, Moe_VK, Moe_Lizeit, Moe_kategorie, Moe_Farbe, HO_ID, KL_ID)
	values ('SchrTisch126', '96', 'Schreibtisch Peter', '69.90', '99.90', '2', '3', '1', @Walnuss, @Schreibtisch );
	Insert into moebel (Moe_ArtNr, Moe_Stand, Moe_Name, Moe_EK, Moe_VK, Moe_Lizeit, Moe_kategorie, Moe_Farbe, HO_ID, KL_ID)
	values ('SchrTisch126a', '16', 'Schreibtisch Peter', '69.90', '99.90', '2', '3', '3', @Walnuss, @Schreibtisch );

	Insert into moebel (Moe_ArtNr, Moe_Stand, Moe_Name, Moe_EK, Moe_VK, Moe_Lizeit, Moe_kategorie, Moe_Farbe, HO_ID, KL_ID)
	values ('SchrTisch127', '87', 'Schreibtisch Jolie', '32.00', '69.90', '2', '3', '1', @Kiefer, @Schreibtisch );
	Insert into moebel (Moe_ArtNr, Moe_Stand, Moe_Name, Moe_EK, Moe_VK, Moe_Lizeit, Moe_kategorie, Moe_Farbe, HO_ID, KL_ID)
	values ('SchrTisch127a', '27', 'Schreibtisch Jolie', '32.00', '69.90', '2', '3', '9', @Kiefer, @Schreibtisch );
	Insert into moebel (Moe_ArtNr, Moe_Stand, Moe_Name, Moe_EK, Moe_VK, Moe_Lizeit, Moe_kategorie, Moe_Farbe, HO_ID, KL_ID)
	values ('SchrTisch127b', '28', 'Schreibtisch Jolie', '32.00', '69.90', '2', '3', '4', @Kiefer, @Schreibtisch );


	--Tisch--
	Insert into moebel (Moe_ArtNr, Moe_Stand, Moe_Name, Moe_EK, Moe_VK, Moe_Lizeit, Moe_kategorie, Moe_Farbe, HO_ID, KL_ID)
	values ('Tisch123', '50', 'Tisch Max', '100.00', '155.00', '2', '1', '1', @Ahorn, @Tisch );

	Insert into moebel (Moe_ArtNr, Moe_Stand, Moe_Name, Moe_EK, Moe_VK, Moe_Lizeit, Moe_kategorie, Moe_Farbe, HO_ID, KL_ID)
	values ('Tisch124', '45', 'Tisch Felix', '76.00', '115.00', '2', '1', '1', @Eiche, @Tisch );
	Insert into moebel (Moe_ArtNr, Moe_Stand, Moe_Name, Moe_EK, Moe_VK, Moe_Lizeit, Moe_kategorie, Moe_Farbe, HO_ID, KL_ID)
	values ('Tisch124a', '25', 'Tisch Felix', '76.00', '115.00', '2', '1', '3', @Eiche, @Tisch );

	Insert into moebel (Moe_ArtNr, Moe_Stand, Moe_Name, Moe_EK, Moe_VK, Moe_Lizeit, Moe_kategorie, Moe_Farbe, HO_ID, KL_ID)
	values ('Tisch125', '99', 'Tisch Rosalie', '126.00', '195.00', '2', '1', '1', @Buche, @Tisch );
	Insert into moebel (Moe_ArtNr, Moe_Stand, Moe_Name, Moe_EK, Moe_VK, Moe_Lizeit, Moe_kategorie, Moe_Farbe, HO_ID, KL_ID)
	values ('Tisch125a', '15', 'Tisch Rosalie', '126.00', '195.00', '2', '1', '2', @Buche, @Tisch );

	Insert into moebel (Moe_ArtNr, Moe_Stand, Moe_Name, Moe_EK, Moe_VK, Moe_Lizeit, Moe_kategorie, Moe_Farbe, HO_ID, KL_ID)
	values ('Tisch126', '12', 'Tisch Peter', '86.00', '100.00', '2', '1', '1', @Walnuss, @Tisch );

	Insert into moebel (Moe_ArtNr, Moe_Stand, Moe_Name, Moe_EK, Moe_VK, Moe_Lizeit, Moe_kategorie, Moe_Farbe, HO_ID, KL_ID)
	values ('Tisch127', '67', 'Tisch Jolie', '66.00', '95.00', '2', '1', '1', @Kiefer, @Tisch );
	Insert into moebel (Moe_ArtNr, Moe_Stand, Moe_Name, Moe_EK, Moe_VK, Moe_Lizeit, Moe_kategorie, Moe_Farbe, HO_ID, KL_ID)
	values ('Tisch127a', '10', 'Tisch Jolie', '66.00', '95.00', '2', '1', '2', @Kiefer, @Tisch );
	Insert into moebel (Moe_ArtNr, Moe_Stand, Moe_Name, Moe_EK, Moe_VK, Moe_Lizeit, Moe_kategorie, Moe_Farbe, HO_ID, KL_ID)
	values ('Tisch127b', '10', 'Tisch Jolie', '66.00', '95.00', '2', '1', '3', @Kiefer, @Tisch );
	Insert into moebel (Moe_ArtNr, Moe_Stand, Moe_Name, Moe_EK, Moe_VK, Moe_Lizeit, Moe_kategorie, Moe_Farbe, HO_ID, KL_ID)
	values ('Tisch127c', '11', 'Tisch Jolie', '66.00', '95.00', '2', '1', '4', @Kiefer, @Tisch );

	--BUCHREGAL--
	Insert into moebel (Moe_ArtNr, Moe_Stand, Moe_Name, Moe_EK, Moe_VK, Moe_Lizeit, Moe_kategorie, Moe_Farbe, HO_ID, KL_ID)
	values ('Buch123', '40', 'Buchregal Max', '40.00', '65.00', '2', '3', '1', @Ahorn, @Buchregal );
	Insert into moebel (Moe_ArtNr, Moe_Stand, Moe_Name, Moe_EK, Moe_VK, Moe_Lizeit, Moe_kategorie, Moe_Farbe, HO_ID, KL_ID)
	values ('Buch123a', '36', 'Buchregal Max', '42.00', '69.00', '2', '3', '3', @Ahorn, @Buchregal );

	Insert into moebel (Moe_ArtNr, Moe_Stand, Moe_Name, Moe_EK, Moe_VK, Moe_Lizeit, Moe_kategorie, Moe_Farbe, HO_ID, KL_ID)
	values ('Buch124', '106', 'Buchregal Felix', '29.00', '49.00', '2', '3', '1', @Eiche, @Buchregal );
	Insert into moebel (Moe_ArtNr, Moe_Stand, Moe_Name, Moe_EK, Moe_VK, Moe_Lizeit, Moe_kategorie, Moe_Farbe, HO_ID, KL_ID)
	values ('Buch124a', '9', 'Buchregal Felix', '29.00', '49.00', '2', '3', '2', @Eiche, @Buchregal );

	Insert into moebel (Moe_ArtNr, Moe_Stand, Moe_Name, Moe_EK, Moe_VK, Moe_Lizeit, Moe_kategorie, Moe_Farbe, HO_ID, KL_ID)
	values ('Buch125', '17', 'Buchregal Rosalie', '69.00', '99.00', '2', '3', '1', @Buche, @Buchregal );
	Insert into moebel (Moe_ArtNr, Moe_Stand, Moe_Name, Moe_EK, Moe_VK, Moe_Lizeit, Moe_kategorie, Moe_Farbe, HO_ID, KL_ID)
	values ('Buch125a', '11', 'Buchregal Rosalie', '69.00', '99.00', '2', '3', '3', @Buche, @Buchregal );

	Insert into moebel (Moe_ArtNr, Moe_Stand, Moe_Name, Moe_EK, Moe_VK, Moe_Lizeit, Moe_kategorie, Moe_Farbe, HO_ID, KL_ID)
	values ('Buch126', '76', 'Buchregal Peter', '89.00', '109.00', '2', '3', '1', @Walnuss, @Buchregal );
	Insert into moebel (Moe_ArtNr, Moe_Stand, Moe_Name, Moe_EK, Moe_VK, Moe_Lizeit, Moe_kategorie, Moe_Farbe, HO_ID, KL_ID)
	values ('Buch126a', '16', 'Buchregal Peter', '89.00', '109.00', '2', '3', '3', @Walnuss, @Buchregal );

	Insert into moebel (Moe_ArtNr, Moe_Stand, Moe_Name, Moe_EK, Moe_VK, Moe_Lizeit, Moe_kategorie, Moe_Farbe, HO_ID, KL_ID)
	values ('Buch126', '17', 'Buchregal Jolie', '39.00', '59.00', '2', '3', '1', @Kiefer, @Buchregal );
	Insert into moebel (Moe_ArtNr, Moe_Stand, Moe_Name, Moe_EK, Moe_VK, Moe_Lizeit, Moe_kategorie, Moe_Farbe, HO_ID, KL_ID)
	values ('Buch126a', '15', 'Buchregal Jolie', '39.00', '59.00', '2', '3', '3', @Kiefer, @Buchregal );


	--SCHRANK--
	Insert into moebel (Moe_ArtNr, Moe_Stand, Moe_Name, Moe_EK, Moe_VK, Moe_Lizeit, Moe_kategorie, Moe_Farbe, HO_ID, KL_ID)
	values ('Schr123', '23', 'Schrank Max', '79.00', '129.00', '3', '1', '1', @Ahorn, @Schrank );
	Insert into moebel (Moe_ArtNr, Moe_Stand, Moe_Name, Moe_EK, Moe_VK, Moe_Lizeit, Moe_kategorie, Moe_Farbe, HO_ID, KL_ID)
	values ('Schr123c', '75', 'Schrank Max', '79.00', '129.00', '3', '1', '3', @Ahorn, @Schrank );
	Insert into moebel (Moe_ArtNr, Moe_Stand, Moe_Name, Moe_EK, Moe_VK, Moe_Lizeit, Moe_kategorie, Moe_Farbe, HO_ID, KL_ID)
	values ('Schr123a', '20', 'Schrank Max', '89.00', '139.00', '3', '2', '2', @Ahorn, @Schrank );
	Insert into moebel (Moe_ArtNr, Moe_Stand, Moe_Name, Moe_EK, Moe_VK, Moe_Lizeit, Moe_kategorie, Moe_Farbe, HO_ID, KL_ID)
	values ('Schr123b', '71', 'Schrank Max', '89.00', '139.00', '3', '2', '1', @Ahorn, @Schrank );

	Insert into moebel (Moe_ArtNr, Moe_Stand, Moe_Name, Moe_EK, Moe_VK, Moe_Lizeit, Moe_kategorie, Moe_Farbe, HO_ID, KL_ID)
	values ('Schr124', '81', 'Schrank Felix', '110.00', '199.00', '3', '1', '1', @Eiche, @Schrank );
	Insert into moebel (Moe_ArtNr, Moe_Stand, Moe_Name, Moe_EK, Moe_VK, Moe_Lizeit, Moe_kategorie, Moe_Farbe, HO_ID, KL_ID)
	values ('Schr124c', '30', 'Schrank Felix', '110.00', '199.00', '3', '1', '2', @Eiche, @Schrank );
	Insert into moebel (Moe_ArtNr, Moe_Stand, Moe_Name, Moe_EK, Moe_VK, Moe_Lizeit, Moe_kategorie, Moe_Farbe, HO_ID, KL_ID)
	values ('Schr124a', '25', 'Schrank Felix', '100.00', '199.90', '3', '2', '2', @Eiche, @Schrank );
	Insert into moebel (Moe_ArtNr, Moe_Stand, Moe_Name, Moe_EK, Moe_VK, Moe_Lizeit, Moe_kategorie, Moe_Farbe, HO_ID, KL_ID)
	values ('Schr124b', '22', 'Schrank Felix', '100.00', '199.90', '3', '2', '1', @Eiche, @Schrank );

	Insert into moebel (Moe_ArtNr, Moe_Stand, Moe_Name, Moe_EK, Moe_VK, Moe_Lizeit, Moe_kategorie, Moe_Farbe, HO_ID, KL_ID)
	values ('Schr125', '88', 'Schrank Rosalie', '189.00', '279.90', '4', '1', '4', @Buche, @Schrank );
	Insert into moebel (Moe_ArtNr, Moe_Stand, Moe_Name, Moe_EK, Moe_VK, Moe_Lizeit, Moe_kategorie, Moe_Farbe, HO_ID, KL_ID)
	values ('Schr125a', '115', 'Schrank Rosalie', '189.00', '279.90', '4', '1', '1', @Buche, @Schrank );
	Insert into moebel (Moe_ArtNr, Moe_Stand, Moe_Name, Moe_EK, Moe_VK, Moe_Lizeit, Moe_kategorie, Moe_Farbe, HO_ID, KL_ID)
	values ('Schr125b', '18', 'Schrank Rosalie', '189.00', '279.90', '4', '2', '2', @Buche, @Schrank );
	Insert into moebel (Moe_ArtNr, Moe_Stand, Moe_Name, Moe_EK, Moe_VK, Moe_Lizeit, Moe_kategorie, Moe_Farbe, HO_ID, KL_ID)
	values ('Schr125c', '115', 'Schrank Rosalie', '189.00', '279.90', '4', '2', '1', @Buche, @Schrank );

	Insert into moebel (Moe_ArtNr, Moe_Stand, Moe_Name, Moe_EK, Moe_VK, Moe_Lizeit, Moe_kategorie, Moe_Farbe, HO_ID, KL_ID)
	values ('Schr126', '12', 'Schrank Peter', '329.00', '459.90', '5', '1', '1', @Walnuss, @Schrank );
	Insert into moebel (Moe_ArtNr, Moe_Stand, Moe_Name, Moe_EK, Moe_VK, Moe_Lizeit, Moe_kategorie, Moe_Farbe, HO_ID, KL_ID)
	values ('Schr126a', '15', 'Schrank Peter', '329.00', '459.90', '5', '1', '3', @Walnuss, @Schrank );
	Insert into moebel (Moe_ArtNr, Moe_Stand, Moe_Name, Moe_EK, Moe_VK, Moe_Lizeit, Moe_kategorie, Moe_Farbe, HO_ID, KL_ID)
	values ('Schr126b', '76', 'Schrank Peter', '329.00', '459.90', '5', '2', '2', @Walnuss, @Schrank );

	Insert into moebel (Moe_ArtNr, Moe_Stand, Moe_Name, Moe_EK, Moe_VK, Moe_Lizeit, Moe_kategorie, Moe_Farbe, HO_ID, KL_ID)
	values ('Schr127', '11', 'Schrank Jolie', '89.00', '111.90', '2', '1', '1', @Kiefer, @Schrank );
	Insert into moebel (Moe_ArtNr, Moe_Stand, Moe_Name, Moe_EK, Moe_VK, Moe_Lizeit, Moe_kategorie, Moe_Farbe, HO_ID, KL_ID)
	values ('Schr127a', '8', 'Schrank Jolie', '89.00', '111.90', '2', '2', '2', @Kiefer, @Schrank );

	--WOHNWAND--
	Insert into moebel (Moe_ArtNr, Moe_Stand, Moe_Name, Moe_EK, Moe_VK, Moe_Lizeit, Moe_kategorie, Moe_Farbe, HO_ID, KL_ID)
	values ('WohnW123', '10', 'Wohnwand Max', '200.00', '258.00', '5', '1', '1', @Ahorn, @Wohnwand );
	Insert into moebel (Moe_ArtNr, Moe_Stand, Moe_Name, Moe_EK, Moe_VK, Moe_Lizeit, Moe_kategorie, Moe_Farbe, HO_ID, KL_ID)
	values ('WohnW123a', '98', 'Wohnwand Max', '189.00', '229.90', '5', '1', '3', @Kiefer, @Wohnwand );

	Insert into moebel (Moe_ArtNr, Moe_Stand, Moe_Name, Moe_EK, Moe_VK, Moe_Lizeit, Moe_kategorie, Moe_Farbe, HO_ID, KL_ID)
	values ('WohnW124', '6', 'Wohnwand Felix', '109.00', '189.00', '5', '1', '1', @Eiche, @Wohnwand );
	Insert into moebel (Moe_ArtNr, Moe_Stand, Moe_Name, Moe_EK, Moe_VK, Moe_Lizeit, Moe_kategorie, Moe_Farbe, HO_ID, KL_ID)
	values ('WohnW124a', '4', 'Wohnwand Felix', '109.00', '189.00', '5', '1', '2', @Kiefer, @Wohnwand );

	Insert into moebel (Moe_ArtNr, Moe_Stand, Moe_Name, Moe_EK, Moe_VK, Moe_Lizeit, Moe_kategorie, Moe_Farbe, HO_ID, KL_ID)
	values ('WohnW125', '3', 'Wohnwand Rosalie', '199.00', '299.00', '5', '1', '1', @Eiche, @Wohnwand );
	Insert into moebel (Moe_ArtNr, Moe_Stand, Moe_Name, Moe_EK, Moe_VK, Moe_Lizeit, Moe_kategorie, Moe_Farbe, HO_ID, KL_ID)
	values ('WohnW125a', '2', 'Wohnwand Rosalie', '189.00', '279.90', '5', '1', '4', @Kiefer, @Wohnwand );

	Insert into moebel (Moe_ArtNr, Moe_Stand, Moe_Name, Moe_EK, Moe_VK, Moe_Lizeit, Moe_kategorie, Moe_Farbe, HO_ID, KL_ID)
	values ('WohnW126', '3', 'Wohnwand Peter', '329.00', '459.90', '5', '1', '1', @Buche, @Wohnwand );
	Insert into moebel (Moe_ArtNr, Moe_Stand, Moe_Name, Moe_EK, Moe_VK, Moe_Lizeit, Moe_kategorie, Moe_Farbe, HO_ID, KL_ID)
	values ('WohnW126a', '3', 'Wohnwand Peter', '339.00', '489.90', '5', '1', '2', @Buche, @Wohnwand );

	--BETT--
	Insert into moebel (Moe_ArtNr, Moe_Stand, Moe_Name, Moe_EK, Moe_VK, Moe_Lizeit, Moe_kategorie, Moe_Farbe, HO_ID, KL_ID)
	values ('EinzBett123', '20', 'Einzelbett Julia', '109.00', '158.00', '4', '2', '1', @Kiefer, @Bett );
	Insert into moebel (Moe_ArtNr, Moe_Stand, Moe_Name, Moe_EK, Moe_VK, Moe_Lizeit, Moe_kategorie, Moe_Farbe, HO_ID, KL_ID)
	values ('EinzBett123a', '20', 'Einzelbett Julia', '109.00', '158.00', '4', '2', '3', @Kiefer, @Bett );

	Insert into moebel (Moe_ArtNr, Moe_Stand, Moe_Name, Moe_EK, Moe_VK, Moe_Lizeit, Moe_kategorie, Moe_Farbe, HO_ID, KL_ID)
	values ('EinzBett124b', '25', 'Einzelbett Julia', '100.00', '149.00', '4', '2', '2', @Eiche, @Bett );
	Insert into moebel (Moe_ArtNr, Moe_Stand, Moe_Name, Moe_EK, Moe_VK, Moe_Lizeit, Moe_kategorie, Moe_Farbe, HO_ID, KL_ID)
	values ('EinzBett124', '25', 'Einzelbett Julia', '100.00', '149.00', '4', '2', '1', @Eiche, @Bett );

	Insert into moebel (Moe_ArtNr, Moe_Stand, Moe_Name, Moe_EK, Moe_VK, Moe_Lizeit, Moe_kategorie, Moe_Farbe, HO_ID, KL_ID)
	values ('EinzBett125', '18', 'Einzelbett Julia', '149.00', '199.00', '4', '2', '1', @Buche, @Bett );
	Insert into moebel (Moe_ArtNr, Moe_Stand, Moe_Name, Moe_EK, Moe_VK, Moe_Lizeit, Moe_kategorie, Moe_Farbe, HO_ID, KL_ID)
	values ('EinzBett125c', '88', 'Einzelbett Julia', '149.00', '199.00', '4', '2', '4', @Buche, @Bett );

	Insert into moebel (Moe_ArtNr, Moe_Stand, Moe_Name, Moe_EK, Moe_VK, Moe_Lizeit, Moe_kategorie, Moe_Farbe, HO_ID, KL_ID)
	values ('DoppBett123', '24', 'Doppelbett Sofia', '229.00', '299.00', '4', '2', '1', @Kiefer, @Bett );
	Insert into moebel (Moe_ArtNr, Moe_Stand, Moe_Name, Moe_EK, Moe_VK, Moe_Lizeit, Moe_kategorie, Moe_Farbe, HO_ID, KL_ID)
	values ('DoppBett123a', '20', 'Doppelbett Sofia', '229.00', '299.00', '4', '2', '3', @Kiefer, @Bett );
	Insert into moebel (Moe_ArtNr, Moe_Stand, Moe_Name, Moe_EK, Moe_VK, Moe_Lizeit, Moe_kategorie, Moe_Farbe, HO_ID, KL_ID)
	values ('DoppBett123b', '20', 'Doppelbett Sofia', '229.00', '299.00', '4', '2', '2', @Kiefer, @Bett );

	Insert into moebel (Moe_ArtNr, Moe_Stand, Moe_Name, Moe_EK, Moe_VK, Moe_Lizeit, Moe_kategorie, Moe_Farbe, HO_ID, KL_ID)
	values ('DoppBett124', '58', 'Doppelbett Sofia', '258.00', '320.00', '4', '2', '1', @Eiche, @Bett );
	Insert into moebel (Moe_ArtNr, Moe_Stand, Moe_Name, Moe_EK, Moe_VK, Moe_Lizeit, Moe_kategorie, Moe_Farbe, HO_ID, KL_ID)
	values ('DoppBett124a', '113', 'Doppelbett Sofia', '258.00', '320.00', '4', '2', '3', @Eiche, @Bett );
	Insert into moebel (Moe_ArtNr, Moe_Stand, Moe_Name, Moe_EK, Moe_VK, Moe_Lizeit, Moe_kategorie, Moe_Farbe, HO_ID, KL_ID)
	values ('DoppBett124b', '18', 'Doppelbett Sofia', '258.00', '320.00', '4', '2', '2', @Eiche, @Bett );

	Insert into moebel (Moe_ArtNr, Moe_Stand, Moe_Name, Moe_EK, Moe_VK, Moe_Lizeit, Moe_kategorie, Moe_Farbe, HO_ID, KL_ID)
	values ('DoppBett125', '10', 'Doppelbett Sofia', '299.00', '359.00', '4', '2', '1', @Buche, @Bett );
	Insert into moebel (Moe_ArtNr, Moe_Stand, Moe_Name, Moe_EK, Moe_VK, Moe_Lizeit, Moe_kategorie, Moe_Farbe, HO_ID, KL_ID)
	values ('DoppBett125a', '47', 'Doppelbett Sofia', '299.00', '359.00', '4', '2', '3', @Buche, @Bett );
	Insert into moebel (Moe_ArtNr, Moe_Stand, Moe_Name, Moe_EK, Moe_VK, Moe_Lizeit, Moe_kategorie, Moe_Farbe, HO_ID, KL_ID)
	values ('DoppBett125b', '19', 'Doppelbett Sofia', '299.00', '359.00', '4', '2', '2', @Buche, @Bett );

	Insert into moebel (Moe_ArtNr, Moe_Stand, Moe_Name, Moe_EK, Moe_VK, Moe_Lizeit, Moe_kategorie, Moe_Farbe, HO_ID, KL_ID)
	values ('KingBett123', '85', 'Kingsizebett Amanda', '399.00', '459.00', '5', '2', '1', @Kiefer, @Bett );
	Insert into moebel (Moe_ArtNr, Moe_Stand, Moe_Name, Moe_EK, Moe_VK, Moe_Lizeit, Moe_kategorie, Moe_Farbe, HO_ID, KL_ID)
	values ('KingBett123a', '5', 'Kingsizebett Amanda', '399.00', '459.00', '5', '2', '3', @Kiefer, @Bett );
	Insert into moebel (Moe_ArtNr, Moe_Stand, Moe_Name, Moe_EK, Moe_VK, Moe_Lizeit, Moe_kategorie, Moe_Farbe, HO_ID, KL_ID)
	values ('KingBett123b', '5', 'Kingsizebett Amanda', '399.00', '459.00', '5', '2', '2', @Kiefer, @Bett );

	Insert into moebel (Moe_ArtNr, Moe_Stand, Moe_Name, Moe_EK, Moe_VK, Moe_Lizeit, Moe_kategorie, Moe_Farbe, HO_ID, KL_ID)
	values ('KingBett124', '5', 'Kingsizebett Amanda', '459.00', '499.00', '5', '2', '1', @Eiche, @Bett );
	Insert into moebel (Moe_ArtNr, Moe_Stand, Moe_Name, Moe_EK, Moe_VK, Moe_Lizeit, Moe_kategorie, Moe_Farbe, HO_ID, KL_ID)
	values ('KingBett124a', '65', 'Kingsizebett Amanda', '459.00', '499.00', '5', '2', '3', @Eiche, @Bett );
	Insert into moebel (Moe_ArtNr, Moe_Stand, Moe_Name, Moe_EK, Moe_VK, Moe_Lizeit, Moe_kategorie, Moe_Farbe, HO_ID, KL_ID)
	values ('KingBett124b', '95', 'Kingsizebett Amanda', '459.00', '499.00', '5', '2', '2', @Eiche, @Bett );

	Insert into moebel (Moe_ArtNr, Moe_Stand, Moe_Name, Moe_EK, Moe_VK, Moe_Lizeit, Moe_kategorie, Moe_Farbe, HO_ID, KL_ID)
	values ('KingBett125', '65', 'Kingsizebett Amanda', '499.00', '599.00', '5', '2', '1', @Buche, @Bett );
	Insert into moebel (Moe_ArtNr, Moe_Stand, Moe_Name, Moe_EK, Moe_VK, Moe_Lizeit, Moe_kategorie, Moe_Farbe, HO_ID, KL_ID)
	values ('KingBett125a', '5', 'Kingsizebett Amanda', '499.00', '599.00', '5', '2', '1', @Buche, @Bett );
	Insert into moebel (Moe_ArtNr, Moe_Stand, Moe_Name, Moe_EK, Moe_VK, Moe_Lizeit, Moe_kategorie, Moe_Farbe, HO_ID, KL_ID)
	values ('KingBett125b', '5', 'Kingsizebett Amanda', '499.00', '599.00', '5', '2', '1', @Buche, @Bett );


	--SOFA--
	Insert into moebel (Moe_ArtNr, Moe_Stand, Moe_Name, Moe_EK, Moe_VK, Moe_Lizeit, Moe_kategorie, Moe_Farbe, HO_ID, KL_ID)
	values ('2Sofa123', '89', '2er Sofa Gigi', '189.00', '259.99', '4', '1', '5', @Eiche, @Sofa );
	Insert into moebel (Moe_ArtNr, Moe_Stand, Moe_Name, Moe_EK, Moe_VK, Moe_Lizeit, Moe_kategorie, Moe_Farbe, HO_ID, KL_ID)
	values ('2Sofa124', '75', '2er Sofa Alma', '199.00', '279.00', '4', '1', '7', @Buche, @Sofa );
	Insert into moebel (Moe_ArtNr, Moe_Stand, Moe_Name, Moe_EK, Moe_VK, Moe_Lizeit, Moe_kategorie, Moe_Farbe, HO_ID, KL_ID)
	values ('2Sofa125', '65', '2er Sofa Real', '159.00', '239.90', '4', '1', '3', @Kiefer, @Sofa );
	Insert into moebel (Moe_ArtNr, Moe_Stand, Moe_Name, Moe_EK, Moe_VK, Moe_Lizeit, Moe_kategorie, Moe_Farbe, HO_ID, KL_ID)
	values ('2Sofa126', '92', '2er Sofa XYZ', '147.00', '210.90', '4', '1', '6', @Ahorn, @Sofa );
	Insert into moebel (Moe_ArtNr, Moe_Stand, Moe_Name, Moe_EK, Moe_VK, Moe_Lizeit, Moe_kategorie, Moe_Farbe, HO_ID, KL_ID)
	values ('2Sofa127', '48', '2er Sofa Ylona', '299.00', '399.00', '4', '1', '10', @Eiche, @Sofa );

	Insert into moebel (Moe_ArtNr, Moe_Stand, Moe_Name, Moe_EK, Moe_VK, Moe_Lizeit, Moe_kategorie, Moe_Farbe, HO_ID, KL_ID)
	values ('3Sofa123', '30', '3er Sofa Gigi', '118.99', '249.00', '5', '1', '5', @Eiche, @Sofa );
	Insert into moebel (Moe_ArtNr, Moe_Stand, Moe_Name, Moe_EK, Moe_VK, Moe_Lizeit, Moe_kategorie, Moe_Farbe, HO_ID, KL_ID)
	values ('3Sofa124', '97', '3er Sofa Alma', '130.00', '259.00', '5', '1', '7', @Buche,@Sofa );
	Insert into moebel (Moe_ArtNr, Moe_Stand, Moe_Name, Moe_EK, Moe_VK, Moe_Lizeit, Moe_kategorie, Moe_Farbe, HO_ID, KL_ID)
	values ('3Sofa125', '25', '3er Sofa Real', '189.9', '289.90', '5', '1', '3', @Kiefer, @Sofa );
	Insert into moebel (Moe_ArtNr, Moe_Stand, Moe_Name, Moe_EK, Moe_VK, Moe_Lizeit, Moe_kategorie, Moe_Farbe, HO_ID, KL_ID)
	values ('3Sofa126', '22', '3er Sofa XYZ', '197.00', '368.90', '5', '1', '6', @Ahorn, @Sofa );
	Insert into moebel (Moe_ArtNr, Moe_Stand, Moe_Name, Moe_EK, Moe_VK, Moe_Lizeit, Moe_kategorie, Moe_Farbe, HO_ID, KL_ID)
	values ('3Sofa127', '78', '3er Sofa Ylona', '399.00', '539.00', '5', '1', '10', @Eiche, @Sofa );
	Insert into moebel (Moe_ArtNr, Moe_Stand, Moe_Name, Moe_EK, Moe_VK, Moe_Lizeit, Moe_kategorie, Moe_Farbe, HO_ID, KL_ID)
	values ('3Sofa128', '8', '3er Sofa Flory', '399.00', '489.00', '5', '1', '8', @Eiche, @Sofa );

	--SESSEL--
	Insert into moebel (Moe_ArtNr, Moe_Stand, Moe_Name, Moe_EK, Moe_VK, Moe_Lizeit, Moe_kategorie, Moe_Farbe, HO_ID, KL_ID)
	values ('Sess123', '27', 'Sessel Gigi', '89.00', '118.99', '3', '1', '5', @Eiche, @Sessel );
	Insert into moebel (Moe_ArtNr, Moe_Stand, Moe_Name, Moe_EK, Moe_VK, Moe_Lizeit, Moe_kategorie, Moe_Farbe, HO_ID, KL_ID)
	values ('Sess124', '15', 'Sessel Alma', '99.00', '130.00', '3', '1', '7', @Buche, @Sessel );
	Insert into moebel (Moe_ArtNr, Moe_Stand, Moe_Name, Moe_EK, Moe_VK, Moe_Lizeit, Moe_kategorie, Moe_Farbe, HO_ID, KL_ID)
	values ('Sess125', '35', 'Sessel Real', '59.00', '89.90', '3', '1', '3', @Kiefer, @Sessel );
	Insert into moebel (Moe_ArtNr, Moe_Stand, Moe_Name, Moe_EK, Moe_VK, Moe_Lizeit, Moe_kategorie, Moe_Farbe, HO_ID, KL_ID)
	values ('Sess126', '22', 'Sessel XYZ', '47.00', '68.90', '3', '1', '6', @Ahorn, @Sessel );
	Insert into moebel (Moe_ArtNr, Moe_Stand, Moe_Name, Moe_EK, Moe_VK, Moe_Lizeit, Moe_kategorie, Moe_Farbe, HO_ID, KL_ID)
	values ('Sess127', '88', 'Sessel Ylona', '99.00', '139.00', '3', '1', '10', @Eiche, @Sessel );
	Insert into moebel (Moe_ArtNr, Moe_Stand, Moe_Name, Moe_EK, Moe_VK, Moe_Lizeit, Moe_kategorie, Moe_Farbe, HO_ID, KL_ID)
	values ('Sess128', '53', 'Sessel Flory', '99.00', '149.00', '3', '1', '8', @Eiche, @Sessel );
	Insert into moebel (Moe_ArtNr, Moe_Stand, Moe_Name, Moe_EK, Moe_VK, Moe_Lizeit, Moe_kategorie, Moe_Farbe, HO_ID, KL_ID)
	values ('Sess129', '11', 'Sessel Olaf', '100.00', '139.90', '3', '1', '9', @Kiefer, @Sessel );

	--ECKSOFA--
	Insert into moebel (Moe_ArtNr, Moe_Stand, Moe_Name, Moe_EK, Moe_VK, Moe_Lizeit, Moe_kategorie, Moe_Farbe, HO_ID, KL_ID)
	values ('Eck123', '64', 'Ecksofa Gigi', '400.00', '620.99', '5', '1', '5', @Eiche, @Ecksofa );
	Insert into moebel (Moe_ArtNr, Moe_Stand, Moe_Name, Moe_EK, Moe_VK, Moe_Lizeit, Moe_kategorie, Moe_Farbe, HO_ID, KL_ID)
	values ('Eck124', '10', 'Ecksofa Alma', '499.00', '680.00', '5', '1', '7', @Buche, @Ecksofa );
	Insert into moebel (Moe_ArtNr, Moe_Stand, Moe_Name, Moe_EK, Moe_VK, Moe_Lizeit, Moe_kategorie, Moe_Farbe, HO_ID, KL_ID)
	values ('Eck125', '11', 'Ecksofa Real', '559.00', '789.90', '5', '1', '3', @Kiefer, @Ecksofa );
	Insert into moebel (Moe_ArtNr, Moe_Stand, Moe_Name, Moe_EK, Moe_VK, Moe_Lizeit, Moe_kategorie, Moe_Farbe, HO_ID, KL_ID)
	values ('Eck126', '12', 'Ecksofa XYZ', '347.00', '468.90', '5', '1', '6', @Ahorn, @Ecksofa );
	Insert into moebel (Moe_ArtNr, Moe_Stand, Moe_Name, Moe_EK, Moe_VK, Moe_Lizeit, Moe_kategorie, Moe_Farbe, HO_ID, KL_ID)
	values ('Eck127', '6', 'Ecksofa Ylona', '699.00', '849.00', '5', '1', '10', @Eiche, @Ecksofa );
	Insert into moebel (Moe_ArtNr, Moe_Stand, Moe_Name, Moe_EK, Moe_VK, Moe_Lizeit, Moe_kategorie, Moe_Farbe, HO_ID, KL_ID)
	values ('Eck128', '56', 'Ecksofa Flory', '699.00', '849.00', '5', '1', '8', @Buche, @Ecksofa );
	Insert into moebel (Moe_ArtNr, Moe_Stand, Moe_Name, Moe_EK, Moe_VK, Moe_Lizeit, Moe_kategorie, Moe_Farbe, HO_ID, KL_ID)
	values ('Eck129', '10', 'Ecksofa Olaf', '327.00', '428.90', '5', '1', '9', @Kiefer, @Ecksofa );


	select * from Moebel;
	--select * from moebel top 10;


	--SUBQUERY HOLZART--


		SELECT Moe_ID, Moe_Name, Moe_Lizeit
			FROM Moebel
			WHERE HO_ID IN (SELECT Ho_ID
						FROM HOLZART
						WHERE HO_ID ='1');
		
		
	--SUBQUERY KLASSE--


		SELECT Moe_ID, Moe_Name, Moe_Stand, Moe_Lizeit, Moe_VK
			FROM Moebel
			WHERE KL_ID IN (SELECT KL_ID
						FROM Klasse
						WHERE KL_ID ='9');
						
						
		--LIEFERANT--

		
	Drop table if exists lieferant;
	CREATE TABLE lieferant (
		L_ID INTEGER NOT NULL AUTO_INCREMENT,
		L_Name VARCHAR (350),
		L_VerArt VARCHAR (350),
		L_Kontakt VARCHAR (1000),
		PRIMARY KEY (L_ID)
							);
		
	INSERT INTO lieferant (L_Name, L_VerArt, L_Kontakt) VALUES ( 'DHL', 'Pakettversand', 'dhl@dhl.de');
	set @DHL = last_insert_id();
	INSERT INTO lieferant (L_Name, L_VerArt, L_Kontakt) VALUES ( 'DHL2Man', 'Hauslieferung', 'dhl2man@dhl.de');
	set @DHL2Man = last_insert_id();
	INSERT INTO lieferant (L_Name, L_VerArt, L_Kontakt) VALUES ( 'Hermes', 'PakettShop', 'hermes@hermes.de');
	set @Hermes = last_insert_id();
	INSERT INTO lieferant (L_Name, L_VerArt, L_Kontakt) VALUES ( 'Selbstabholung', 'Selbstabholung im Lager', 'lager@moebelshop.de');
	set @Selbstabholung = last_insert_id();


	select * from lieferant;

	
	--KUNDE--


	Drop table if exists kunde;
	CREATE TABLE Kunde(
		KD_ID INTEGER NOT NULL AUTO_INCREMENT,
		KD_Nr Varchar (100),
		KD_VName VARCHAR (150),
		KD_Name VARCHAR (150),
		KD_PLZ INTEGER, 
		KD_Ort VARCHAR (150),
		KD_email VARCHAR (150),
		KD_Tel  VARCHAR (150),
		PRIMARY KEY (KD_ID)
						);
		

	INSERT INTO `Kunde` (`KD_Nr`,`KD_Vname`,`KD_Name`,`KD_PLZ`,`KD_Ort`,`KD_Email`,`KD_Tel`) VALUES (100,"Ginger","Rush","32302","Berlin","Integer.sem@etnetus.ca","(580) 673-2337"),(101,"Jeremy","Ryan","44706","Saarland","lacus@Aliquamgravidamauris.ca","(479) 225-1653"),(102,"Reese","Reilly","96812","Berlin","fringilla@Curae.net","(611) 467-4055"),(103,"Yoko","Griffin","30942","Hamburg","Mauris.non@Donec.net","(930) 419-5084"),(104,"Travis","Rivera","60864","Hessen","laoreet.libero.et@amifringilla.org","(231) 507-7363"),(105,"Timothy","Pacheco","05981","Nordrhein-Westphalen","lacus.varius@Sed.ca","(741) 684-8761"),(106,"Ann","Bennett","04623","Rheinland-Pfalz","sed.dictum.eleifend@utnullaCras.ca","(290) 657-2040"),(107,"Alea","Navarro","80926","Berlin","eu@ipsumnon.com","(252) 300-3308"),(108,"Sylvester","Lee","60521","Hamburg","ac.mattis@AliquamnislNulla.edu","(457) 539-0325"),(109,"Amery","Winters","59121","Rheinland-Pfalz","ligula.elit.pretium@ipsum.edu","(122) 143-5226");
	INSERT INTO `Kunde` (`KD_Nr`,`KD_Vname`,`KD_Name`,`KD_PLZ`,`KD_Ort`,`KD_Email`,`KD_Tel`) VALUES (110,"Evangeline","Juarez","51966","Bayern","Donec@egestasascelerisque.com","(395) 660-2489"),(111,"Kylee","Mitchell","19846","Berlin","orci@consectetueradipiscingelit.org","(814) 150-7662"),(112,"Kitra","York","29031","Bayern","nisi.dictum@magnaPraesentinterdum.org","(396) 594-3037"),(113,"Kalia","Hayden","95761","Saarland","et.tristique@dolorsit.ca","(889) 700-2814"),(114,"Lois","Price","57764","Berlin","at@ultricesaauctor.edu","(820) 384-5735"),(115,"Jason","Vinson","69188","Berlin","vel.arcu@et.org","(718) 434-8643"),(116,"Nita","Camacho","57367","Nordrhein-Westphalen","sem@quisturpisvitae.com","(186) 774-8070"),(117,"Blaze","Burris","80622","Hamburg","natoque.penatibus@Sednecmetus.org","(635) 889-0857"),(118,"Sade","Durham","56861","Saarland","elit.Curabitur@Pellentesquehabitantmorbi.org","(443) 792-7823"),(119,"Judah","Dunlap","25099","Berlin","euismod.enim@nonnisiAenean.com","(290) 321-8581");
	INSERT INTO `Kunde` (`KD_Nr`,`KD_Vname`,`KD_Name`,`KD_PLZ`,`KD_Ort`,`KD_Email`,`KD_Tel`) VALUES (120,"Steven","Barlow","14030","Berlin","et.libero.Proin@neque.org","(781) 427-2246"),(121,"Veda","Callahan","61547","Nordrhein-Westphalen","non@Pellentesque.co.uk","(389) 923-3339"),(122,"Patricia","Santana","92169","Berlin","tempus.non.lacinia@acmattisvelit.co.uk","(581) 700-4191"),(123,"Carol","Wynn","09890","Sachsen","eu.neque.pellentesque@elementum.co.uk","(505) 928-7325"),(124,"Aristotle","Beach","41267","Hamburg","libero.Donec@ac.ca","(257) 632-0491"),(125,"Neve","Riley","25278","Bremen","Cras@pretiumaliquet.co.uk","(218) 588-9265"),(126,"Hayes","Wilson","87378","Berlin","justo.faucibus@sit.org","(315) 505-0213"),(127,"Hanna","Tillman","70650","Niedersachsen","Morbi.metus.Vivamus@Nullamvitaediam.com","(751) 559-1071"),(128,"Veronica","Howe","98144","Berlin","penatibus.et@interdumliberodui.co.uk","(402) 882-0746"),(129,"Allegra","Ramos","58041","Hamburg","Aliquam@elitdictum.net","(839) 570-8114");
	INSERT INTO `Kunde` (`KD_Nr`,`KD_Vname`,`KD_Name`,`KD_PLZ`,`KD_Ort`,`KD_Email`,`KD_Tel`) VALUES (130,"Chava","Riggs","30162","Baden Württemberg","lectus.Cum@ipsumcursus.net","(905) 466-5691"),(131,"Alice","Jones","13525","Berlin","orci.Ut@nuncullamcorpereu.com","(338) 276-1506"),(132,"Lars","Mcconnell","14986","Berlin","molestie.sodales.Mauris@diam.ca","(710) 271-8116"),(133,"Jenna","Wilkins","68090","Berlin","turpis.non.enim@eu.net","(825) 305-9647"),(134,"Lesley","Hines","71112","Berlin","mattis.semper.dui@Quisque.edu","(774) 797-1842"),(135,"Myles","Dale","26639","Berlin","urna@neque.edu","(901) 256-5891"),(136,"Roary","Benton","12941","Brandenburg","rutrum.justo.Praesent@erat.net","(673) 581-6762"),(137,"Kim","Gardner","88647","Bremen","Cras.dictum@dui.net","(990) 419-2752"),(138,"Jennifer","Macdonald","72229","Nordrhein-Westphalen","natoque@Fuscediam.ca","(569) 705-4923"),(139,"Hilel","Mccormick","03012","Hamburg","adipiscing.elit@diamDuis.net","(617) 427-9519");
	INSERT INTO `Kunde` (`KD_Nr`,`KD_Vname`,`KD_Name`,`KD_PLZ`,`KD_Ort`,`KD_Email`,`KD_Tel`) VALUES (140,"Regina","Cantu","98880","Berlin","Suspendisse@risusaultricies.net","(976) 945-2696"),(141,"Aurelia","Welch","27090","Berlin","vel@adlitoratorquent.org","(914) 791-7718"),(142,"Ila","Kane","99211","Hamburg","vitae.sodales@primis.com","(957) 772-1050"),(143,"Jane","Howell","10866","Berlin","pharetra@liberoProinmi.net","(374) 888-8673"),(144,"Nina","Wagner","11877","Berlin","risus@ultrices.edu","(120) 801-9998"),(145,"Leo","Dean","17407","Bremen","sed@porttitorinterdum.net","(623) 571-3161"),(146,"Myles","Pearson","85624","Bremen","ipsum.Suspendisse@auctorvelit.edu","(629) 781-9832"),(147,"Julian","Mckay","10318","Berlin","nibh.Phasellus.nulla@seddolorFusce.ca","(714) 175-5283"),(148,"Bradley","Griffin","79966","Sachsen","tellus@nibhPhasellusnulla.co.uk","(394) 528-4954"),(149,"Juliet","Hood","62607","Saarland","semper.rutrum@commodo.org","(753) 365-4449");
	INSERT INTO `Kunde` (`KD_Nr`,`KD_Vname`,`KD_Name`,`KD_PLZ`,`KD_Ort`,`KD_Email`,`KD_Tel`) VALUES (150,"Ezekiel","Weiss","66164","Niedersachsen","Aliquam.ornare@cursus.com","(787) 457-3475"),(151,"Aimee","Delgado","75728","Berlin","iaculis@metus.com","(469) 148-8469"),(152,"Camilla","Villarreal","65101","Hamburg","Quisque.varius.Nam@dolorNulla.edu","(763) 953-1369"),(153,"Breanna","Travis","59614","Bremen","mi@Phasellus.org","(495) 300-1738"),(154,"Leilani","Johnson","00525","Bremen","porttitor.interdum.Sed@dictumeu.com","(876) 230-0046"),(155,"Kenneth","Waters","36499","Hamburg","Aenean@egestasligulaNullam.net","(928) 556-3221"),(156,"Brynne","Richardson","52625","Berlin","urna@nascetur.com","(168) 517-6874"),(157,"Camille","Robertson","28679","Berlin","Nunc.commodo@egetlaoreet.com","(579) 120-1634"),(158,"Donna","Park","08955","Bayern","rhoncus@adipiscingenimmi.co.uk","(246) 880-4701"),(159,"Perry","Knight","10063","Berlin","augue.ut@ipsum.co.uk","(308) 800-8175");
	INSERT INTO `Kunde` (`KD_Nr`,`KD_Vname`,`KD_Name`,`KD_PLZ`,`KD_Ort`,`KD_Email`,`KD_Tel`) VALUES (160,"Scott","Parks","50993","Berlin","libero@Proinvelit.ca","(647) 833-1916"),(161,"Axel","Hahn","37875","Berlin","amet@mattisIntegereu.co.uk","(518) 326-3712"),(162,"Andrew","Mcknight","24488","Berlin","et.magnis.dis@tellus.org","(523) 874-9559"),(163,"Ciara","Travis","27190","Berlin","litora.torquent@tempuseuligula.ca","(207) 394-5599"),(164,"Keegan","Justice","30292","Berlin","interdum.Sed@sit.com","(190) 176-0856"),(165,"Orla","Hebert","66562","Berlin","nunc.ac.mattis@consectetuercursus.org","(678) 193-2307"),(166,"Idona","Bray","63385","Saarland","pellentesque@nibh.edu","(244) 681-6965"),(167,"Dawn","Nixon","18151","Hamburg","id@quamPellentesque.com","(816) 907-9939"),(168,"Neil","Floyd","59882","Berlin","neque.pellentesque.massa@etmagnis.org","(864) 507-0128"),(169,"Alexander","Bullock","35528","Hessen","quam.a@sodales.ca","(299) 524-8893");
	INSERT INTO `Kunde` (`KD_Nr`,`KD_Vname`,`KD_Name`,`KD_PLZ`,`KD_Ort`,`KD_Email`,`KD_Tel`) VALUES (170,"Edward","Montoya","88293","Berlin","dolor.dapibus.gravida@felis.edu","(925) 491-6702"),(171,"Fulton","Huber","65141","Hamburg","semper.dui.lectus@loremegetmollis.ca","(315) 450-1258"),(172,"Briar","Patel","59851","Bremen","Aenean.massa.Integer@dui.net","(722) 574-8819"),(173,"Julie","Sosa","42920","Baden Württemberg","id@aliquetsem.edu","(593) 416-5608"),(174,"Felix","Todd","76651","Berlin","dui.Suspendisse@tempus.co.uk","(864) 708-3960"),(175,"Whilemina","Maxwell","22692","Bremen","egestas@molestietellus.com","(819) 127-6819"),(176,"Echo","Benjamin","08875","Schleswig-Holstein","Aliquam.nisl@ligula.com","(833) 288-9240"),(177,"Brock","Sanchez","50903","Berlin","ac.sem.ut@luctusCurabituregestas.net","(668) 178-6091"),(178,"Simon","Love","63863","Berlin","odio@inconsequat.co.uk","(824) 989-5813"),(179,"Kathleen","Duran","47824","Hamburg","ipsum@Phasellus.net","(442) 399-7381");
	INSERT INTO `Kunde` (`KD_Nr`,`KD_Vname`,`KD_Name`,`KD_PLZ`,`KD_Ort`,`KD_Email`,`KD_Tel`) VALUES (180,"Ina","Branch","69598","Bremen","tempor.lorem@fringilla.net","(211) 109-7043"),(181,"Faith","Mathews","70168","Berlin","egestas.ligula@In.ca","(193) 428-1960"),(182,"Kameko","Bryant","77752","Saarland","sociis.natoque@eratin.net","(358) 270-6427"),(183,"Carson","Riggs","49656","Hamburg","a@blanditmattis.co.uk","(992) 805-3405"),(184,"Graham","Cabrera","88083","Bremen","nisi.a@enim.org","(655) 716-0430"),(185,"Ingrid","Bowman","68234","Bremen","orci.tincidunt@quamdignissim.org","(186) 135-4557"),(186,"Sebastian","Burris","50919","Berlin","feugiat@elitdictumeu.edu","(694) 353-9991"),(187,"Linda","Carroll","21281","Berlin","amet.metus@tristiquesenectuset.ca","(536) 206-3275"),(188,"Vernon","Rush","25949","Berlin","dis.parturient.montes@magnaLoremipsum.com","(960) 967-5940"),(189,"Cathleen","Parsons","06124","Berlin","id@Nullaeuneque.com","(555) 244-8889");
	INSERT INTO `Kunde` (`KD_Nr`,`KD_Vname`,`KD_Name`,`KD_PLZ`,`KD_Ort`,`KD_Email`,`KD_Tel`) VALUES (190,"Anastasia","Padilla","37554","Berlin","Morbi.neque.tellus@Sednunc.org","(935) 904-9782"),(191,"Idola","Mcgee","93217","Hamburg","elit.pellentesque@pharetraQuisque.org","(188) 727-9461"),(192,"Merritt","Guerrero","49574","Nordrhein-Westphalen","id.nunc@Etiamimperdiet.net","(895) 971-7122"),(193,"Conan","Cobb","87694","Berlin","sed.facilisis.vitae@ultriciesligulaNullam.com","(855) 319-0337"),(194,"Macy","Lindsay","88648","Berlin","velit.Sed@ligulaconsectetuerrhoncus.net","(891) 843-6140"),(195,"Sandra","Conley","07171","Sachsen-Anhalt","mauris.a.nunc@sociis.edu","(676) 901-9633"),(196,"Hedwig","Solomon","09739","Schleswig-Holstein","sapien.Cras@nunc.co.uk","(817) 393-7127"),(197,"Cullen","Wright","50227","Mecklenburg-Vorpommern","et@arcuVivamus.ca","(322) 429-3943"),(198,"Fredericka","Avila","16901","Berlin","est@acturpisegestas.co.uk","(839) 992-3611"),(199,"Tarik","Lamb","66558","Hamburg","vulputate.nisi@ligula.org","(173) 658-0551");


	select * from Kunde;

	select * from kunde where KD_Name LIKE "F%";

	select * from kunde where KD_Name LIKE "_%L";

	Select KD_Ort As Wohnort, COUNT(KD_ID) as Summe from Kunde group by Kd_ort Order by Summe DESC;


	--BESTELLUNG--

	
	DROP TABLE IF EXISTS Bestellung;
	CREATE TABLE Bestellung (
	  Be_ID  INTEGER NOT NULL AUTO_INCREMENT,
	  Be_Nr varchar(255),
	  KD_ID INTEGER NOT NULL,
	  Be_Datum varchar(255),
	  Be_VerDat varchar(255),
	  Be_LiefDat varchar(255),
	  Be_Status varchar(255),
	  L_ID INTEGER NOT NULL,
	  PRIMARY KEY (Be_ID),
	  FOREIGN KEY (KD_ID) REFERENCES KUNDE (KD_ID),
	  FOREIGN KEY (L_ID) REFERENCES LIEFERANT (L_ID)
	  
							);
	 
	 --1-10--
	INSERT INTO Bestellung (Be_ID,Be_Nr,KD_ID,Be_Datum,Be_VerDat,Be_LiefDat,Be_Status,L_ID) 
	VALUES (1,"OY55A3J",1,"05/23/19","05/27/20","05/29/20","Geliefert",2);

	INSERT INTO Bestellung (Be_ID,Be_Nr,KD_ID,Be_Datum,Be_VerDat,Be_LiefDat,Be_Status,L_ID) 
	VALUES (2,"ZY39O6W",2,"06/26/20","","","Storniert",4);

	INSERT INTO Bestellung (Be_ID,Be_Nr,KD_ID,Be_Datum,Be_VerDat,Be_LiefDat,Be_Status,L_ID) 
	VALUES (3,"QR85L0L",3,"08/08/19","08/10/19","08/19/19","Geliefert",1);

	INSERT INTO Bestellung (Be_ID,Be_Nr,KD_ID,Be_Datum,Be_VerDat,Be_LiefDat,Be_Status,L_ID) 
	VALUES (4,"OR89R0P",4,"10/12/20","","","In bearbeitung",3);

	INSERT INTO Bestellung (Be_ID,Be_Nr,KD_ID,Be_Datum,Be_VerDat,Be_LiefDat,Be_Status,L_ID) 
	VALUES (5,"US97I1G",5,"04/23/20","04/27/20","04/30/20","Geliefert",4);

	INSERT INTO Bestellung (Be_ID,Be_Nr,KD_ID,Be_Datum,Be_VerDat,Be_LiefDat,Be_Status,L_ID) 
	VALUES (6,"VT89P2W",6,"10/02/20","10/07/20","","Versendet",1);

	INSERT INTO Bestellung (Be_ID,Be_Nr,KD_ID,Be_Datum,Be_VerDat,Be_LiefDat,Be_Status,L_ID) 
	VALUES (7,"YE86F7P",7,"09/26/20","","","In bearbeitung",4);

	INSERT INTO Bestellung (Be_ID,Be_Nr,KD_ID,Be_Datum,Be_VerDat,Be_LiefDat,Be_Status,L_ID) 
	VALUES (8,"SX21K6G",8,"08/11/20","08/31/20","09/17/20","Geliefert",2);

	INSERT INTO Bestellung (Be_ID,Be_Nr,KD_ID,Be_Datum,Be_VerDat,Be_LiefDat,Be_Status,L_ID) 
	VALUES (9,"KR47F6Q",9,"09/24/20","10/05/20","","Versendet",2);

	INSERT INTO Bestellung (Be_ID,Be_Nr,KD_ID,Be_Datum,Be_VerDat,Be_LiefDat,Be_Status,L_ID) 
	VALUES (10,"DE13A8T",10,"07/21/19","04/16/20","04/21/20","Geliefert",4);

	--11-20--

	INSERT INTO Bestellung (Be_ID,Be_Nr,KD_ID,Be_Datum,Be_VerDat,Be_LiefDat,Be_Status,L_ID) 
	VALUES (11,"HG71W2W",11,"10/03/20","10/06/20","","Versendet",3);

	INSERT INTO Bestellung (Be_ID,Be_Nr,KD_ID,Be_Datum,Be_VerDat,Be_LiefDat,Be_Status,L_ID) 
	VALUES (12,"VF03Q7G",12,"10/05/20","","","Storniert",4);

	INSERT INTO Bestellung (Be_ID,Be_Nr,KD_ID,Be_Datum,Be_VerDat,Be_LiefDat,Be_Status,L_ID) 
	VALUES (13,"IP05G0Z",93,"09/14/19","09/18/19","09/21/19","Geliefert",2);

	INSERT INTO Bestellung (Be_ID,Be_Nr,KD_ID,Be_Datum,Be_VerDat,Be_LiefDat,Be_Status,L_ID) 
	VALUES (14,"HL66E4N",14,"10/04/20","","","In bearbeitung",4);

	INSERT INTO Bestellung (Be_ID,Be_Nr,KD_ID,Be_Datum,Be_VerDat,Be_LiefDat,Be_Status,L_ID) 
	VALUES (15,"TH30W8S",15,"05/23/20","05/27/20","05/30/20","Geliefert",2);

	INSERT INTO Bestellung (Be_ID,Be_Nr,KD_ID,Be_Datum,Be_VerDat,Be_LiefDat,Be_Status,L_ID) 
	VALUES (16,"NO54L9C",16,"10/01/20","10/07/20","","Versendet",4);

	INSERT INTO Bestellung (Be_ID,Be_Nr,KD_ID,Be_Datum,Be_VerDat,Be_LiefDat,Be_Status,L_ID) 
	VALUES (17,"FI43G0S",17,"07/07/19","07/16/19","07/30/20","Geliefert",2);

	INSERT INTO Bestellung (Be_ID,Be_Nr,KD_ID,Be_Datum,Be_VerDat,Be_LiefDat,Be_Status,L_ID) 
	VALUES (18,"BL72A6U",88,"10/01/20","","","In bearbeitung",3);

	INSERT INTO Bestellung (Be_ID,Be_Nr,KD_ID,Be_Datum,Be_VerDat,Be_LiefDat,Be_Status,L_ID) 
	VALUES (19,"ET20A5R",19,"08/19/20","08/31/20","09/10/20","Geliefert",2);

	INSERT INTO Bestellung (Be_ID,Be_Nr,KD_ID,Be_Datum,Be_VerDat,Be_LiefDat,Be_Status,L_ID) 
	VALUES (20,"VB77N1B",20,"09/02/19","08/14/20","07/10/20","Geliefert",2);


	--21-30--

	INSERT INTO Bestellung (Be_ID,Be_Nr,KD_ID,Be_Datum,Be_VerDat,Be_LiefDat,Be_Status,L_ID) 
	VALUES (21,"BH37B4R",21,"07/17/19","07/21/19","07/23/19","Geliefert",2);

	INSERT INTO Bestellung (Be_ID,Be_Nr,KD_ID,Be_Datum,Be_VerDat,Be_LiefDat,Be_Status,L_ID) 
	VALUES (22,"FS18N9J",22,"02/13/20","02/19/20","02/27/20","Geliefert",4);

	INSERT INTO Bestellung (Be_ID,Be_Nr,KD_ID,Be_Datum,Be_VerDat,Be_LiefDat,Be_Status,L_ID) 
	VALUES (23,"NS81V7K",23,"12/15/19","12/23/19","01/02/2020","Geliefert",4);

	INSERT INTO Bestellung (Be_ID,Be_Nr,KD_ID,Be_Datum,Be_VerDat,Be_LiefDat,Be_Status,L_ID) 
	VALUES (24,"CN59Q8P",24,"10/07/20","","","Storniert",2);

	INSERT INTO Bestellung (Be_ID,Be_Nr,KD_ID,Be_Datum,Be_VerDat,Be_LiefDat,Be_Status,L_ID) 
	VALUES (25,"LM70Y0E",25,"06/23/20","06/27/20","06/30/20","Geliefert",2);

	INSERT INTO Bestellung (Be_ID,Be_Nr,KD_ID,Be_Datum,Be_VerDat,Be_LiefDat,Be_Status,L_ID) 
	VALUES (26,"OH07M8H",26,"10/03/20","10/07/20","","Versendet",1);

	INSERT INTO Bestellung (Be_ID,Be_Nr,KD_ID,Be_Datum,Be_VerDat,Be_LiefDat,Be_Status,L_ID) 
	VALUES (27,"XE30L2Y",27,"09/26/20","","","In bearbeitung",4);

	INSERT INTO Bestellung (Be_ID,Be_Nr,KD_ID,Be_Datum,Be_VerDat,Be_LiefDat,Be_Status,L_ID) 
	VALUES (28,"BB86I1Q",28,"06/11/20","06/13/20","06/17/20","Geliefert",2);

	INSERT INTO Bestellung (Be_ID,Be_Nr,KD_ID,Be_Datum,Be_VerDat,Be_LiefDat,Be_Status,L_ID) 
	VALUES (29,"LC27Z6K",29,"10/04/20","","","Storniert",4);

	INSERT INTO Bestellung (Be_ID,Be_Nr,KD_ID,Be_Datum,Be_VerDat,Be_LiefDat,Be_Status,L_ID) 
	VALUES (30,"GF09U0G",30,"03/26/19","03/29/19","03/04/19","Geliefert",2);

	--31-40--

	INSERT INTO Bestellung (Be_ID,Be_Nr,KD_ID,Be_Datum,Be_VerDat,Be_LiefDat,Be_Status,L_ID) 
	VALUES (31,"AO88G1O",12,"01/02/20","01/08/20","01/11/20","Geliefert",2);

	INSERT INTO Bestellung (Be_ID,Be_Nr,KD_ID,Be_Datum,Be_VerDat,Be_LiefDat,Be_Status,L_ID) 
	VALUES (32,"HB82D1Y",72,"06/25/19","06/30/19","07/25/19","Geliefert",3);


	INSERT INTO Bestellung (Be_ID,Be_Nr,KD_ID,Be_Datum,Be_VerDat,Be_LiefDat,Be_Status,L_ID) 
	VALUES (33,"MA12C6G",33,"07/02/19","07/09/19","07/13/19","Geliefert",4);

	INSERT INTO Bestellung (Be_ID,Be_Nr,KD_ID,Be_Datum,Be_VerDat,Be_LiefDat,Be_Status,L_ID) 
	VALUES(34,"RJ11T2R",54,"10/01/20","10/07/20","","Versendet",3);

	INSERT INTO Bestellung (Be_ID,Be_Nr,KD_ID,Be_Datum,Be_VerDat,Be_LiefDat,Be_Status,L_ID) 
	VALUES (35,"DX01H8S",35,"07/23/20","06/27/20","07/30/20","Geliefert",4);

	INSERT INTO Bestellung (Be_ID,Be_Nr,KD_ID,Be_Datum,Be_VerDat,Be_LiefDat,Be_Status,L_ID) 
	VALUES (36,"MP00R2N",36,"10/02/20","10/05/20","","Versendet",2);

	INSERT INTO Bestellung (Be_ID,Be_Nr,KD_ID,Be_Datum,Be_VerDat,Be_LiefDat,Be_Status,L_ID) 
	VALUES (37,"IZ84U6P",37,"09/26/20","","","In bearbeitung",4);

	INSERT INTO Bestellung (Be_ID,Be_Nr,KD_ID,Be_Datum,Be_VerDat,Be_LiefDat,Be_Status,L_ID) 
	VALUES (38,"EQ57F4N",18,"08/11/20","08/31/20","09/17/20","Geliefert",2);

	INSERT INTO Bestellung (Be_ID,Be_Nr,KD_ID,Be_Datum,Be_VerDat,Be_LiefDat,Be_Status,L_ID) 
	VALUES (39,"FQ60O0G",39,"10/07/20","","","In bearbeitung",4);

	INSERT INTO Bestellung (Be_ID,Be_Nr,KD_ID,Be_Datum,Be_VerDat,Be_LiefDat,Be_Status,L_ID) 
	VALUES (40,"MV60I1O",1,"06/02/19","06/06/19","06/08/19","Geliefert",2);


	--41-50--
	INSERT INTO Bestellung (Be_ID,Be_Nr,KD_ID,Be_Datum,Be_VerDat,Be_LiefDat,Be_Status,L_ID) 
	VALUES  (41,"LG57L3L",41,"10/07/20","","","In bearbeitung",3);

	INSERT INTO Bestellung (Be_ID,Be_Nr,KD_ID,Be_Datum,Be_VerDat,Be_LiefDat,Be_Status,L_ID) 
	VALUES  (42,"LL21C8Y",40,"10/05/20","","","In bearbeitung",3);

	INSERT INTO Bestellung (Be_ID,Be_Nr,KD_ID,Be_Datum,Be_VerDat,Be_LiefDat,Be_Status,L_ID) 
	VALUES  (43,"OA65A1B",33,"07/31/20","08/15/20","08/21/20","Geliefert",2);

	INSERT INTO Bestellung (Be_ID,Be_Nr,KD_ID,Be_Datum,Be_VerDat,Be_LiefDat,Be_Status,L_ID) 
	VALUES  (44,"OX38S5F",44,"10/01/20","","","In bearbeitung",2);

	INSERT INTO Bestellung (Be_ID,Be_Nr,KD_ID,Be_Datum,Be_VerDat,Be_LiefDat,Be_Status,L_ID) 
	VALUES  (45,"CC49J6P",1,"08/23/20","08/27/20","08/30/20","Geliefert",4);

	INSERT INTO Bestellung (Be_ID,Be_Nr,KD_ID,Be_Datum,Be_VerDat,Be_LiefDat,Be_Status,L_ID) 
	VALUES  (46,"WP49L4Z",26,"09/24/20","11/04/20","04/05/20","Geliefert",4);

	INSERT INTO Bestellung (Be_ID,Be_Nr,KD_ID,Be_Datum,Be_VerDat,Be_LiefDat,Be_Status,L_ID) 
	VALUES  (47,"ZG57T3X",47,"04/03/20","04/13/20","04/20/20","Geliefert",2);

	INSERT INTO Bestellung (Be_ID,Be_Nr,KD_ID,Be_Datum,Be_VerDat,Be_LiefDat,Be_Status,L_ID) 
	VALUES  (48,"RX98K2B",48,"01/11/20","01/31/20","02/07/20","Geliefert",2);

	INSERT INTO Bestellung (Be_ID,Be_Nr,KD_ID,Be_Datum,Be_VerDat,Be_LiefDat,Be_Status,L_ID) 
	VALUES  (49,"VW20V1H",19,"06/01/20","","","Storniert",1);

	INSERT INTO Bestellung (Be_ID,Be_Nr,KD_ID,Be_Datum,Be_VerDat,Be_LiefDat,Be_Status,L_ID) 
	VALUES  (50,"KY24Y3D",50,"01/13/20","01/22/20","01/24/20","Geliefert",3);

	--51-60--
	INSERT INTO Bestellung (Be_ID,Be_Nr,KD_ID,Be_Datum,Be_VerDat,Be_LiefDat,Be_Status,L_ID) 
	VALUES (51,"QD57S0S",11,"10/07/19","","","Storniert","1");

	INSERT INTO Bestellung (Be_ID,Be_Nr,KD_ID,Be_Datum,Be_VerDat,Be_LiefDat,Be_Status,L_ID) 
	VALUES (52,"QD40N1K",52,"09/30/20","","","In bearbeitung",3);

	INSERT INTO Bestellung (Be_ID,Be_Nr,KD_ID,Be_Datum,Be_VerDat,Be_LiefDat,Be_Status,L_ID) 
	VALUES (53,"VS18W4U",3,"04/10/20","04/12/20","04/14/20","Geliefert",3);

	INSERT INTO Bestellung (Be_ID,Be_Nr,KD_ID,Be_Datum,Be_VerDat,Be_LiefDat,Be_Status,L_ID) 
	VALUES (54,"IP59V0V",54,"10/04/20","","","In bearbeitung",2);

	INSERT INTO Bestellung (Be_ID,Be_Nr,KD_ID,Be_Datum,Be_VerDat,Be_LiefDat,Be_Status,L_ID) 
	VALUES (55,"ET06S7H",55,"09/23/20","06/29/20","09/30/20","Geliefert",2);

	INSERT INTO Bestellung (Be_ID,Be_Nr,KD_ID,Be_Datum,Be_VerDat,Be_LiefDat,Be_Status,L_ID) 
	VALUES (56,"IN30X8R",56,"10/07/20","","","In bearbeitung",2);

	INSERT INTO Bestellung (Be_ID,Be_Nr,KD_ID,Be_Datum,Be_VerDat,Be_LiefDat,Be_Status,L_ID) 
	VALUES (57,"RD43V8L",57,"10/02/20","","","In bearbeitung",3);

	INSERT INTO Bestellung (Be_ID,Be_Nr,KD_ID,Be_Datum,Be_VerDat,Be_LiefDat,Be_Status,L_ID) 
	VALUES (58,"SS03F0U",58,"08/11/20","08/31/20","09/17/20","Geliefert",3);

	INSERT INTO Bestellung (Be_ID,Be_Nr,KD_ID,Be_Datum,Be_VerDat,Be_LiefDat,Be_Status,L_ID) 
	VALUES (59,"WO21R8S",9,"08/11/20","08/31/20","09/17/20","Geliefert",3);

	INSERT INTO Bestellung (Be_ID,Be_Nr,KD_ID,Be_Datum,Be_VerDat,Be_LiefDat,Be_Status,L_ID) 
	VALUES (60,"YF01W7W",60,"02/23/19","02/03/19","02/23/19","Geliefert",2);

	--61-70--
	INSERT INTO Bestellung (Be_ID,Be_Nr,KD_ID,Be_Datum,Be_VerDat,Be_LiefDat,Be_Status,L_ID) 
	VALUES (61,"GJ17C2G",61,"10/07/20","","","In bearbeitung",2);

	INSERT INTO Bestellung (Be_ID,Be_Nr,KD_ID,Be_Datum,Be_VerDat,Be_LiefDat,Be_Status,L_ID) 
	VALUES (62,"YS75L6I",62,"09/30/20","","","In bearbeitung",3);

	INSERT INTO Bestellung (Be_ID,Be_Nr,KD_ID,Be_Datum,Be_VerDat,Be_LiefDat,Be_Status,L_ID) 
	VALUES (63,"YI80V1C",13,"04/10/20","04/12/20","04/14/20","Geliefert",1);

	INSERT INTO Bestellung (Be_ID,Be_Nr,KD_ID,Be_Datum,Be_VerDat,Be_LiefDat,Be_Status,L_ID) 
	VALUES (64,"ZA53C0Y",64,"10/04/20","","","In bearbeitung",2);

	INSERT INTO Bestellung (Be_ID,Be_Nr,KD_ID,Be_Datum,Be_VerDat,Be_LiefDat,Be_Status,L_ID) 
	VALUES (65,"MF02B1Y",5,"09/23/20","06/29/20","09/30/20","Geliefert",2);

	INSERT INTO Bestellung (Be_ID,Be_Nr,KD_ID,Be_Datum,Be_VerDat,Be_LiefDat,Be_Status,L_ID) 
	VALUES (66,"TG65N6Q",66,"10/07/20","","","In bearbeitung",2);

	INSERT INTO Bestellung (Be_ID,Be_Nr,KD_ID,Be_Datum,Be_VerDat,Be_LiefDat,Be_Status,L_ID) 
	VALUES (67,"MV95U5O",67,"10/02/20","","","In bearbeitung",4);

	INSERT INTO Bestellung (Be_ID,Be_Nr,KD_ID,Be_Datum,Be_VerDat,Be_LiefDat,Be_Status,L_ID) 
	VALUES (68,"JE94M0R",68,"08/11/20","08/31/20","09/17/20","Geliefert",4);

	INSERT INTO Bestellung (Be_ID,Be_Nr,KD_ID,Be_Datum,Be_VerDat,Be_LiefDat,Be_Status,L_ID) 
	VALUES (69,"IV21H7Z",29,"02/23/19","02/03/19","02/23/19","Geliefert",2);

	INSERT INTO Bestellung (Be_ID,Be_Nr,KD_ID,Be_Datum,Be_VerDat,Be_LiefDat,Be_Status,L_ID) 
	VALUES (70,"VE48A4T",70,"07/25/19","","","Storniert",1);

	--71-80--
	INSERT INTO Bestellung (Be_ID,Be_Nr,KD_ID,Be_Datum,Be_VerDat,Be_LiefDat,Be_Status,L_ID) 
	VALUES (71,"PQ11G3F",71,"07/17/19","07/21/19","07/23/19","Geliefert",2);

	INSERT INTO Bestellung (Be_ID,Be_Nr,KD_ID,Be_Datum,Be_VerDat,Be_LiefDat,Be_Status,L_ID) 
	VALUES (72,"QH80A1U",72,"04/04/20","04/11/20","04/30/20","Geliefert",4);

	INSERT INTO Bestellung (Be_ID,Be_Nr,KD_ID,Be_Datum,Be_VerDat,Be_LiefDat,Be_Status,L_ID) 
	VALUES (73,"UN15J4X",73,"01/15/20","01/23/20","02/12/20","Geliefert",4);

	INSERT INTO Bestellung (Be_ID,Be_Nr,KD_ID,Be_Datum,Be_VerDat,Be_LiefDat,Be_Status,L_ID) 
	VALUES (74,"XG62F9D",74,"10/03/20","10/10/20","","Versendet",2);

	INSERT INTO Bestellung (Be_ID,Be_Nr,KD_ID,Be_Datum,Be_VerDat,Be_LiefDat,Be_Status,L_ID) 
	VALUES (75,"WI65V4V",6,"10/01/20","10/04/20","","Versendet",3);

	INSERT INTO Bestellung (Be_ID,Be_Nr,KD_ID,Be_Datum,Be_VerDat,Be_LiefDat,Be_Status,L_ID) 
	VALUES (76,"QX56B5L",14,"30/09/20","10/03/20","","Versendet",3);

	INSERT INTO Bestellung (Be_ID,Be_Nr,KD_ID,Be_Datum,Be_VerDat,Be_LiefDat,Be_Status,L_ID) 
	VALUES (77,"RN09H4L",77,"10/07/20","","","In bearbeitung","2");

	INSERT INTO Bestellung (Be_ID,Be_Nr,KD_ID,Be_Datum,Be_VerDat,Be_LiefDat,Be_Status,L_ID) 
	VALUES (78,"FL14M0Q",78,"09/20/20","10/06/20","","Versendet",3);

	INSERT INTO Bestellung (Be_ID,Be_Nr,KD_ID,Be_Datum,Be_VerDat,Be_LiefDat,Be_Status,L_ID) 
	VALUES (79,"GF13V5Z",9,"09/17/20","09/21/21","09/30/20","Geliefert",2);

	INSERT INTO Bestellung (Be_ID,Be_Nr,KD_ID,Be_Datum,Be_VerDat,Be_LiefDat,Be_Status,L_ID) 
	VALUES (80,"UJ99Z7U",80,"03/15/20","03/23/20","04/10/20","Geliefert",4);

	--81-90--

	INSERT INTO Bestellung (Be_ID,Be_Nr,KD_ID,Be_Datum,Be_VerDat,Be_LiefDat,Be_Status,L_ID) 
	VALUES (81,"BF28M7L",23,"04/10/19","04/15/19","","Versendet",3);

	INSERT INTO Bestellung (Be_ID,Be_Nr,KD_ID,Be_Datum,Be_VerDat,Be_LiefDat,Be_Status,L_ID) 
	VALUES (82,"QP45B6L",53,"11/28/19","12/01/19","12/03/19","Geliefert",2);

	INSERT INTO Bestellung (Be_ID,Be_Nr,KD_ID,Be_Datum,Be_VerDat,Be_LiefDat,Be_Status,L_ID) 
	VALUES (83,"DP32L8G",73,"03/11/20","03/30/20","04/06/20","Geliefert",2);

	INSERT INTO Bestellung (Be_ID,Be_Nr,KD_ID,Be_Datum,Be_VerDat,Be_LiefDat,Be_Status,L_ID) 
	VALUES (84,"VW39U4D",84,"10/02/20","","","In bearbeitung",2);

	INSERT INTO Bestellung (Be_ID,Be_Nr,KD_ID,Be_Datum,Be_VerDat,Be_LiefDat,Be_Status,L_ID) 
	VALUES (85,"MG00C0C",35,"11/23/20","11/27/20","11/30/20","Geliefert",2);

	INSERT INTO Bestellung (Be_ID,Be_Nr,KD_ID,Be_Datum,Be_VerDat,Be_LiefDat,Be_Status,L_ID) 
	VALUES (86,"WS43X9W",58,"10/05/20","","","In bearbeitung",2);

	INSERT INTO Bestellung (Be_ID,Be_Nr,KD_ID,Be_Datum,Be_VerDat,Be_LiefDat,Be_Status,L_ID) 
	VALUES (87,"UB64F0B",87,"05/21/20","","","Storniert",4);

	INSERT INTO Bestellung (Be_ID,Be_Nr,KD_ID,Be_Datum,Be_VerDat,Be_LiefDat,Be_Status,L_ID) 
	VALUES (88,"ZE43Z5Q",88,"10/05/20","10/07/20","","Versendet",4);

	INSERT INTO Bestellung (Be_ID,Be_Nr,KD_ID,Be_Datum,Be_VerDat,Be_LiefDat,Be_Status,L_ID) 
	VALUES (89,"XS95H1L",88,"09/24/20","10/05/20","","Versendet",1);

	INSERT INTO Bestellung (Be_ID,Be_Nr,KD_ID,Be_Datum,Be_VerDat,Be_LiefDat,Be_Status,L_ID) 
	VALUES (90,"GT51W4V",90,"01/13/20","05/03/20","09/04/20","Geliefert",1);

	--91-100--
	INSERT INTO Bestellung (Be_ID,Be_Nr,KD_ID,Be_Datum,Be_VerDat,Be_LiefDat,Be_Status,L_ID) 
	VALUES (91,"BF28M7L",23,"04/10/19","04/15/19","","Versendet",3);

	INSERT INTO Bestellung (Be_ID,Be_Nr,KD_ID,Be_Datum,Be_VerDat,Be_LiefDat,Be_Status,L_ID) 
	VALUES (92,"QP58B6L",40,"11/28/19","12/01/19","12/03/19","Geliefert",2);

	INSERT INTO Bestellung (Be_ID,Be_Nr,KD_ID,Be_Datum,Be_VerDat,Be_LiefDat,Be_Status,L_ID) 
	VALUES (93,"D432L8G",73,"03/11/20","03/30/20","04/06/20","Geliefert",2);

	INSERT INTO Bestellung (Be_ID,Be_Nr,KD_ID,Be_Datum,Be_VerDat,Be_LiefDat,Be_Status,L_ID) 
	VALUES (94,"VW3944D",84,"10/02/20","","","In bearbeitung",2);

	INSERT INTO Bestellung (Be_ID,Be_Nr,KD_ID,Be_Datum,Be_VerDat,Be_LiefDat,Be_Status,L_ID) 
	VALUES (95,"MG00C0C",35,"11/23/20","11/27/20","11/30/20","Geliefert",2);

	INSERT INTO Bestellung (Be_ID,Be_Nr,KD_ID,Be_Datum,Be_VerDat,Be_LiefDat,Be_Status,L_ID) 
	VALUES (96,"WS432CW",58,"10/05/20","","","In bearbeitung",2);

	INSERT INTO Bestellung (Be_ID,Be_Nr,KD_ID,Be_Datum,Be_VerDat,Be_LiefDat,Be_Status,L_ID) 
	VALUES (97,"UB64BOF",40,"05/21/20","","","Storniert",4);

	INSERT INTO Bestellung (Be_ID,Be_Nr,KD_ID,Be_Datum,Be_VerDat,Be_LiefDat,Be_Status,L_ID) 
	VALUES (98,"ZE43Z4L",88,"05/21/20","","","Storniert",4);

	INSERT INTO Bestellung (Be_ID,Be_Nr,KD_ID,Be_Datum,Be_VerDat,Be_LiefDat,Be_Status,L_ID) 
	VALUES (99,"XL95H1L",88,"05/21/20","","","Storniert",4);

	INSERT INTO Bestellung (Be_ID,Be_Nr,KD_ID,Be_Datum,Be_VerDat,Be_LiefDat,Be_Status,L_ID) 
	VALUES (100,"GPG1W4V",90,"05/21/20","","","Storniert",4);


	select * from bestellung;

	SELECT * FROM bestellung WHERE Be_Status = "Geliefert" ORDER BY Be_NR DESC;
	SELECT * FROM bestellung WHERE Be_Status = "Storniert" ORDER BY Be_NR DESC;
	SELECT * FROM bestellung WHERE Be_Status = "In bearbeitung" ORDER BY Be_NR DESC;
	SELECT * FROM bestellung WHERE Be_Status = "Versendet" ORDER BY Be_NR DESC;

	SELECT DISTINCT COUNT(BE_ID) AS Cancelled_Orders FROM Bestellung WHERE Be_Status='Storniert';
	SELECT COUNT(BE_ID) AS Delivered_Orders FROM Bestellung WHERE Be_Status = 'Geliefert';
	SELECT COUNT(BE_ID) AS Sent_Orders FROM Bestellung WHERE Be_Status = 'Versendet';
	SELECT COUNT(BE_ID) AS Processing_Orders FROM Bestellung WHERE Be_Status = 'In bearbeitung';


	--Position--


	DROP TABLE IF EXISTS POSITION;
	CREATE TABLE POSITION (
		PO_ID INTEGER NOT NULL AUTO_INCREMENT,
		MOE_ID INTEGER NOT NULL,
		PO_ANZAHL INTEGER NOT NULL,
		PO_PREIS DEC (8,2),
		BE_ID INTEGER NOT NULL,
		PRIMARY KEY (PO_ID),
		FOREIGN KEY (MOE_ID) REFERENCES MOEBEL (MOE_ID),
		FOREIGN KEY (BE_ID) REFERENCES BESTELLUNG (BE_ID)

							);
		
	Insert into Position (Moe_ID,PO_Anzahl,PO_Preis,Be_ID) values(101,1,309.00,4); 
	Insert into Position (Moe_ID,PO_Anzahl,PO_Preis,Be_ID) values(106,1,539.00,4);
	Insert into Position (Moe_ID,PO_Anzahl,PO_Preis,Be_ID) values(120,4,500.00,4);
	Insert into Position (Moe_ID,PO_Anzahl,PO_Preis,Be_ID) values(11,6,299.40,7); 
	Insert into Position (Moe_ID,PO_Anzahl,PO_Preis,Be_ID) values(44,6, 500.00,7);
	Insert into Position (Moe_ID,PO_Anzahl,PO_Preis,Be_ID) values(1,2,279.8,14);
	Insert into Position (Moe_ID,PO_Anzahl,PO_Preis,Be_ID) values(28,1,55,14);
	Insert into Position (Moe_ID,PO_Anzahl,PO_Preis,Be_ID) values(38,1,65,14);
	Insert into Position (Moe_ID,PO_Anzahl,PO_Preis,Be_ID) values(	48	,	1	,	129	,	14	);
	Insert into Position (Moe_ID,PO_Anzahl,PO_Preis,Be_ID) values(	121	,	1	,	428.9	,	19	);
	Insert into Position (Moe_ID,PO_Anzahl,PO_Preis,Be_ID) values(	97	,	1	,	259	,	24	);
	Insert into Position (Moe_ID,PO_Anzahl,PO_Preis,Be_ID) values(	102	,	1	,	249.9	,	24	);
	Insert into Position (Moe_ID,PO_Anzahl,PO_Preis,Be_ID) values(	94	,	1	,	599	,	27	);
	Insert into Position (Moe_ID,PO_Anzahl,PO_Preis,Be_ID) values(	77	,	1	,	199	,	27	);
	Insert into Position (Moe_ID,PO_Anzahl,PO_Preis,Be_ID) values(	120	,	1	,	849.9	,	29	);
	Insert into Position (Moe_ID,PO_Anzahl,PO_Preis,Be_ID) values(	107	,	1	,	499	,	29	);
	Insert into Position (Moe_ID,PO_Anzahl,PO_Preis,Be_ID) values(	113	,	4	,	2000	,	29	);
	Insert into Position (Moe_ID,PO_Anzahl,PO_Preis,Be_ID) values(	35	,	1	,	95	,	29	);
	Insert into Position (Moe_ID, PO_Anzahl, PO_Preis, Be_ID) values(	84	,	1	,	320	,	29	);
	Insert into Position (Moe_ID, PO_Anzahl, PO_Preis, Be_ID) values(	2	,	1	,	69.9	,	37	);
	Insert into Position (Moe_ID, PO_Anzahl, PO_Preis, Be_ID) values(	22	,	1	,	99.99	,	37	);
	Insert into Position (Moe_ID, PO_Anzahl, PO_Preis, Be_ID) values(	7	,	2	,	199.8	,	39	);
	Insert into Position (Moe_ID, PO_Anzahl, PO_Preis, Be_ID) values(	9	,	3	,	107.7	,	39	);
	Insert into Position (Moe_ID, PO_Anzahl, PO_Preis, Be_ID) values(	35	,	2	,	190	,	39	);
	Insert into Position (Moe_ID, PO_Anzahl, PO_Preis, Be_ID) values(	120	,	6	,	539.4	,	39	);
	Insert into Position (Moe_ID, PO_Anzahl, PO_Preis, Be_ID) values(	67	,	2	,	378	,	41	);
	Insert into Position (Moe_ID, PO_Anzahl, PO_Preis, Be_ID) values(	9	,	3	,	107.7,	62	);
	Insert into Position (Moe_ID, PO_Anzahl, PO_Preis, Be_ID) values(	56	,	1	,	279.9	,	62	);
	Insert into Position (Moe_ID, PO_Anzahl, PO_Preis, Be_ID) values(	50	,	2	,	278	,	62	);
	Insert into Position (Moe_ID, PO_Anzahl, PO_Preis, Be_ID) values(	89	,	1	,	459	,	41	);
	Insert into Position (Moe_ID, PO_Anzahl, PO_Preis, Be_ID) values(	121	,	5	,	2144.5	,	42	);
	Insert into Position (Moe_ID, PO_Anzahl, PO_Preis, Be_ID) values(	120	,	6	,	5094	,	44	);
	Insert into Position (Moe_ID, PO_Anzahl, PO_Preis, Be_ID) values(	17	,	2	,	139.8	,	49	);
	Insert into Position (Moe_ID, PO_Anzahl, PO_Preis, Be_ID) values(	33	,	7	,	700	,	51	);
	Insert into Position (Moe_ID, PO_Anzahl, PO_Preis, Be_ID) values(	47	,	6	,	354	,	52	);
	Insert into Position (Moe_ID, PO_Anzahl, PO_Preis, Be_ID) values(	98	,	3	,	837	,	52	);
	Insert into Position (Moe_ID, PO_Anzahl, PO_Preis, Be_ID) values(	56	,	1	,	279.9	,	54	);
	Insert into Position (Moe_ID, PO_Anzahl, PO_Preis, Be_ID) values(	111	,	4	,	275.6	,	56	);
	Insert into Position (Moe_ID, PO_Anzahl, PO_Preis, Be_ID) values(	112	,	6	,	539.4	,	57	);
	Insert into Position (Moe_ID, PO_Anzahl, PO_Preis, Be_ID) values(	2	,	7	,	489.3	,	57	);
	Insert into Position (Moe_ID, PO_Anzahl, PO_Preis, Be_ID) values(	12	,	3	,	149.7	,	57	);
	Insert into Position (Moe_ID, PO_Anzahl, PO_Preis, Be_ID) values(	22	,	5	,	499.95	,	57	);
	Insert into Position (Moe_ID, PO_Anzahl, PO_Preis, Be_ID) values(	34	,	5	,	475	,	64	);
	Insert into Position (Moe_ID, PO_Anzahl, PO_Preis, Be_ID) values(	36	,	2	,	190	,	64	);
	Insert into Position (Moe_ID, PO_Anzahl, PO_Preis, Be_ID) values(	120	,	6	,	5094	,	64	);
	Insert into Position (Moe_ID, PO_Anzahl, PO_Preis, Be_ID) values(	16	,	4	,	399.6	,	66	);
	Insert into Position (Moe_ID, PO_Anzahl, PO_Preis, Be_ID) values(	61	,	6	,	2759.4	,	66	);
	Insert into Position (Moe_ID, PO_Anzahl, PO_Preis, Be_ID) values(	96	,	3	,	1797	,	74	);
	Insert into Position (Moe_ID, PO_Anzahl, PO_Preis, Be_ID) values(	50	,	2	,	278	,	76	);
	Insert into Position (Moe_ID, PO_Anzahl, PO_Preis, Be_ID) values(	96	,	6	,	3594	,	81	);
	Insert into Position (Moe_ID, PO_Anzahl, PO_Preis, Be_ID) values(	42	,	3	,	297	,	86	);
	Insert into Position (Moe_ID, PO_Anzahl, PO_Preis, Be_ID) values(	31	,	3	,	585	,	94	);
	Insert into Position (Moe_ID, PO_Anzahl, PO_Preis, Be_ID) values(	28	,	3	,	465	,	94	);
	Insert into Position (Moe_ID, PO_Anzahl, PO_Preis, Be_ID) values(	11	,	7	,	349.3	,	2	);
	Insert into Position (Moe_ID, PO_Anzahl, PO_Preis, Be_ID) values(	2	,	1	,	69.9	,	2	);
	Insert into Position (Moe_ID, PO_Anzahl, PO_Preis, Be_ID) values(	77	,	5	,	995	,	2	);
	Insert into Position (Moe_ID, PO_Anzahl, PO_Preis, Be_ID) values(	54	,	1	,	199.9	,	2	);
	Insert into Position (Moe_ID, PO_Anzahl, PO_Preis, Be_ID) values(	34	,	2	,	190	,	6	);
	Insert into Position (Moe_ID, PO_Anzahl, PO_Preis, Be_ID) values(	3	,	2	,	179.8	,	6	),
		(	13	,	4	,	355.6	,	9	),
		(	68	,	3	,	567	,	11	),
		(	90	,	5	,	2295	,	11	),
		(	101	,	2	,	798	,	12	),
		(	5	,	4	,	343.6	,	12	),
		(	113	,	1	,	149	,	16	),
		(	46	,	6	,	354	,	16	),
		(	53	,	3	,	597	,	26	),
		(	12	,	3	,	149.7	,	26	),
		(	25	,	5	,	349.5	,	34	),
		(	55	,	5	,	999.5	,	36	),
		(	65	,	5	,	1290	,	67	),
		(	75	,	1	,	149	,	69	),
		(	85	,	5	,	1795	,	71	),
		(	95	,	3	,	1797	,	71	),
		(	105	,	1	,	68.9	,	71	),
		(	115	,	5	,	3104.95	,	77	),
		(	5	,	5	,	429.5	,	77	),
		(	10	,	2	,	71.8	,	77	),
		(	15	,	1	,	99.9	,	77	),
		(	25	,	7	,	489.3	,	79	),
		(	30	,	5	,	575	,	79	),
		(	35	,	4	,	380	,	82	),
		(	45	,	3	,	327	,	82	),
		(	50	,	5	,	695	,	84	),
		(	55	,	2	,	399.8	,	84	),
		(	60	,	3	,	1379.7	,	84	),
		(	65	,	4	,	1032	,	87	),
		(	70	,	6	,	1679.4	,	92	),
		(	75	,	5	,	745	,	92	),
		(	85	,	5	,	1795	,	95	),
		(	110	,	4	,	596	,	1	),
		(	89	,	7	,	349.3	,	1	),
		(	63	,	2	,	378	,	1	),
		(	6	,	4	,	516	,	3	),
		(	97	,	7	,	413	,	3	),
		(	19	,	2	,	177.8	,	5	),
		(	79	,	6	,	1199.4	,	8	),
		(	74	,	4	,	1032	,	8	),
		(	1	,	5	,	995	,	8	),
		(	88	,	7	,	699.93	,	8	),
		(	26	,	3	,	419.7	,	8	),
		(	26	,	3	,	257.7	,	10	),
		(	34	,	3	,	599.7	,	10	),
		(	15	,	5	,	249.5	,	13	),
		(	74	,	5	,	475	,	15	),
		(	112	,	3	,	149.7	,	17	),
		(	80	,	4	,	796	,	18	),
		(	11	,	7	,	699.3	,	20	),
		(	22	,	2	,	559.8	,	20	),
		(	115	,	6	,	2759.4	,	20	),
		(	120	,	6	,	539.4	,	20	),
		(	17	,	4	,	339.6	,	21	),
		(	57	,	2	,	718	,	21	),
		(	24	,	2	,	559.8	,	21	),
		(	49	,	2	,	138	,	21	),
		(	84	,	7	,	973	,	21	),
		(	49	,	7	,	413	,	21	),
		(	22	,	3	,	417	,	21	),
		(	107	,	2	,	919.8	,	22	),
		(	44	,	7	,	5943	,	22	),
		(	117	,	3	,	299.7	,	22	),
		(	55	,	7	,	1043	,	23	),
		(	4	,	4	,	1196	,	25	),
		(	104	,	5	,	1399.5	,	28	),
		(	74	,	1	,	279.9	,	30	),
		(	22	,	5	,	449.5	,	30	),
		(	23	,	7	,	910	,	30	),
		(	35	,	1	,	210.9	,	31	),
		(	53	,	6	,	1134	,	31	),
		(	73	,	3	,	417	,	31	),
		(	70	,	4	,	2483.96	,	32	),
		(	96	,	2	,	998	,	32	),
		(	68	,	1	,	680	,	32	),
		(	3	,	6	,	419.4	,	32	),
		(	5	,	1	,	49	,	33	),
		(	95	,	2	,	398	,	33	),
		(	70	,	2	,	479.8	,	33	),
		(	84	,	2	,	199.8	,	33	),
		(	35	,	7	,	3219.3	,	33	),
		(	68	,	4	,	796	,	35	),
		(	1	,	3	,	1497	,	35	),
		(	13	,	4	,	796	,	38	),
		(	24	,	1	,	99.9	,	38	),
		(	27	,	2	,	218	,	40	),
		(	20	,	5	,	699.5	,	40	),
		(	4	,	4	,	1196	,	43	),
		(	48	,	6	,	2394	,	45	),
		(	37	,	7	,	693	,	45	),
		(	103	,	3	,	299.7	,	46	),
		(	104	,	6	,	594	,	46	),
		(	59	,	2	,	718	,	46	),
		(	82	,	1	,	99	,	47	),
		(	107	,	3	,	417	,	1	),
		(	30	,	7	,	699.3	,	1	),
		(	15	,	3	,	345	,	1	),
		(	63	,	5	,	3104.95	,	3	),
		(	46	,	1	,	95	,	3	),
		(	80	,	7	,	489.3	,	5	),
		(	74	,	4	,	2720	,	5	),
		(	78	,	5	,	2495	,	8	),
		(	39	,	7	,	3493	,	8	),
		(	51	,	6	,	1170	,	10	),
		(	66	,	5	,	344.5	,	10	),
		(	33	,	6	,	2813.4	,	13	),
		(	83	,	6	,	414	,	13	),
		(	5	,	3	,	689.7	,	13	),
		(	48	,	2	,	169.8	,	13	),
		(	106	,	7	,	832.93	,	13	),
		(	39	,	1	,	199	,	13	),
		(	82	,	6	,	299.4	,	15	),
		(	75	,	1	,	210.9	,	15	),
		(	90	,	6	,	894	,	17	),
		(	82	,	7	,	1959.3	,	17	),
		(	96	,	7	,	559.3	,	18	),
		(	81	,	7	,	665	,	20	),
		(	7	,	4	,	620	,	20	),
		(	96	,	4	,	380	,	21	),
		(	38	,	1	,	118.99	,	21	),
		(	65	,	6	,	690	,	22	),
		(	113	,	1	,	459.9	,	22	),
		(	14	,	3	,	1379.7	,	22	),
		(	38	,	3	,	1497	,	23	),
		(	63	,	4	,	260	,	25	),
		(	110	,	3	,	327	,	28	),
		(	82	,	1	,	199	,	30	),
		(	114	,	1	,	99.9	,	31	),
		(	95	,	7	,	1959.3	,	32	),
		(	111	,	4	,	1119.6	,	33	),
		(	72	,	6	,	690	,	35	),
		(	115	,	7	,	1959.3	,	35	),
		(	77	,	5	,	4245	,	35	),
		(	35	,	5	,	2295	,	35	),
		(	1	,	5	,	325	,	35	),
		(	54	,	3	,	149.7	,	38	),
		(	79	,	4	,	1839.6	,	38	),
		(	103	,	1	,	195	,	38	),
		(	23	,	7	,	559.3	,	40	),
		(	85	,	2	,	237.98	,	40	),
		(	102	,	2	,	598	,	40	),
		(	41	,	7	,	1323	,	40	),
		(	92	,	3	,	209.7	,	43	),
		(	104	,	4	,	596	,	43	),
		(	118	,	6	,	2994	,	45	),
		(	99	,	5	,	499.95	,	45	),
		(	89	,	1	,	849	,	45	),
		(	20	,	7	,	1323	,	46	),
		(	63	,	3	,	209.7	,	47	),
		(	54	,	6	,	2754	,	48	),
		(	28	,	2	,	718	,	50	),
		(	27	,	2	,	278	,	53	),
		(	24	,	4	,	2396	,	55	),
		(	77	,	2	,	138	,	55	),
		(	22	,	5	,	245	,	55	),
		(	72	,	6	,	780	,	55	),
		(	88	,	5	,	1399.5	,	55	),
		(	46	,	7	,	3219.3	,	58	),
		(	57	,	4	,	199.6	,	58	),
		(	15	,	5	,	945	,	59	),
		(	114	,	3	,	1406.7	,	59	),
		(	114	,	7	,	1819.93	,	59	),
		(	40	,	7	,	1959.3	,	100	),
		(	35	,	7	,	3219.3	,	60	),
		(	40	,	7	,	1959.3	,	60	),
		(	43	,	4	,	2396	,	60	),
		(	10	,	1	,	139.9	,	61	),
		(	70	,	4	,	796	,	61	),
		(	114	,	5	,	399.5	,	61	),
		(	68	,	5	,	499.5	,	63	),
		(	51	,	1	,	620.99	,	63	),
		(	120	,	4	,	1596	,	63	),
		(	82	,	2	,	199.8	,	65	),
		(	49	,	4	,	275.6	,	65	),
		(	11	,	6	,	1794	,	65	),
		(	67	,	1	,	259.99	,	65	),
		(	86	,	1	,	620.99	,	68	),
		(	89	,	5	,	444.5	,	68	),
		(	86	,	1	,	259.99	,	68	),
		(	52	,	7	,	2093	,	68	),
		(	121	,	3	,	1077	,	68	),
		(	6	,	1	,	499	,	70	),
		(	3	,	2	,	260	,	72	),
		(	43	,	5	,	2295	,	73	),
		(	32	,	7	,	783.3	,	75	),
		(	32	,	3	,	177	,	78	),
		(	66	,	6	,	1170	,	80	),
		(	95	,	4	,	275.6	,	83	),
		(	69	,	6	,	671.4	,	83	),
		(	104	,	4	,	756	,	83	),
		(	99	,	5	,	594.95	,	83	),
		(	43	,	3	,	417	,	83	),
		(	50	,	6	,	479.4	,	85	),
		(	11	,	2	,	278	,	85	),
		(	109	,	7	,	1365	,	88	),
		(	71	,	6	,	2154	,	88	),
		(	29	,	6	,	2994	,	89	),
		(	38	,	4	,	279.6	,	89	),
		(	54	,	1	,	95	,	90	),
		(	110	,	5	,	2495	,	91	),
		(	69	,	1	,	279.9	,	93	),
		(	95	,	4	,	275.6	,	96	),
		(	86	,	1	,	259.99	,	97	),
		(	85	,	2	,	237.98	,98	),
		(	80	,	7	,	489.3	,	99	);
		
		
	SELECT * FROM position;
	
	
