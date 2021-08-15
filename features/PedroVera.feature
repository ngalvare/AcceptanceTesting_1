Feature: Search games by ratings

  @gamesByRatings
  Scenario: Select games that has one or more ratings by T, E
      Given a set of games
     | NAME                       | RELEASE DATE | DEVELOPER            | RATE   |
     | The Witcher 3: Wild Hunt   | 2015         | CD Projekt           | M      |
     | Splatoon                   | 2016         | Nintendo             | T      |
     | Super Smash Bros. Ultimate | 2018         | Bandai Namco Studios | E      |
     | The Last of Us             | 2013         | Naughty Dog          | M      |
      Given the user selects one or more ratings: T, E
      When the user search games by ratings
      Then 2 games will match
      And the names of these games are
      | NAME                       |
      | Splatoon                   |
      | Super Smash Bros. Ultimate |
      And the following message is displayed: 2 games were found.