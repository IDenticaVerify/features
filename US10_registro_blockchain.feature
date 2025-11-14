Feature: Registro de certificados en blockchain
  Como institución educativa quiero registrar certificados
  para garantizar su inmutabilidad.

  Background:
    Given que la institución está autenticada
    And ha emitido un nuevo certificado digital

  Scenario: Registro exitoso en blockchain
    When la institución selecciona "Registrar en blockchain"
    Then el sistema debe generar un hash único
    And almacenar el registro en la blockchain
    And mostrar "Certificado registrado correctamente"

  Scenario: Fallo en el registro por error del nodo
    When ocurre un error en la comunicación con blockchain
    Then el sistema debe mostrar "Error al registrar. Intente nuevamente"
