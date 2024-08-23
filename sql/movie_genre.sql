CREATE TABLE Movie_Genre ( 
    MovieID NUMBER, 
    GenreID NUMBER, 
    PRIMARY KEY (MovieID, GenreID), 
    FOREIGN KEY (MovieID) REFERENCES Movies(MovieID), 
    FOREIGN KEY (GenreID) REFERENCES Genres(GenreID) 
);
