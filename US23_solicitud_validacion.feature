Feature: Respuesta a solicitudes de validación
  Como institución quiero responder solicitudes de validación
  para confirmar la autenticidad de los documentos enviados por postulantes.

  Background:
    Given que la institución está autenticada

  Scenario: Visualización de solicitudes pendientes
    When la institución accede a la sección "Solicitudes de validación"
    Then debe ver una lista de solicitudes con datos del postulante y documento

  Scenario: Aprobación de una solicitud
    When la institución revisa la solicitud
    And selecciona "Aprobar"
    Then el sistema debe actualizar el estado del documento a "Validado"
    And notificar al postulante

  Scenario: Rechazo de una solicitud con motivo
    When la institución selecciona "Rechazar"
    And escribe un motivo de rechazo
    Then el estado del documento debe actualizarse a "Rechazado"
    And notificarse al postulante con el motivo

  Scenario: Sin solicitudes pendientes
    Given que no existen solicitudes
    When la institución accede a la sección "Solicitudes de validación"
    Then el sistema debe mostrar "No hay solicitudes pendientes"
