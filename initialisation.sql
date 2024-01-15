#Ajouter un nouveau document
insert into  public."Documents"("Name") values ('Document1'); 

#Ajouter une ou plusieurs categories
insert into  public."Categories"("Name", "DocumentId") values ('Entete',1); 
insert into  public."Categories"("Name", "DocumentId") values ('Corp',1); 
insert into  public."Categories"("Name", "DocumentId") values ('PiedDePage',1); 

#Ajouter un ou plusieurs textes
insert into  public."Textes"("Name", "CategorieId", "Titre") values ('IPN',1,'Nom'); 
insert into  public."Textes"("Name", "CategorieId", "Titre") values ('IPP',1,'Prénom'); 

insert into  public."Textes"("Name", "CategorieId", "Titre") values ('T1',2,'Titre1'); 
insert into  public."Textes"("Name", "CategorieId", "Titre") values ('C1',2,'Contenu1'); 
insert into  public."Textes"("Name", "CategorieId", "Titre") values ('T2',2,'Titre2'); 
insert into  public."Textes"("Name", "CategorieId", "Titre") values ('C2',2,'Contenu2'); 

insert into  public."Textes"("Name", "CategorieId", "Titre") values ('R1',3,'Référence1'); 
insert into  public."Textes"("Name", "CategorieId", "Titre") values ('R2',3,'Référence2'); 
insert into  public."Textes"("Name", "CategorieId", "Titre") values ('R3',3,'Référence3'); 
