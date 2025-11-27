Feature: Recomendación de vacantes al postulante
  Como postulante quiero recibir recomendaciones de vacantes
  basadas en mi perfil validado para mejorar mis oportunidades laborales.

  Background:
    Given que el postulante está autenticado
    And tiene un perfil validado

  Scenario: Recomendación de múltiples vacantes
    Given que el postulante tiene el siguiente perfil:
      | skill     | nivel |
      | Python    | Alto  |
      | UI Design | Medio |
    When se generan recomendaciones
    Then se deben mostrar las siguientes vacantes:
      | vacante               | coincidencia |
      | Backend Junior Python | Alta         |
      | Diseñador UI Junior   | Media        |

  Scenario: Sin vacantes recomendadas
    Given que no existen vacantes compatibles
    When el postulante revisa las recomendaciones
    Then el sistema debe mostrar "No hay vacantes recomendadas por ahora"

  Scenario: Actualización en tiempo real
    When el postulante agrega un nuevo certificado validado
    Then las recomendaciones deben actualizarse automáticamente
