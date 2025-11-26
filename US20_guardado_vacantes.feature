Feature: Guardado de vacantes de interés
  Como postulante quiero guardar vacantes de interés
  para revisarlas y postular más adelante.

  Background:
    Given que el postulante está autenticado
    And existen vacantes disponibles

  Scenario: Guardar una vacante en favoritos
    When el postulante selecciona "Guardar" en una vacante
    Then la vacante debe agregarse a la lista de "Favoritos"

  Scenario: Visualizar vacantes guardadas
    When el postulante accede a la sección "Favoritos"
    Then debe ver todas las vacantes que guardó previamente

  Scenario: Eliminar vacante guardada
    Given que el postulante tiene vacantes en favoritos
    When selecciona "Quitar de favoritos"
    Then la vacante debe ser removida de la lista

  Scenario: Lista vacía de favoritos
    Given que el postulante nunca ha guardado vacantes
    When accede a la sección "Favoritos"
    Then el sistema debe mostrar "Aún no tienes vacantes guardadas"
