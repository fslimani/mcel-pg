CREATE TABLE public."Documents"
(
    "DocumentId" serial NOT NULL,
    "Name" character varying(60) NOT NULL,
    PRIMARY KEY ("DocumentId")
);
CREATE TABLE public."Categories"
(
    "CategorieId" serial NOT NULL,
    "Name" character varying(60) NOT NULL,
     "DocumentId" integer,
    PRIMARY KEY ("CategorieId"),
    CONSTRAINT "DocumentId_FK" FOREIGN KEY ("DocumentId")
    REFERENCES public."Documents" ("DocumentId") MATCH SIMPLE
);
CREATE TABLE public."Textes"
(
    "TexteId" serial NOT NULL,
    "Name" character varying(60) NOT NULL,
    "Titre" character varying(255) NOT NULL,
     "CategorieId" integer,
    PRIMARY KEY ("TexteId"),
    CONSTRAINT "CategorieId_FK" FOREIGN KEY ("CategorieId")
    REFERENCES public."Categories" ("CategorieId") MATCH SIMPLE
);
CREATE TABLE public."Initialisations"
(
    "InitialisationId" serial NOT NULL,
    "InitialiseLe" timestamp with time zone,
    "TexteId" integer,
    PRIMARY KEY ("InitialisationId"),
    CONSTRAINT "TexteId_FK" FOREIGN KEY ("TexteId")
    REFERENCES public."Textes" ("TexteId") MATCH SIMPLE
);
CREATE TABLE public."Acces"
(
    "AccesId" serial NOT NULL,
    "Name" character varying(100) NOT NULL,
    "AccesLe" timestamp with time zone,
    PRIMARY KEY ("AccesId")
   
);
CREATE TABLE public."Appel"
(
    "AppelId" serial NOT NULL,
    "Name" character varying(60) NOT NULL,
    "Description" character varying(255),
    "ObserveLe" timestamp with time zone,
    "Type" character varying(60),
    "Result" character varying(60) NOT NULL,
    PRIMARY KEY ("AppelId")
);
