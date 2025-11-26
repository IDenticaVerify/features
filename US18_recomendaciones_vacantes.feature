Feature: Recomendación de vacantes al postulante
  Como postulante quiero recibir recomendaciones de vacantes
  basadas en mi perfil validado para mejorar mis oportunidades laborales.

  Background:
    Given que el postulante está autenticado
    And tiene un perfil validado

  Scenario: Mostrar vacantes recomendadas
    When el postulante accede a "Vacantes recomendadas"
    Then el sistema debe mostrar vacantes alineadas a sus skills y experiencia

  Scenario: Sin vacantes recomendadas
    Given que no existen vacantes compatibles
    When el postulante revisa las recomendaciones
    Then el sistema debe mostrar "No hay vacantes recomendadas por ahora"

  Scenario: Actualización en tiempo real
    When el postulante agrega un nuevo certificado validado
    Then las recomendaciones deben actualizarse automáticamente
