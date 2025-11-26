Feature: Búsqueda avanzada de postulantes
  Como reclutador quiero buscar postulantes por skills, experiencia o nivel educativo
  para encontrar candidatos adecuados rápidamente.

  Background:
    Given que el reclutador está autenticado

  Scenario: Búsqueda por habilidades específicas
    When el reclutador ingresa "Python" en el buscador
    Then debe mostrarse la lista de postulantes con ese skill

  Scenario: Búsqueda por años de experiencia
    When el reclutador filtra por "3 años de experiencia"
    Then el sistema debe mostrar postulantes que cumplan ese criterio

  Scenario: Búsqueda combinada
    When el reclutador busca "Java" y filtra por "Bachiller"
    Then debe mostrarse solo postulantes que cumplan ambos criterios

  Scenario: Búsqueda sin resultados
    When el reclutador busca "Arquitecto de naves espaciales"
    Then el sistema debe mostrar "No se encontraron resultados"
