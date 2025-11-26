Feature: Registro de institución educativa
  Como institución educativa quiero crear una cuenta institucional
  para emitir y validar certificados.

  Background:
    Given que un representante autorizado accede al formulario de registro institucional

  Scenario: Registro institucional exitoso
    When completa los datos institucionales requeridos
    And adjunta la documentación necesaria
    And envía la solicitud
    Then el sistema registra la cuenta
    And envía un correo de confirmación
    And habilita el acceso al panel institucional

  Scenario: Documentación incompleta
    When el representante intenta enviar la solicitud sin adjuntar todos los documentos
    Then el sistema debe mostrar "Debe adjuntar la documentación requerida"

  Scenario: Validación manual pendiente
    Given que la institución completó el registro
    When el sistema requiere validación manual
    Then debe mostrar "Su registro está en proceso de verificación"
