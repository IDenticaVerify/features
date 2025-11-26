Feature: Consulta del historial de certificados emitidos
  Como institución quiero consultar el historial de certificados emitidos
  para tener control de mis registros académicos.

  Background:
    Given que la institución está autenticada

  Scenario: Visualización del historial
    When la institución accede a la sección "Historial de certificados"
    Then debe visualizar una lista de certificados emitidos
    And cada registro debe incluir fecha, egresado y estado en blockchain

  Scenario: Búsqueda por nombre o fecha
    When la institución busca un certificado por nombre o rango de fechas
    Then el sistema debe mostrar los resultados correspondientes

  Scenario: Historial vacío
    Given que la institución aún no ha emitido certificados
    When accede al historial
    Then el sistema debe mostrar "No se encontraron registros"

  Scenario: Exportación del historial
    When la institución selecciona "Exportar historial"
    Then el sistema debe generar un archivo descargable en formato PDF o Excel
