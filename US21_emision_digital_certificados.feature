Feature: Emisión de certificados digitales con QR y blockchain
  Como institución educativa quiero emitir certificados digitales con QR
  para garantizar su autenticidad mediante validación en blockchain.

  Background:
    Given que la institución está autenticada
    And se encuentra en la sección "Emisión de certificados"

  Scenario: Emisión exitosa de un certificado digital
    When la institución completa los datos del egresado
    And genera el certificado con código QR
    And selecciona "Registrar en blockchain"
    Then el sistema debe crear el certificado digital
    And registrar su hash en la blockchain
    And mostrar "Certificado emitido correctamente"

  Scenario: Error por datos faltantes
    When la institución intenta emitir un certificado con campos incompletos
    Then el sistema debe mostrar "Complete todos los datos requeridos"

  Scenario: QR generado correctamente
    When el sistema genera el certificado
    Then el código QR debe permitir consultar la validez del documento

  Scenario: Falla al conectar con la blockchain
    Given que ocurre un error en la red
    When la institución intenta registrar el certificado
    Then debe mostrarse "Error de conexión. Intente nuevamente"
