@Sistema_Ventas_Roncal
Feature: Módulo de usuarios

@esc000_happy_path_login
  Scenario Outline: 
    Given que me encuentro en el Sistema de Ventas Roncal
    When ingreso las credenciales Usuario "Administrador" y Clave "Administrador"
    Then se muestra la pantalla de inicio del sistema

  @esc001_happy_path_usuario
  Scenario: El usuario ingresa su usuario y password válido
    Given que me encuentro en la pagina Principal de sistema 
    When selecciono a la opción usuario
    When ingreso los datos: nombre "<nombre>", apellidos "<apellidos>", Usuario "<usuario>", email "<email>", Clave "<clave>", repite clave "<repiteClave>", foto "<foto>", caja de ventas "<cajaVenta>"
    And Guardo
    When ingreso a la opción Lista de Usuario
    And doy click al detalle del usuario
    And click en la opción Atrás
    Then se muestra la pantalla de usuario

   @CP001_happy_path_usuario
   Examples: CP001, Se ingresa al módulo de Usuario y agrega un usuario con todos los campos necesarios.
   | nombre | apellidos        | usuario  | email                      | clave     | repiteClave  | foto       | cajaVenta                   |
   | Mario  | Rodriguez Suarez | mario    | mariorodriguezs@roncal.com | 12345678  | 12345678     | empleado1  | Caja No.1 - Caja Principal  | 
 
   @CP002_happy_path_usuario
   Examples: CP002, Se ingresa al módulo de Usuario y agrega un usuario con todos los campos necesarios.
   | nombre      | apellidos    | usuario    | email                        | clave          | repiteClave   | foto         | cajaVenta                   |
   | Alessandra  | Chavez Pérez | alessandra | alessandrachavezp@roncal.com | alessandra124  | alessandra124 | empleada2    | Caja No.1 - Caja Principal  | 

   @CP003_happy_path_usuario
   Examples: CP003, Se ingresa al módulo de Usuario y agrega un usuario con todos los campos necesarios.
   | nombre      | apellidos        | usuario  | email                      | clave             | repiteClave      | foto         | cajaVenta                   |
   | Jorge  | Ramirez Castañeda     | jorge    | jorgeramirezc@roncal.com   | jorgeranmirez12t  | jorgeranmirez12t | empleado3    | Caja No.1 - Caja Principal  | 



    
