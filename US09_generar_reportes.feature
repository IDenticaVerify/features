Feature: Generación automática de reportes
  Como institución educativa quiero generar reportes automáticos
  para visualizar el total de certificados emitidos y validados.

  Background:
    Given que la institución está autenticada

  Scenario: Generación de reporte con datos disponibles
    When la institución selecciona "Generar reporte"
    Then el sistema debe generar un reporte con el total de certificados emitidos
    And debe incluir el porcentaje de certificados validados
    And mostrar el reporte en pantalla

  Scenario: Exportación de reporte
    When la institución selecciona "Exportar reporte"
    Then el sistema debe generar un archivo en formato PDF o Excel

  Scenario: No existen datos suficientes
    Given que la institución aún no ha emitido certificados
    When intenta generar un reporte
    Then el sistema debe mostrar "No hay datos disponibles para generar el reporte"
