Feature: Interfaz intuitiva
  Como postulante quiero una interfaz fácil de usar
  para navegar sin conocimientos técnicos.

  Scenario: Navegación clara
    Given que el usuario accede al menú
    Then debe visualizar opciones claras y organizadas

  Scenario: Acceso desde dispositivos móviles
    Given que el usuario abre la plataforma desde un celular
    Then la interfaz debe adaptarse correctamente (responsive)
