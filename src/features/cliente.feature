@Sistema_Ventas_Roncal
Feature: Módulo de cliente

 @esc001_happy_path_Cliente
  Scenario Outline: - El usuario ingresa al módulo de Cliente agrega un cliente todos los campos además de seleccionando los tipos de Documentos
    Given que me encuentro en el Sistema de Ventas Roncal
    When ingreso las credenciales Usuario "Administrador" y Clave "Administrador"
    Then se muestra la pantalla de inicio del sistema
    When ingreso los datos del cliente: tipoDoc "<tipoDoc>", numDoc "<numDoc>", nombre "<nombre>", Apellido "<Apellido>", Depart."<Depart.>", Ciudad "<Ciudad>", Direcc. "<Direcc.>", Telef. "<Telef.>", Email "<Email>"
    And guardo
    Then confirmo al nuevo cliente

    @CP001_happy_path_Cliente
    Examples: CPOO1, El usuario ingresa al módulo de Cliente agrega un cliente todos los campos además de seleccionando el Tipo documento "Dni"
      | tipoDoc | numDoc   | nombre    | Apellido     | Depart.  | Ciudad | Direcc. | Telef.    | Email                   |
      | DNI     | 79098976 | Giancarlo | Tirado Arana | Trujillo | Chepen | Dubai   | 989090890 | Gian_carlos@hotmail.com |

    @CP002_happy_path_Cliente
    Examples: CP002, El usuario ingresa al módulo de Cliente agrega un cliente todos los campos además de seleccionando el Tipo documento "Pasaporte"
      | tipoDoc   | numDoc   | nombre    | Apellido     | Depart.  | Ciudad | Direcc. | Telef.    | Email                   |
      | Pasaporte | 79098976 | Giancarlo | Tirado Arana | Trujillo | Chepen | Dubai   | 989090890 | Gian@hotmail.com |
