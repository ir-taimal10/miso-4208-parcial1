Feature: Main menu
  AS an user I WANT TO view all options in the main menu

  Scenario: I want to tab a Episodios
    Given I press "Episodios"
    Then I wait for 1 seconds
    Then I wait to see "Episodios"

  Scenario: I want to tab a Suscripciones
    Given I press "Suscripciones"
    Then I wait for 1 seconds
    Then I wait to see "Suscripciones"

  Scenario: I want to tab a Descargas
    Given I press "Descargas"
    Then I wait for 1 seconds
    Then I wait to see "Descargas"
    Then I wait to see "EN CURSO"
    Then I wait to see "COMPLETADAS"
    Then I wait to see "REGISTRO"

  Scenario: I want to tab a Historial de reproducciones
    Given I press "Historial de reproducciones"
    Then I wait for 1 seconds
    Then I wait to see "Historial de reproducciones"

  Scenario: I want to tab a Añadir pódcast
    Given I press "Añadir pódcast"
    Then I wait for 1 seconds
    Then I wait to see "Añadir pódcast"
    Then I wait to see "BUSCAR EN ITUNES"
    Then I wait to see "BUSCAR EN FYYD"
    Then I wait to see "EXPLORAR EN GPODDER.NET"
    Then I wait to see "CONFIRMAR"
    Then I wait to see "IMPORTAR DE OPML"

  Scenario: I want to tab a Ajustes
    Given I press "Ajustes"
    Then I wait for 1 seconds
    Then I wait to see "Interfaz de usuario"
    Then I wait to see "Reproducción"
    Then I wait to see "Red"
    Then I wait to see "Integraciones"
    Then I wait to see "Almacenamiento"
    Then I wait to see "Estadisticas"
    Then I wait to see "Preguntas frecuentes"
    Then I wait to see "Informe de fallos"

