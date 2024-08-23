CREATE TABLE Movie_Cast ( 
    MovieID NUMBER, 
    CastID NUMBER, 
    Role VARCHAR2(50), 
    PRIMARY KEY (MovieID, CastID), 
    FOREIGN KEY (MovieID) REFERENCES Movies(MovieID), 
    FOREIGN KEY (CastID) REFERENCES Cast(CastID) 
);