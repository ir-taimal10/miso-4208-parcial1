Feature: Main menu
  AS an user I WANT TO view all options in the main menu

  Scenario: 00001 I want to tab a Episodes
    Then I wait for 10 seconds
    Then I swipe left
    Given I press "Episodes"
    Then I wait for 3 seconds
    Then I wait to see "Episodes"

  Scenario: 00002 I want to tab a Suscripciones
    Then I wait for 10 seconds
    Then I swipe left
    Then I wait for 3 seconds
    Given I press "Subscriptions"
    Then I wait for 3 seconds
    Then I wait to see "Subscriptions"

  Scenario: 00003 I want to tab a Downloads
    Then I wait for 10 seconds
    Then I swipe left
    Then I wait for 3 seconds
    Given I press "Downloads"
    Then I wait for 3 seconds
    Then I wait to see "Downloads"
    Then I wait to see "RUNNING"
    Then I wait to see "COMPLETED"
    Then I wait to see "LOG"

  Scenario: 00004 I want to tab a Playback History
    Then I wait for 10 seconds
    Then I swipe left
    Then I wait for 5 seconds
    Given I press "Playback History"
    Then I wait for 3 seconds
    Then I wait for 3 seconds
    Then I wait to see "Playback History"

  Scenario: 0005 I want to tab a Add Podcast
    Then I wait for 10 seconds
    Then I swipe left
    Then I wait for 3 seconds
    Then I press "Add Podcast"
    Then I wait for 3 seconds
    Then I wait to see "Add Podcast"
    Then I wait to see "SEARCH ITUNES"
    Then I wait to see "SEARCH FYYD"
    Then I wait to see "BROWSE GPODDER.NET"
    Then I wait to see "CONFIRM"
    Then I wait to see "OPML IMPORT"

  Scenario: 0006 I want to tab a Settings
    Then I wait for 10 seconds
    Then I swipe left
    Then I wait for 3 seconds
    Given I press "Settings"
    Then I wait for 3 seconds
    Then I wait to see "Settings"
    Then I wait to see "Playback"
    Then I wait to see "Network"
    Then I wait to see "Integrations"
    Then I wait to see "Storage"
    Then I wait to see "Statistics"
    Then I wait to see "FAQ"
    Then I wait to see "Known issues"
    Then I wait to see "Crash Report"

  Scenario: 0007 I want to use BUSCAR EN BROWSE GPODDER.NET
    Then I wait for 10 seconds
    Then I swipe left
    Then I wait for 2 seconds
    Then I wait for 2 seconds
    Then I press "Add Podcast"
    Then I wait for 2 seconds
    Then I wait for 2 seconds
    Then I wait for 2 seconds
    Then I wait to see "Add Podcast"
    Then I wait for 2 seconds
    Then I wait to see "SEARCH ITUNES"
    Then I wait for 2 seconds
    Then I wait to see "SEARCH FYYD"
    Then I wait to see "BROWSE GPODDER.NET"
    Then I wait to see "CONFIRM"
    Then I wait to see "OPML IMPORT"
    Then I wait for 2 seconds
    When I press the "BROWSE GPODDER.NET" button
    Then I wait for 2 seconds
    Then I wait to see "Linux Outlaws"
    Then I wait for 2 seconds
    When I press "Linux Outlaws"
    Then I wait to see "SUBSCRIBE"
    Then I wait for 2 seconds