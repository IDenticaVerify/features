Feature: Visualización del perfil validado del postulante
  Como postulante quiero visualizar mi información y mis validaciones
  para mantener actualizado mi perfil profesional.

  Background:
    Given que el postulante está autenticado

  Scenario: Visualización del perfil completo
    When el postulante accede a la sección "Mi perfil"
    Then debe ver sus datos personales registrados

  Scenario: Intento de acceso sin autenticación
    Given que un usuario no autenticado intenta acceder al perfil
    Then el sistema debe denegar el acceso
    And mostrar el mensaje "Inicie sesión para continuar"

  Scenario: Perfil sin documentos cargados
    When el postulante accede a la sección "Mis documentos"
    Then el sistema debe mostrar "No tienes documentos cargados"
