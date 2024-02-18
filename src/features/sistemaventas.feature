@Sistema_Ventas_Roncal
Feature: Sistema de Ventas Empresa roncal
######### MÓDULO DE LOGIN #####################

  @esc001_unhappy_path_login
  Scenario Outline: Casos Fallidos por error de usuario y clave, no se puede ingresar al sistema
    Given que me encuentro en el Sistema de Ventas Roncal
    When ingreso las credenciales Usuario "<usuario>" y Clave "<clave>"
    Then se muestra el siguente error "<errorMsg>"

    @CP001_unhappy_path_login
    Examples: CPO01: El usuario ingresa su usuario inválido
      | usuario | clave         | errorMsg                                                                   |
      | Admin   | Administrador | Ocurrió un error inesperado La CLAVE no coincide con el formato solicitado |

    @CP002_unhappy_path_login
    Examples: CPO02: El usuario ingresa su clave inválido
      | usuario       | clave | errorMsg                                                                   |
      | Administrador | Admin | Ocurrió un error inesperado La CLAVE no coincide con el formato solicitado |

  @esc002_happy_path_login
  Scenario: El usuario ingresa su usuario y password válido
    Given que me encuentro en el Sistema de Ventas Roncal
    When ingreso las credenciales Usuario "Administrador" y Clave "Administrador"
    Then se muestra la pantalla de inicio del sistema

######### MÓDULO DE CLIENTE #####################
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

######### MÓDULO DE CATEGORIA #####################
 @esc001_happy_path_Categoria
  Scenario:CP001,  El usuario ingresa al módulo de Categoria y agrega el nombre
    Given que me encuentro en el Sistema de Ventas Roncal
    When ingreso las credenciales Usuario "Administrador" y Clave "Administrador"
    Then se muestra la pantalla de inicio del sistema
    When ingreso los datos de la categoria: categoria "Electrónico", nombre "Equipo de computo"
    And guardo
    Then confirmo la nueva categoria
