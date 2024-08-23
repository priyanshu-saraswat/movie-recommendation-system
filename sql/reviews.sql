CREATE TABLE Reviews ( 
    ReviewID NUMBER PRIMARY KEY, 
    UserID NUMBER, 
    MovieID NUMBER, 
    ReviewText CLOB, 
    ReviewDate DATE, 
    FOREIGN KEY (UserID) REFERENCES Users(UserID), 
    FOREIGN KEY (MovieID) REFERENCES Movies(MovieID) 
);