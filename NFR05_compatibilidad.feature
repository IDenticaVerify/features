Feature: Compatibilidad con navegadores
  Como usuario quiero acceder desde cualquier navegador moderno
  para usar la plataforma sin errores.

  Scenario: Compatibilidad con diferentes navegadores
    Given que el usuario accede a la plataforma usando:
      | navegador |
      | Chrome    |
      | Brave     |
      | Firefox   |
      | Opera     |
      | Edge      |
    Then la plataforma debe funcionar correctamente en todos ellos
