Feature: Add Podcast menu
  AS an user I WANT TO use all options in the add podcast menu

  Scenario: I want to use BUSCAR EN ITUNES
    Given I press "Añadir pódcast"
    Then I wait for 1 seconds
    Then I wait to see "Añadir pódcast"
    Then I wait to see "BUSCAR EN ITUNES"
    Then I wait to see "BUSCAR EN FYYD"
    Then I wait to see "EXPLORAR EN GPODDER.NET"
    Then I wait to see "CONFIRMAR"
    Then I wait to see "IMPORTAR DE OPML"
    When I press "BUSCAR EN ITUNES"
    Then I wait to see "La vida Moderna - Cadena SER"
    When I press "La vida Moderna - Cadena SER"
    Then I wait to see "SUSCRIBIRSE"
    When I press "SUSCRIBIRSE"
    Then I wait to see "ABRIR PÓDCAST"
    When I press "ABRIR PÓDCAST"
    Then I wait to see "La vida Moderna - Cadena SER"
    When I press "La vida Moderna - Cadena SER"
    Then I wait to see "Descargar"
    Then I wait to see "Escuchar en directo"

  Scenario: I want to use BUSCAR EN FYYD
    Given I press "Añadir pódcast"
    Then I wait for 1 seconds
    Then I wait to see "Añadir pódcast"
    Then I wait to see "BUSCAR EN ITUNES"
    Then I wait to see "BUSCAR EN FYYD"
    Then I wait to see "EXPLORAR EN GPODDER.NET"
    Then I wait to see "CONFIRMAR"
    Then I wait to see "IMPORTAR DE OPML"
    When I press "BUSCAR EN FYYD"
    Then I wait to see "Buscar en fyyd"
    Then I enter "Musica"
    Then I wait to see "MOUSE"
    When I press "MOUSE"
    Then I wait to see "MOUSE"