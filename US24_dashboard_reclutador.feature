Feature: Dashboard del reclutador
  Como reclutador quiero visualizar un dashboard
  para monitorear postulantes, documentos y validaciones recientes.

  Background:
    Given que el reclutador está autenticado

  Scenario: Visualización de métricas principales
    When el reclutador accede al dashboard
    Then debe visualizar la cantidad de postulantes registrados
    And la cantidad de documentos validados y rechazados
    And las validaciones recientes

  Scenario: Acceso rápido a perfiles
    When el reclutador hace clic en un postulante desde el dashboard
    Then debe redirigirse al perfil del postulante seleccionado

  Scenario: Información actualizada en tiempo real
    Given que un nuevo postulante se registra
    When el reclutador actualiza el dashboard
    Then la información debe reflejar el nuevo registro
