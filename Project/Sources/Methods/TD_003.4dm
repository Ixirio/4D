//%attributes = {}
Begin SQL
	
	ALTER TABLE BOUTIQUE ADD CONSTRAINT fk_evenement
	FOREIGN KEY (ID_Evenement) REFERENCES EVENEMENT (ID)
	ON DELETE RESTRICT ON UPDATE RESTRICT;
	
End SQL