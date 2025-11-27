Feature: Seguridad de la información
  Como usuario quiero que la plataforma proteja mis datos
  para garantizar confidencialidad y seguridad.



  Scenario: Cifrado de datos sensibles
    Given que el usuario registra información personal
    Then el sistema debe almacenarla cifrada

  Scenario: Validación de accesos según roles
    Given los siguientes roles y permisos:
      | rol           | acceso_perfil | acceso_admin |
      | Postulante    | Permitido     | Denegado     |
      | Reclutador    | Permitido     | Denegado     |
      | institución   | Permitido     | Denegado     |
      | Administrador | Permitido     | Permitido    |
    When el usuario intenta acceder a las secciones correspondientes
    Then el sistema debe aplicar los permisos correctamente