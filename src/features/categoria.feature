@Sistema_Ventas_Roncal
Feature: Módulo de Categoria

@esc000_happy_path_Categoria
  Scenario Outline: 
    Given que me encuentro en el Sistema de Ventas Roncal
    When ingreso las credenciales Usuario "Administrador" y Clave "Administrador"
    Then se muestra la pantalla de inicio del sistema

 @esc001_happy_path_Categoria
  Scenario Outline:CP001,  El usuario ingresa al módulo de Categoria y agrega el nombre
    Given que me encuentro en la pagina Principal de sistema 
    When ingreso los datos de la categoria: categoria "<categoria>", nombre "<nombre>"
    And confirmo
    And guardo la nueva categoria
    Then se muestra la pantalla del Módulo de Categoria

    @CP001_happy_path_Categoria
    Examples: CP001, El usuario ingresa al módulo de Categoria y agrega las categorias ingresando todos los campos
    | categoria    | nombre            | 
    | Electrónico  | Equipo de computo |


