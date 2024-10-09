@Sistema_Ventas_Roncal
Feature: Módulo de usuarios

@esc000_happy_path_usuario
  Scenario Outline: 
    Given que me encuentro en el Sistema de Ventas Roncal
    When ingreso las credenciales Usuario "Administrador" y Clave "Administrador"
    Then se muestra la pantalla de inicio del sistema

  @esc001_happy_path_usuario
  Scenario: El usuario ingresa su usuario y password válido
    Given que me encuentro en la pagina Principal de sistema 
    When selecciono a la opción usuario
    When ingreso los datos: nombre "Giancarlo", apellidos "Zapata Ojeda", Usuario "Giancito", email "Gianuser@gmail.com", Clave "12345678", repite clave "12345678", foto "usuario", caja de ventas "Caja No.1 - Caja Principal"
    And Guardo
    When ingreso a la opción Lista de Usuario
    And doy click al detalle del usuario
    And click en la opción Atrás
    Then se muestra la pantalla de usuario




    
