Feature: Compatibilidad con navegadores
  Como usuario quiero acceder desde cualquier navegador moderno
  para usar la plataforma sin errores.

  Scenario: Acceso desde Chrome
    When el usuario accede con Google Chrome
    Then la plataforma debe funcionar sin fallos

  Scenario: Acceso desde Firefox
    When el usuario accede con Mozilla Firefox
    Then la plataforma debe funcionar correctamente

  Scenario: Acceso desde Safari o Edge
    Then el sistema debe mantener misma funcionalidad
