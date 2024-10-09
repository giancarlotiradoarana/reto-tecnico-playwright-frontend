@Sistema_Ventas_Roncal
Feature: Módulo de Cajas

@esc000_happy_path_Caja
  Scenario Outline: 
    Given que me encuentro en el Sistema de Ventas Roncal
    When ingreso las credenciales Usuario "Administrador" y Clave "Administrador"
    Then se muestra la pantalla de inicio del sistema

@esc001_happy_path_Caja
  Scenario:CP001,  El usuario ingresa al módulo de Cajas y agrega una caja nueva
    Given que me encuentro en la pagina Principal de sistema 
    And selecciono la opción Cajas
    And selecciono la opcion nueva Caja
    When ingreso los campos: Nombre Caja "0002", número de caja "Caja Secundaria" , Efectivo en Caja "1500.00"
    And doy click en Guardar
