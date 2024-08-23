CREATE TABLE Movie_Awards ( 
    MovieID NUMBER, 
    AwardID NUMBER, 
    PRIMARY KEY (MovieID, AwardID), 
    FOREIGN KEY (MovieID) REFERENCES Movies(MovieID), 
    FOREIGN KEY (AwardID) REFERENCES Awards(AwardID) 
);
