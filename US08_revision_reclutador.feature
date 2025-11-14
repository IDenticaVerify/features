Feature: Revisión de documentos por parte del reclutador
  Como reclutador quiero revisar documentos del postulante
  para confirmar su autenticidad.

  Background:
    Given que el reclutador está autenticado
    And existe al menos un postulante con documentos cargados

  Scenario: Visualización de documentos cargados
    When el reclutador accede al perfil de un postulante
    And abre la pestaña "Documentos validados"
    Then debe ver los archivos con su estado de validación

  Scenario: Descarga de documentos
    Given que el reclutador visualiza la lista de documentos
    When selecciona "Descargar"
    Then el sistema debe iniciar la descarga del archivo

  Scenario: Visualización detallada del documento
    When el reclutador selecciona "Ver detalle"
    Then debe visualizar el documento ampliado en pantalla
