Feature: Registro de usuario postulante
  Como postulante quiero registrarme con mi correo o LinkedIn 
  para acceder fácilmente a la plataforma.

  Background:
    Given que el usuario está en la página principal

  Scenario: Registro exitoso con correo electrónico
    When el usuario selecciona "Registrarse como postulante"
    And completa los campos requeridos correctamente
    And acepta los términos y condiciones
    And confirma el registro
    Then el sistema debe crear su cuenta
    And mostrar el mensaje "Registro exitoso"
    And redirigir al inicio de sesión

  Scenario: Registro fallido por correo duplicado
    When el usuario intenta registrarse con un correo ya existente
    Then el sistema debe mostrar "El correo ya está registrado"

  Scenario: Registro mediante LinkedIn
    When el postulante selecciona "Registrarse con LinkedIn"
    And autoriza el acceso a sus datos
    Then el sistema debe crear su cuenta automáticamente
    And mostrar "Registro completado con LinkedIn"
