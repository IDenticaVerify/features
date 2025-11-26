Feature: Visualización del score de confiabilidad del postulante
  Como reclutador quiero visualizar el score del postulante
  para validar su confiabilidad.

  Background:
    Given que el reclutador está autenticado
    And existe un postulante con validaciones registradas

  Scenario: Visualización del score en el perfil
    When el reclutador accede al perfil del postulante
    Then debe visualizar el score de confiabilidad
    And el score debe estar representado en una escala del 0 al 100

  Scenario: Cálculo correcto del score
    Given que el postulante tiene certificaciones validadas
    When el reclutador visualiza su score
    Then el sistema debe calcularlo usando certificaciones y validaciones adecuadas

  Scenario: Postulante sin certificaciones validadas
    When el reclutador accede al perfil del postulante
    Then el sistema debe mostrar "Score insuficiente: No hay validaciones registradas"
