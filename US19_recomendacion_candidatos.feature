Feature: Recomendación de candidatos al reclutador
  Como reclutador quiero ver candidatos sugeridos por IA
  para acelerar el proceso de selección.

  Background:
    Given que el reclutador está autenticado

  Scenario: Recomendaciones de candidatos según IA
    When el reclutador revisa candidatos recomendados:
      | nombre          | match |
      | Diego Cervantes | Alto  |
      | Derek Ruiz      | Medio |
      | Sergio Villa    | Bajo  |
    Then el sistema debe mostrar la lista ordenada por nivel de coincidencia

  Scenario: Ajuste según filtros del reclutador
    When el reclutador filtra por "Senior" y "Diseño UX"
    Then las recomendaciones deben actualizarse acorde a esos criterios

  Scenario: Sin candidatos compatibles
    When no existan candidatos que cumplan con los requisitos
    Then el sistema debe mostrar "No hay candidatos compatibles"
