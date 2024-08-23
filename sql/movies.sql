CREATE TABLE Movies ( 
    MovieID NUMBER PRIMARY KEY, 
    Title VARCHAR2(150), 
    ReleaseYear NUMBER, 
    Duration NUMBER,
    Language VARCHAR2(50), 
    Description CLOB 
);