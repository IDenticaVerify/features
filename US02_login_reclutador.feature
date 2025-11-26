Feature: Inicio de sesión de reclutador
  Como reclutador quiero iniciar sesión con mis credenciales
  para gestionar procesos de selección.

  Background:
    Given que existe un reclutador registrado en el sistema

  Scenario: Inicio de sesión exitoso
    When el reclutador ingresa su correo y contraseña válidos
    And selecciona "Iniciar sesión"
    Then el sistema valida sus credenciales
    And muestra el panel de reclutador

  Scenario: Contraseña incorrecta
    When el reclutador ingresa una contraseña incorrecta
    Then el sistema debe mostrar "Credenciales incorrectas"

  Scenario: Recuperación de contraseña
    When el reclutador selecciona "¿Olvidaste tu contraseña?"
    And ingresa su correo registrado
    Then el sistema debe enviar un enlace de recuperación
