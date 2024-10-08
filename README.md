
# Movie Recommendation System

A comprehensive movie recommendation system leveraging advanced SQL techniques, including subqueries and BCNF normalization. This system allows users to explore movies based on various criteria such as main cast, genre, production companies, and more. 

## Features

- **Dynamic Movie Search**: Users can search for movies by title, cast, genre, and production company.
- **User Ratings & Reviews**: Users can rate movies and leave reviews, which influence the recommendations.
- **Watchlist Management**: Users can add movies to their personal watchlist for future viewing.
- **Award Information**: Discover movies based on awards they have won.
- **Production Company Insights**: Explore movies produced by specific production companies.

## Database Schema

- **Movies**: Stores basic movie information such as title, release year, duration, and language.
- **Cast**: Information about the actors, directors, and other crew members.
- **Genres**: Categorizes movies by genre.
- **Production_Companies**: Details about the companies that produced the movies.
- **Awards**: Information about the awards won by movies.
- **Users**: Manages user data, including ratings and reviews.
- **Associative Tables**: 
  - `Movie_Cast` - Links movies to their cast members.
  - `Movie_Genre` - Links movies to their genres.
  - `Movie_Production` - Links movies to their production companies.
  - `Movie_Awards` - Links movies to the awards they've won.
  - `User_Ratings` - Stores ratings given by users.
  - `User_Watchlist` - Tracks movies added to user watchlists.
  - `Reviews` - Stores user reviews for movies.


##  Usage

- **Search by Movie Title**: Enter the movie title to fetch its details.
- **Explore by Cast**: Input an actor's name to see the movies they are part of.
- **Filter by Genre**: Select a genre to explore movies in that category.
- **User Ratings & Reviews**: Rate and review movies, influencing future recommendations.
- **Manage Watchlist**: Add movies to your watchlist for future viewing.

## Example Queries

### Get Total Number of Movies in Database
```sql
SELECT COUNT(*) AS TotalMovies
FROM Movies;
```
### List all movies with their genres

```sql
SELECT M.Title, G.GenreName
FROM Movies M
JOIN Movie_Genre MG ON M.MovieID = MG.MovieID
JOIN Genres G ON MG.GenreID = G.GenreID;
```
### Find all movies by a specific actor

```sql
SELECT M.Title
FROM Movies M
JOIN Movie_Cast MC ON M.MovieID = MC.MovieID
JOIN Cast C ON MC.CastID = C.CastID
WHERE C.Name = 'Robert Downey Jr.';

```

### Top 5 Highest Rated Movies
```sql
SELECT M.Title, AVG(UR.Rating) AS AverageRating
FROM Movies M
JOIN User_Ratings UR ON M.MovieID = UR.MovieID
GROUP BY M.Title
ORDER BY AverageRating DESC
FETCH FIRST 5 ROWS ONLY;
```

### Retrive the User's Watchlist

```sql
SELECT M.Title, UW.AddedDate
FROM Movies M
JOIN User_Watchlist UW ON M.MovieID = UW.MovieID
WHERE UW.UserID = 1;
```#
