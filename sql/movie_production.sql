CREATE TABLE Movie_Production ( 
    MovieID NUMBER, 
    CompanyID NUMBER, 
    PRIMARY KEY (MovieID, CompanyID), 
    FOREIGN KEY (MovieID) REFERENCES Movies(MovieID), 
    FOREIGN KEY (CompanyID) REFERENCES Production_Companies(CompanyID) 
);