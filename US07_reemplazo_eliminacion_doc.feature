Feature: Eliminación o reemplazo de documentos
  Como postulante quiero eliminar o reemplazar mis documentos cargados
  para mantener mis archivos actualizados en la plataforma.

  Background:
    Given que el postulante está autenticado
    And tiene al menos un documento cargado en el sistema
    And se encuentra en la sección "Mis documentos"

  Scenario: Eliminación exitosa de un documento
    When el postulante selecciona un documento existente
    And hace clic en "Eliminar"
    And confirma la acción
    Then el sistema debe eliminar el documento
    And mostrar "Documento eliminado correctamente"

  Scenario: Cancelación de eliminación de documento
    When el postulante selecciona "Eliminar"
    And cancela la acción
    Then el sistema no debe realizar cambios
    And mostrar "Acción cancelada"

  Scenario: Reemplazo exitoso de un documento
    When el postulante selecciona "Reemplazar documento"
    And sube un nuevo archivo válido
    And confirma la acción
    Then el sistema debe sustituir el documento anterior
    And mostrar "Documento reemplazado correctamente"

  Scenario: Reemplazo fallido por archivo inválido
    When el postulante intenta reemplazar el documento
    And selecciona un archivo con formato no permitido
    Then el sistema debe mostrar "Formato de archivo no válido"
