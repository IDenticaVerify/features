Feature: Recomendación de candidatos al reclutador
  Como reclutador quiero ver candidatos sugeridos por IA
  para acelerar el proceso de selección.

  Background:
    Given que el reclutador está autenticado

  Scenario: Mostrar candidatos recomendados
    When el reclutador accede a la sección "Candidatos recomendados"
    Then el sistema debe mostrar postulantes con alto nivel de coincidencia

  Scenario: Ajuste según filtros del reclutador
    When el reclutador filtra por "Senior" y "Diseño UX"
    Then las recomendaciones deben actualizarse acorde a esos criterios

  Scenario: Sin candidatos compatibles
    When no existan candidatos que cumplan con los requisitos
    Then el sistema debe mostrar "No hay candidatos compatibles"
