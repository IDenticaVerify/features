Feature: Búsqueda avanzada de postulantes
  Como reclutador quiero buscar postulantes por skills, experiencia o nivel educativo
  para encontrar candidatos adecuados rápidamente.

  Background:
    Given que el reclutador está autenticado

  Scenario: Búsqueda con múltiples filtros
    When el reclutador realiza una búsqueda con los siguientes criterios:
      | skill  | experiencia | resultado esperado        |
      | Python | 2           | 5 postulantes encontrados |
      | Java   | 1           | 3 postulantes encontrados |
      | C++    | 0           | 1 postulante encontrado   |
    Then el sistema debe mostrar el resultado correspondiente para cada caso

  Scenario: Búsqueda sin resultados
    When el reclutador busca "Arquitecto de naves espaciales"
    Then el sistema debe mostrar "No se encontraron resultados"
