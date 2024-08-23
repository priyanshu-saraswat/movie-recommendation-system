CREATE TABLE User_Watchlist ( 
    UserID NUMBER, 
    MovieID NUMBER, 
    AddedDate DATE, 
    PRIMARY KEY (UserID, MovieID), 
    FOREIGN KEY (UserID) REFERENCES Users(UserID), 
    FOREIGN KEY (MovieID) REFERENCES Movies(MovieID) 
);