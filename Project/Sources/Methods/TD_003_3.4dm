//%attributes = {}
var $curs_evenement; $nbreBoutique; $i : Integer
var $id_evenement : Integer
var $nom : Text

ARRAY LONGINT:C221($aIDs; 0)

Begin SQL
	
	SELECT ID FROM EVENEMENT
	INTO :$aIDs;
	
End SQL

For ($curs_evenement; 1; Size of array:C274($aIDs))
	
	$nbreBoutique:=Random:C100%5  // 0....4
	For ($i; 1; $nbreBoutique)
		
		$nom:="boutique - "+String:C10($i)
		
		$id_evenement:=$aIDs{$curs_evenement}
		
		Begin SQL
			INSERT INTO BOUTIQUE
			(Nom, ID_Evenement)
			VALUES
			(:$nom, :$id_evenement);
		End SQL
		
	End for 
	
End for 