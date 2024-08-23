CREATE TABLE User_Ratings ( 
    UserID NUMBER, 
    MovieID NUMBER, 
    Rating NUMBER(2,1), 
    RatingDate DATE, 
    PRIMARY KEY (UserID, MovieID), 
    FOREIGN KEY (UserID) REFERENCES Users(UserID), 
    FOREIGN KEY (MovieID) REFERENCES Movies(MovieID) 
);