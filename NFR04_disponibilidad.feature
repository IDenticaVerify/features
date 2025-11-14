Feature: Disponibilidad del sistema
  Como usuario quiero que la plataforma esté disponible 99% del tiempo
  para acceder a mis datos sin interrupciones.

  Scenario: Plataforma operativa
    When un usuario intenta acceder
    Then el sistema debe responder correctamente

  Scenario: Notificación de mantenimiento
    When el sistema entra en mantenimiento programado
    Then los usuarios deben ser notificados previamente
