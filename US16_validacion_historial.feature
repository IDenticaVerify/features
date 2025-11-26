Feature: Acceso al historial de validaciones
  Como usuario quiero acceder a mi historial de validaciones
  para verificar mi progreso.

  Background:
    Given que el usuario está autenticado

  Scenario: Visualización del historial completo
    When el usuario accede a "Historial de validaciones"
    Then debe ver una lista ordenada cronológicamente

  Scenario: Visualización del resultado por validación
    When el usuario visualiza su historial
    Then debe ver el resultado "Aprobado" o "Rechazado" por cada registro

  Scenario: Visualización de detalles
    When el usuario selecciona una validación
    Then debe ver su fecha
    And debe ver la institución que realizó la validación

  Scenario: Historial vacío
    When el usuario revisa su historial sin validaciones previas
    Then el sistema debe mostrar "Aún no tienes validaciones registradas"
