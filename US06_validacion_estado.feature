Feature: Visualización del estado de validación
  Como postulante quiero ver el estado de mis documentos
  para saber cuáles fueron aprobados o rechazados.

  Background:
    Given que el postulante está autenticado
    And tiene documentos cargados en el sistema

  Scenario: Visualización de estados
    When el postulante accede a la sección "Mis documentos"
    Then debe ver una lista con estados "Pendiente", "Validado" o "Rechazado"

  Scenario: Estado actualizado automáticamente
    Given que un documento fue validado por la institución
    When el postulante revisa nuevamente la lista
    Then debe ver el estado actualizado sin requerir recarga manual