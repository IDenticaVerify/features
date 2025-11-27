Feature: Revisión de documentos por parte del reclutador
  Como reclutador quiero revisar documentos del postulante
  para confirmar su autenticidad.

  Background:
    Given que el reclutador está autenticado
    And existe al menos un postulante con documentos cargados

  Scenario: Revisión de múltiples documentos con sus estados
    Given que existen los siguientes documentos cargados:
      | documento     | estado    |
      | Bachiller.pdf | Validado  |
      | CV.pdf        | Pendiente |
      | CursoUX.png   | Rechazado |
    When el reclutador revisa la lista de documentos
    Then debe visualizar cada uno con su estado indicado


  Scenario: Descarga de documentos
    Given que el reclutador visualiza la lista de documentos
    When selecciona "Descargar"
    Then el sistema debe iniciar la descarga del archivo

  Scenario: Visualización detallada del documento
    When el reclutador selecciona "Ver detalle"
    Then debe visualizar el documento ampliado en pantalla
