Feature: Actualización de datos personales
  Como usuario registrado quiero actualizar mis datos personales
  para mantener mi perfil al día.

  Background:
    Given que el usuario está autenticado
    And se encuentra en la sección "Mi perfil"

  Scenario: Actualización exitosa
    When el usuario modifica sus datos personales
    And selecciona "Guardar cambios"
    Then el sistema debe actualizar la información
    And mostrar "Datos actualizados correctamente"

  Scenario: Datos inválidos
    When el usuario ingresa un número de teléfono inválido
    Then el sistema debe mostrar "Formato de número no válido"

  Scenario: Cambio de correo electrónico
    When el usuario cambia su correo
    Then el sistema debe solicitar verificación del nuevo correo
    And enviar un enlace de confirmación
