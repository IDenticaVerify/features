Feature: Visualización del estado de validación
  Como postulante quiero ver el estado de mis documentos
  para saber cuáles fueron aprobados o rechazados.

  Background:
    Given que el postulante está autenticado
    And tiene documentos cargados en el sistema

  Scenario: Visualización de documentos con distintos estados
    Given que los documentos del postulante tienen los siguientes estados:
      | documento               | estado    |
      | Diploma Universitario   | Validado  |
      | Constancia de Prácticas | Pendiente |
      | Certificado de Inglés   | Rechazado |
    When el postulante accede a "Mis documentos"
    Then debe visualizar cada documento con su estado correspondiente


  Scenario: Estado actualizado automáticamente
    Given que un documento fue validado por la institución
    When el postulante revisa nuevamente la lista
    Then debe ver el estado actualizado sin requerir recarga manual