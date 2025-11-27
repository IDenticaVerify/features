Feature: Verificación en tiempo real de documentos
  Como reclutador quiero validar documentos en tiempo real
  para reducir el tiempo de contratación.

  Background:
    Given que el reclutador está autenticado
    And visualiza un documento cargado por un postulante

  Scenario: Verificación de múltiples hashes
    When el reclutador verifica los siguientes documentos:
      | hash   | resultado |
      | abc123 | Válidado    |
      | xyz456 | Rechazado |
      | null   | Error     |
    Then el sistema debe consultar la blockchain y mostrar el resultado correcto para cada caso

  Scenario: Verificación exitosa
    When el reclutador selecciona "Verificar autenticidad"
    Then el sistema debe consultar la blockchain
    And mostrar "Válido" junto con la institución emisora

  Scenario: Documento no encontrado en blockchain
    When el sistema no encuentra el hash registrado
    Then debe mostrar "Documento no válido"

  Scenario: Tiempo de respuesta adecuado
    When el reclutador ejecuta la verificación
    Then la respuesta debe generarse en menos de 10 segundo simulado
