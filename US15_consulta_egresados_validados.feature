Feature: Consulta de perfiles de egresados validados
  Como institución quiero consultar los perfiles de mis egresados validados
  para seguimiento académico.

  Background:
    Given que la institución está autenticada

  Scenario: Búsqueda por nombre o carrera
    When la institución busca un egresado por nombre o carrera
    Then el sistema debe mostrar los egresados coincidentes
    And solo deben aparecer egresados con documentos validados

  Scenario: Visualización del estado de certificación
    When la institución selecciona un egresado validado
    Then debe visualizar su estado de certificación

  Scenario: Búsqueda sin resultados
    When la institución realiza una búsqueda con datos inexistentes
    Then el sistema debe mostrar "No se encontraron egresados"
