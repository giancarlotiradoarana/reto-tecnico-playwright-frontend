@Sistema_Ventas_Roncal
Feature: Módulo de Ventas

@esc000_happy_path_login
  Scenario Outline: Registro una Venta, sin cerrar el sistema para volver a registrar nuevamente
    Given que me encuentro en el Sistema de Ventas Roncal
    When ingreso las credenciales Usuario "Administrador" y Clave "Administrador"
    Then se muestra la pantalla de inicio del sistema

 @esc001_happy_path_Ventas
  Scenario Outline: - El usuario ingresa al módulo de Ventas agrega una Venta todos los campos además de seleccionando los tipos de Documentos
    Given que me encuentro en la pagina Principal de sistema
    When seleciono Ventas
    And hago click en Nueva Venta
    Then se muestra la pantalla de Ventas
    When ingreso los datos: Codigo de Barras "1234567890123", cantidad "1"
    And ingreso el nombre del cliente "75938412"
    When agrego el cliente
    And confirmo para agregar al cliente
    When agrego el monto que va a pagar el cliente, que es mayor al monto de la compra "5000"
    And guardo la venta
    Then se muestra el tipo Documento "<TypeDocSale>"

   @CP001_happy_path_Ventas
    Examples: CP001, El usuario ingresa al módulo de Ventas y despues realiza una venta con los productos registrados
     | TypeDocSale|
     | Ticket     |

    @CP002_happy_path_Ventas
    Examples: CP002, El usuario ingresa al módulo de Ventas y despues realiza una venta con los productos registrados
     | TypeDocSale|
     | Factura    |
