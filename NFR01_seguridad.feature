Feature: Seguridad de la información
  Como usuario quiero que la plataforma proteja mis datos
  para garantizar confidencialidad y seguridad.

  Scenario: Cifrado de datos sensibles
    Given que el usuario registra información personal
    Then el sistema debe almacenarla cifrada

  Scenario: Protección contra accesos no autorizados
    When un usuario no autenticado intenta acceder a datos privados
    Then el sistema debe denegar el acceso
