Feature: Tiempo de respuesta del sistema
  Como reclutador quiero que las verificaciones sean rápidas
  para evitar demoras en el proceso de selección.

  Scenario: Búsqueda en menos de 1 minuto
    When el reclutador realiza una búsqueda
    Then los resultados deben mostrarse en menos de 60 segundos

  Scenario: Validación automática en tiempo óptimo
    When el sistema procesa una verificación
    Then debe completarse dentro del tiempo establecido
