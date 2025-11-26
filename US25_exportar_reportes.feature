Feature: Exportación de reportes administrativos
  Como administrador quiero exportar reportes del sistema
  para respaldar información de uso y actividad.

  Background:
    Given que el administrador está autenticado

  Scenario: Exportación exitosa a Excel
    When el administrador selecciona "Exportar a Excel"
    Then el sistema debe generar un archivo .xlsx
    And permitir su descarga

  Scenario: Exportación a PDF
    When el administrador selecciona "Exportar a PDF"
    Then el sistema debe generar un archivo en formato PDF

  Scenario: No existen datos para exportar
    Given que no hay registros en el sistema
    When el administrador intenta exportar
    Then el sistema debe mostrar "No hay información disponible para exportar"
