Feature: Consulta del historial de certificados emitidos
  Como institución quiero consultar el historial de certificados emitidos
  para tener control de mis registros académicos.

  Background:
    Given que la institución está autenticada

  Scenario: Visualización del historial con múltiples registros
    Given que el sistema tiene los siguientes certificados emitidos:
      | egresado      | fecha      | estado blockchain |
      | Diego Huaman    | 2025-01-10 | Registrado        |
      | Ruth Porras   | 2024-02-12 | En verificación   |
      | Frank Flores | 2023-03-01 | Registrado        |
    When la institución accede al historial
    Then debe visualizar todos los registros correctamente


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
