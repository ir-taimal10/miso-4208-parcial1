Feature: Detail menu
  AS an user I WANT TO view all options in the main menu

  Scenario: 0008 I want to use BUSCAR EN ITUNES
    Then I wait for 10 seconds
    Then I swipe left
    Then I wait for 10 seconds
    Then I press "Add Podcast"
    Then I wait for 10 seconds
    Then I wait to see "Add Podcast"
    Then I wait for 10 seconds
    Then I wait to see "SEARCH ITUNES"
    Then I wait for 5 seconds
    Then I wait to see "SEARCH FYYD"
    Then I wait for 5 seconds
    Then I wait to see "BROWSE GPODDER.NET"
    Then I wait for 5 seconds
    Then I wait to see "CONFIRM"
    Then I wait to see "OPML IMPORT"
    Then I wait for 5 seconds
    When I press the "SEARCH ITUNES" button
    Then I wait for 2 seconds
    Then I wait to see "The Dropout - ABC News"
    When I press "The Dropout - ABC News"
    Then I wait to see "SUBSCRIBE"
    When I press the "SUBSCRIBE" button
    Then I wait to see "OPEN PODCAST"
    When I press the "OPEN PODCAST" button
    Then I wait to see "The Dropout"
    When I press "What Now?"
    Then I wait to see "Download"
    Then I wait to see "Stream"

  Scenario: 0009 I want to use BUSCAR EN FYYD
    Then I wait for 10 seconds
    Then I swipe left
    Then I wait for 10 seconds
    Then I press "Add Podcast"
    Then I wait for 10 seconds
    Then I wait to see "Add Podcast"
    Then I wait for 10 seconds
    Then I wait to see "SEARCH ITUNES"
    Then I wait for 10 seconds
    Then I wait to see "SEARCH FYYD"
    Then I wait for 10 seconds
    Then I wait to see "BROWSE GPODDER.NET"
    Then I wait for 10 seconds
    Then I wait to see "CONFIRM"
    Then I wait to see "OPML IMPORT"
    Then I wait for 10 seconds
    When I press the "SEARCH FYYD" button
    Then I wait for 10 seconds
    Then I enter text "The" into field with id "search_src_text"
    Then I wait for 2 seconds
    Then I press the enter button
    Then I wait for 2 seconds
    Then I wait to see "Theo14"
    Then I touch the "Theo14" text

  Scenario: 0010 I want to use VIEW DETAIL
    Then I wait for 10 seconds
    Then I swipe left
    Then I wait for 10 seconds
    Then I press "The Dropout"
    Then I wait for 10 seconds
    Then I wait to see "What Now?"
    Then I wait for 10 seconds
    When I press "What Now?"
    Then I wait to see "Download"
    Then I wait for 10 seconds
    Then I wait to see "Stream"
    Then I wait for 10 seconds
    When I press the "Stream" button
    Then I wait for 2 seconds






