Feature: Subida de certificados academicos y laborales
  Como postulante quiero subir mis certificados en PDF o imagen
  para validarlos automaticamente en la plataforma.

  Background:
    Given que el postulante esta autenticado
    And se encuentra en la seccion Mis documentos

  Scenario: Subida exitosa de un certificado PDF
    When el postulante selecciona "Subir documento"
    And elige un archivo valido en formato PDF
    And confirma la accion
    Then el sistema debe almacenar el documento
    And mostrar un mensaje "Documento subido correctamente"

  Scenario: Subida de un documento en formato no permitido
    When el postulante selecciona "Subir documento"
    And elige un archivo con formato no valido
    Then el sistema debe mostrar "Formato no permitido"

  Scenario: Subida de un documento con peso excedido
    When el postulante selecciona un archivo mayor al limite permitido
    Then el sistema debe mostrar "El archivo excede el tamaño maximo"
