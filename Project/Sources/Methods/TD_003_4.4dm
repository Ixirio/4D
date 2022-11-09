//%attributes = {}
var $id : Integer

ARRAY LONGINT:C221($aIDs; 0)
Begin SQL
	SELECT ID_Evenement FROM BOUTIQUE
	INTO :$aIDs;
End SQL

$id:=$aIDs{1}

Begin SQL
	DELETE FROM EVENEMENT WHERE ID = :$id;
End SQL