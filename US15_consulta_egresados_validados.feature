Feature: Consulta de perfiles de egresados validados
  Como institución quiero consultar los perfiles de mis egresados validados
  para seguimiento académico.

  Background:
    Given que la institución está autenticada

  Scenario: Resultados de búsqueda de egresados
    When la institución busca egresados y obtiene:
      | nombre      | carrera                | estado   |
      | Diego Huaman  | Ingeniería de Sistemas | Validado |
      | Ruth Porras | Administración         | Validado |
    Then el sistema debe mostrar solo estos egresados en los resultados
    And solo deben aparecer egresados con documentos validados

  Scenario: Visualización del estado de certificación
    When la institución selecciona un egresado validado
    Then debe visualizar su estado de certificación

  Scenario: Búsqueda sin resultados
    When la institución realiza una búsqueda con datos inexistentes
    Then el sistema debe mostrar "No se encontraron egresados"
