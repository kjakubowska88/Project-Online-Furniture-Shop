--JOINS--
	
	
	--Alle Kunden&Bestellungen--
	
	
	SELECT k.KD_ID, k.KD_NR, k.KD_Vname, k.KD_Name, b.Be_NR, b.Be_Datum, b.Be_VerDat
		FROM Bestellung AS b 
		RIGHT OUTER JOIN Kunde AS k ON k.KD_ID = b.KD_ID
		ORDER BY k.KD_ID ASC;
	
	
	--Kunden MIT bestellung-
	
	
	SELECT k.KD_NR, k.KD_Name, k.KD_Vname, b.Be_Nr, b.Be_Status
		FROM Kunde AS k 
		INNER JOIN Bestellung AS b ON k.KD_ID = b.KD_ID
		ORDER BY k.KD_NR;

		
	--Count Kunden ohne Bestellung--
	
	
	SELECT DISTINCT COUNT(kunde.KD_ID) AS Kunden_Ohne_Bestellung
		FROM Kunde
		LEFT OUTER JOIN Bestellung ON Bestellung.KD_ID = Kunde.KD_ID
		WHERE Be_NR IS NULL;
	
	
	--Bestellungen-Versendet--
	
	
	SELECT k.KD_ID, k.KD_NR, k.KD_Vname, k.KD_Name, b.Be_NR, b.Be_Datum, b.L_ID, l.L_Name 
		FROM Bestellung AS b
		INNER JOIN Kunde AS k ON k.KD_ID = b.KD_ID
		INNER JOIN Lieferant AS L ON b.L_ID = l.L_ID
		WHERE b.Be_status='Versendet'
		Order by b.Kd_ID;

		
	--Bestellung&Lieferant--


	SELECT l.L_Name, k.KD_ID, k.KD_NR, k.KD_Vname, k.KD_Name, b.Be_NR, b.Be_Datum
		FROM Kunde AS k
		INNER JOIN Bestellung AS b ON k.KD_ID = b.KD_ID
		LEFT JOIN lieferant as L ON b.L_ID = l.L_ID
		ORDER BY l.L_Name, KD_ID;
			
			
	--Bestellung&Kunde&Lieferant--

	
	SELECT k.KD_ID, k.KD_NR, k.KD_Vname, k.KD_Name, b.Be_NR, b.Be_Datum,	b.Be_VerDat, b.Be_Status, l.L_Verart, l.L_Name
		FROM Kunde AS k
		INNER JOIN Bestellung AS b ON b.KD_ID = k.KD_ID
		LEFT JOIN lieferant as L ON b.L_ID = l.L_ID
		ORDER BY k.KD_ID ASC;
		--ORDER BY RAND () LIMIT 15;
		
	--Count-Kunden&Bestellung--


	SELECT K.KD_ID, k.Kd_Nr, COUNT(b.BE_ID) AS Orders_total
		FROM Kunde as k
		LEFT JOIN Bestellung AS b ON b.KD_ID = k.KD_ID
		GROUP BY 1 
		ORDER BY Orders_Total ASC;
	
	
	--Count Bestellung-Pro-Kunde--
		
		
	SELECT k.KD_ID AS ID, k.KD_Name As NAME, k.KD_Vname AS VORNAME, 
		   k.KD_Email AS EMAIL, COUNT(b.Be_ID) AS ORDERS
		FROM Kunde AS K
		LEFT JOIN Bestellung AS b ON k.KD_ID = b.KD_ID
		GROUP BY k.KD_ID
		Order BY COUNT(DISTINCT b.BE_ID) DESC;
		
		
	--Full outerjoin Moebel ohne Bestellung--
		
		
	SELECT * FROM Moebel m
		LEFT JOIN  Position p ON m.Moe_id = p.Moe_id
		WHERE p.PO_ID IS NULL
		UNION
		SELECT * FROM  Moebel m
		RIGHT JOIN Position p ON m.Moe_id = p.Moe_id
		WHERE p.PO_ID is NULL;
				
	
-- VIEWS--

		
	--VIEW MITARBEITER AUS BERLIN--


	DROP VIEW IF EXISTS BERLINMA;
	CREATE VIEW BERLINMA AS
		SELECT Ma_ID, Ma_Vname, Ma_Name, Ma_PLZ, Ma_Email
		FROM Mitarbeiter
		WHERE Ma_Ort= 'Berlin';

		select * from BERLINMA;


	--VIEW COUNT MA / FUNKTION--
		
		
	DROP VIEW IF EXISTS MA_TOTAL;
	CREATE VIEW MA_TOTAL AS
		SELECT COUNT(MA_FUNK) As Anzahl, MA_FUNK as Funktion
		FROM Mitarbeiter
		GROUP BY MA_FUNK
		ORDER BY COUNT(Ma_FUNK) DESC;

		select * from MA_TOTAL;
		
		
	--VIEW MOEBEL&KLASSE IN WALNUSS--


		DROP VIEW IF EXISTS MoebelWalnuss;
		CREATE VIEW MoebelWalnuss AS
			SELECT m.Moe_Id, m.Moe_Name as MoebelStuck, m.Moe_ArtNr as ArtNr, 
				   m.Moe_Farbe as Farbe, h.HO_Name as Holz, k.KL_Name as Klasse
			FROM Moebel as m
			RIGHT JOIN Holzart as h ON m.HO_ID=h.HO_ID
			RIGHT JOIN Klasse as k ON m.KL_ID=k.KL_ID
			WHERE h.HO_ID ='5'  
			ORDER BY m.Moe_ID;
			
		select * from MoebelWalnuss;
		
	--VIEW BERLIN KUNDE--
	
	
	DROP VIEW IF EXISTS BerlinKunde;
	CREATE VIEW BerlinKunde AS
		SELECT KD_ID, KD_Name, KD_Vname, KD_Tel, KD_ort
		FROM Kunde
		WHERE KD_Ort = 'Berlin';
	select * from BerlinKunde;
	
	
	--VIEW BERLIN KUNDE MIT BESTELLUNG&STATUS--


	DROP VIEW IF EXISTS BER_KD_BESTELLUNG;
	CREATE VIEW BER_KD_BESTELLUNG AS
		SELECT k.KD_ID, k.KD_Name, k.KD_Vname, k.KD_Email, b.Be_Nr, b.Be_Status
		FROM Kunde as k
		RIGHT JOIN Bestellung as b ON k.KD_ID=b.KD_ID
		WHERE b.Be_Nr IS NOT NULL
		AND KD_Ort = 'Berlin'
		ORDER BY k.KD_ID;
	Select * from BER_KD_BESTELLUNG;
	
	
	--VIEW ORDERS TOTAL--
	
	
		DROP VIEW IF EXISTS Orders_total;
		CREATE VIEW Orders_total AS
			SELECT COUNT(BE_ID), BE_Status
			FROM Bestellung
			GROUP BY Be_Status
			ORDER BY SUM(BE_ID) DESC;
		SELECT * FROM Orders_total;
	
	
	--VIEW POSITION SCHRANK--
	
	
	DROP VIEW IF EXISTS PositionKlasse;
	CREATE VIEW PositionKlasse
		AS
		SELECT m.Moe_ID, m.Moe_Name, p.PO_ID, p.PO_Anzahl, k.KL_ID, k.KL_Name
		FROM Moebel AS m
		INNER JOIN Klasse AS k
		ON m.KL_ID = k.KL_ID	
		INNER JOIN Position AS p
		ON m.Moe_ID = p.Moe_ID
		WHERE k.KL_ID='5'
		ORDER BY m.Moe_ID ASC;

	SELECT * FROM PositionKlasse;
		
		
--TRANSAKTION--		
		
		
	--TRANSACTION RABATT--

	
		SELECT * FROM moebel
		ORDER BY Moe_Stand DESC;	

			SET TRANSACTION ISOLATION LEVEL REPEATABLE READ;
			UPDATE moebel SET Moe_VK = Moe_VK * 0.70 WHERE Moe_Stand > 100;
			UPDATE moebel SET Moe_VK = Moe_VK * 0.95 WHERE Moe_Stand > 65 and Moe_Stand <= 99;
		COMMIT;

	SELECT * FROM Moebel
	ORDER BY Moe_Stand DESC;	
	--ROLLBACK;

	
--PROCEDURES--

	
	--PROCEDURE LIEFERANT-BETSELLUNG--
	
		DROP PROCEDURE IF EXISTS p_Bestellung_Lieferant;
		
		
		DELIMITER //
		CREATE PROCEDURE p_Bestellung_Lieferant ()
		BEGIN
		SELECT b.Be_Nr, l.L_Name
		FROM Bestellung b INNER JOIN Lieferant l ON
		b.L_ID=l.L_ID;
		END //
		DELIMITER ;
		
		CALL p_Bestellung_Lieferant ();
	
	
	--PROCEDURE MITARBEITER--
	
	
	DROP PROCEDURE IF EXISTS filter_by_funktion;
		DELIMITER //
		CREATE PROCEDURE filter_by_funktion () 
			BEGIN 
				SELECT Ma_Funk AS Funktion, Ma_Name, Ma_Vname, Ma_Email 
				FROM Mitarbeiter
				ORDER BY Ma_Funk;
			END // 
		DELIMITER ;

		CALL filter_by_funktion ();	
	
				
	--PROCEDURE HOLZART--


		DROP PROCEDURE IF EXISTS filter_by_holzart;
		DELIMITER //
		CREATE PROCEDURE filter_by_holzart (p_HO_Name VARCHAR(100)) 
			BEGIN 
				DECLARE v_HO_Name VARCHAR(100);
				SET v_HO_Name = CONCAT('%', p_Ho_Name, '%');
				SELECT v_HO_Name;
				SELECT m.Moe_Name, h.Ho_Name 
				FROM Moebel as m 
				INNER JOIN Holzart as h
				ON h.HO_ID=m.HO_ID
				WHERE h.HO_Name Like v_Ho_Name;
			END // 
		DELIMITER ;

		CALL filter_by_Holzart ('uc');	
			
			
--TRIGGERS--


	--TRIGGER NEUER KUNDE---


		DROP TRIGGER trig_Neuer_Kunde;
		DELIMITER //
		CREATE TRIGGER trig_Neuer_Kunde BEFORE INSERT
		  ON Kunde FOR EACH ROW BEGIN
			DECLARE KD_ID INTEGER;
			IF (NEW.KD_ID IS NULL) THEN 
			SELECT MAX(KD_ID)+1 FROM Kunde INTO KD_ID;
			SET NEW.KD_id = KD_id;
			END IF;
		  END //

		DELIMITER ;

		INSERT  INTO Kunde (KD_Nr, KD_Vname, KD_Name, KD_PLZ, KD_Ort, KD_Email, KD_Tel)
		VALUES ("200", "Wolf", "Jan", "65195", "Wiesbaden", "janwolf@email.de", "198978473" );
		
		INSERT  INTO Kunde (KD_Nr, KD_Vname, KD_Name, KD_PLZ, KD_Ort, KD_Email, KD_Tel)
		VALUES ("201", "Schmidt", "Monika", "65185", "Wiesbaden", "monikaaa@email.de", "198978456773" );
		
		INSERT  INTO Kunde (KD_Nr, KD_Vname, KD_Name, KD_PLZ, KD_Ort, KD_Email, KD_Tel)
		VALUES ("202", "Wajser", "Anna", "65134", "Wiesbaden", "annawajser@email.de", "15897578473" );

			SELECT * FROM KUNDE;
			
			
	--TRIGGER NEUES LIEFERANT--
	
	
	--TABLE PROTOKOL--
		
		
	drop table if exists protokol;
		create table protokol (
		p_id integer primary key auto_increment,
		p_wo varchar(200),
		p_wann datetime,
		p_was varchar(200));

	Drop procedure if exists p_write_protokol;
	DELIMITER $$
	create procedure p_write_protokol (para_wo varchar(200), para_was varchar(200))
	begin
		insert into protokol (p_wo, p_wann, p_was)
		values (para_wo, now(), para_was);
	end $$
	DELIMITER ;
		
		
	--TIGGER LIEFERANT--
		
		
	drop trigger if exists tr_neue_Lief;

	DELIMITER $$

	create trigger tr_neue_Lief after insert on Lieferant for each row
	begin
		declare va_was varchar(200);
		DECLARE l_id INTEGER;
		set va_was = concat('Neue Lieferant: ', new.L_name , ',', new.L_VerArt , ',', new.L_Kontakt );
		call p_write_protokol('Lieferant', va_was);
	end $$
	DELIMITER ;

	select * from Lieferant;
	select * from protokol;
	Start transaction;

	insert into Lieferant (L_Name, L_VerArt, L_Kontakt) 
	values ('Panther', 'Lieferung bis Bordsteinkante', 'panther@panther.co.uk');
	select * from Lieferant;
	select * from Protokol;
	--ROLLBACK;	
	
	
	--TRIGGER NEUES HOLZ--
	
	
		drop trigger if exists tr_neue_Holz;
	DELIMITER //
	create trigger tr_neue_Holz after insert on Holzart for each row
	begin
		declare va_was varchar(100);
		set va_was = concat('Neues Holz: ', new.Ho_Name);
		call p_write_protokol('Holzart', va_was);
	end //
	DELIMITER ;

	select * from Holzart;
	select * from protokol;
	Start transaction;

	insert into Holzart (Ho_Name) values ('Erle');
	select * from Holzart;
	select * from Protokol;
	--ROLLBACK;	
	
	
	--TRIGGER HOLZ LÖSCHEN--
		
		
		drop trigger if exists tr_Holz_loeschen;
	delimiter //
	create trigger tr_Holz_loeschen after delete on Holzart for each row
	begin
		declare va_was varchar(200);
		set va_was = concat('Holzart gelöscht: ', old.Ho_Name);
		call p_write_protokol('Holzart', va_was);
	end //
	delimiter ;
	
	start transaction;
	
	delete from Holzart where Ho_Name = 'Erle';

	select * from Holzart;
	select * from protokol;
	--ROLLBACK;	
	
	
	--MITARBEITER NAME&EMAIL ÄNDERN--
	
	
	select * from Mitarbeiter LIMIT 10;
	
	drop trigger if exists tr_Ma_Name_Andern;
	delimiter //
	create trigger tr_Ma_Name_Andern after update on Mitarbeiter for each row
	begin
		declare va_was varchar(200);
		set va_was = concat('Name geändert von: ', old.Ma_Name, ' ');
		set va_was = concat(va_was, ' in: ', new.Ma_Name, ' ');
		call p_write_protokol('t_ma', va_was);
	end;
	//
	delimiter ;

	update Mitarbeiter set Ma_name = 'Hoffmann', Ma_Email = 'Hoffmannkarina@onet.eu' where Ma_name= 'Boone' and Ma_Email = 'massa.rutrum.magna@Phasellusvitae.co.uk';
	--ROLLBACK;

	select * from Mitarbeiter LIMIT 10;