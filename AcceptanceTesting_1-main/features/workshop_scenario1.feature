Feature: Search games by rating, selecting categories [E, T] and by type of audience.

  @gamesByRating
  Scenario: Filter games that contain the ratings ['E','T']
      Given a set of games
     | NAME                       | RELEASE DATE | DEVELOPER            | RATE   |
     | The Witcher 3: Wild Hunt   | 2015         | CD Projekt           | M      |
     | Splatoon                   | 2016         | Nintendo             | T      |
     | Super Smash Bros. Ultimate | 2018         | Bandai Namco Studios | E      |
     | The Last of Us             | 2013         | Naughty Dog          | M      |
      Given the user enters the ratings: ['E','T']
      When the user search games by ratings
      Then 2 games will match
      And the names of these games are
      | NAME                       |
      | Splatoon                   |
      | Super Smash Bros. Ultimate |
      And the following message is displayed: 2 games were found.

   @gamesByRating
   Scenario: Filter games by rating without finding result
       Given a set of games
      | NAME                       | RELEASE DATE | DEVELOPER            | RATE   |
      | The Witcher 3: Wild Hunt   | 2015         | CD Projekt           | M      |
      | Splatoon                   | 2016         | Nintendo             | T      |
      | Super Smash Bros. Ultimate | 2018         | Bandai Namco Studios | E      |
      | The Last of Us             | 2013         | Naughty Dog          | M      |
      Given the user enters the ratings: ['A']
      When the user search games by ratings
      Then 0 games will match
      And the following message is displayed: No game with the specified rating was found.
