Feature: Notificación automática al postulante
  Como postulante quiero recibir una notificación
  cuando mis documentos sean validados o rechazados.

  Background:
    Given que el postulante tiene documentos en proceso de validación

  Scenario: Notificación por documento validado
    When un documento cambia su estado a "Validado"
    Then el sistema debe enviar una notificación al postulante
    And mostrar el mensaje "Tu documento ha sido validado"

  Scenario: Notificación por documento rechazado
    When un documento cambia su estado a "Rechazado"
    Then el sistema debe enviar una notificación con detalle del motivo
