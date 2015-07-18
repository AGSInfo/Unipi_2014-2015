DELIMITER $$


-- Aggiornamento in tempo reale della ridondanza ingredienti ricetta

CREATE TRIGGER CompliaIngredientiRicetta BEFORE INSERT ON Passo
FOR EACH ROW
BEGIN
	IF NEW.Ingrediente is not NULL THEN
		SET @ingredientePresente = (Select Count(Distinct Ingrediente) from IngredienteRicetta IR
								where IR.Ricetta = NEW.Ricetta and IR.Ingrediente = NEW.Ingrediente);
		if(@ingredientePresente = 0) THEN
				INSERT INTO IngredienteRicetta (Ricetta,Ingrediente,Quantita) VALUES (NEW.Ricetta,NEW.Ingrediente,NEW.QuantitaUtilizzata);
		else
				UPDATE IngredienteRicetta SET Quantita = Quantita + NEW.QuantitaUtilizzata WHERE Ingrediente = NEW.Ingrediente;
		end if;
    end if;
END $$

Delimiter ;
-- Rimozione
DELIMITER $$

CREATE TRIGGER RimuoviIngredientiRicetta AFTER DELETE ON Passo
FOR EACH ROW
BEGIN
	IF OLD.Ingrediente is not NULL THEN
		SET @ingredientePresente = (Select Count(Distinct Ingrediente) from IngredienteRicetta IR
								where IR.Ricetta = OLD.Ricetta and IR.Ingrediente = OLD.Ingrediente);
		if(@ingredientePresente = 1) THEN
				UPDATE IngredienteRicetta SET Quantita = Quantita - OLD.QuantitaUtilizzata WHERE Ingrediente = OLD.Ingrediente;
		end if;
    end if;
END $$

Delimiter ;

Delimiter $$
/*
Create TRIGGER PrezzoMenu BEFORE INSERT ON Menu_Piatto FOR EACH ROW
BEGIN
    SET @IngredientiPiatto = (Select count(Distinct IR.Ingrediente)
							 from Piatto P inner join Ricetta R on P.Ricetta = R.IdRicetta
							 inner join IngredienteRicetta IR on R.IdRicetta = IR.Ricetta
                             where P.IdPiatto = New.IdPiatto);
	SET @IngredientiDisponibili = (Select count(distinct IR.Ingrediente) from Sede S
									inner join Magazzino M inner join Scaffale SC
									inner join Confezione C
									inner join IngredienteRicetta IR
                                    inner join Ricetta R
                                    inner join Piatto P
                                    inner join Menu ME
									on S.IdSede = M.IdSede and M.IdMagazzino = SC.IdMagazzino
									and SC.IdScaffale = C.Scaffale
									and P.Ricetta = R.IdRicetta and R.IdRicetta = IR.Ricetta
                                    and S.IdSede = ME.Sede
									where P.IdPiatto = NEW.IdPiatto
                                    and ME.IdMenu = NEW.IdMenu
                                    and C.DataConsegna <= current_date() + interval 3 day
                                    group by IR.Ingrediente having sum(C.QuantitaRimanente) >= (Select IR2.Quantita
																							    from IngredienteRicetta IR2 inner join Piatto P2 on IR2.Ricetta = P2.Ricetta
                                                                                                where P2.IdPiatto = NEW.IdPiatto
                                                                                                and IR2.Ingrediente = IR.Ingrediente));
     if @ingredientiDisponibili is NULL then
			SIGNAL SQLSTATE '45000'
			SET MESSAGE_TEXT = "ingredienti non disponibili per preparare il piatto";
    elseif @ingredientiPiatto > @ingredientiDisponibili then
			SIGNAL SQLSTATE '45000'
			SET MESSAGE_TEXT = "ingredienti non disponibili per preparare il piatto";
	else
		SET NEW.Prezzo = @ingredientiDisponibili;
						(Select sum(T.Prezzo) + sum(T.Prezzo)*0.2
                        from (Select Avg(C.PrezzoAcquisto) as Prezzo from Sede S
									inner join Magazzino M inner join Scaffale SC
									inner join Confezione C
									inner join IngredienteRicetta IR
                                    inner join Ricetta R
                                    inner join Piatto P
                                    inner join Menu ME
									on S.IdSede = M.IdSede and M.IdMagazzino = SC.IdMagazzino
									and SC.IdScaffale = C.Scaffale
									and P.Ricetta = R.IdRicetta and R.IdRicetta = IR.Ricetta
                                    and S.IdSede = ME.Sede
									where  P.IdPiatto = NEW.IdPiatto
                                    and ME.IdMenu = NEW.IdMenu
                                    and C.DataConsegna <= current_date() + interval 3 day
                                    group by IR.Ingrediente having sum(C.QuantitaRimanente) >=  (Select IR2.Quantita
																							    from IngredienteRicetta IR2 inner join Piatto P2 on IR2.Ricetta = P2.Ricetta
                                                                                                where P2.IdPiatto = NEW.IdPiatto
                                                                                                and IR2.Ingrediente = IR.Ingrediente)) as T);*/
##	end if;

## END $$

## DELIMITER ;
