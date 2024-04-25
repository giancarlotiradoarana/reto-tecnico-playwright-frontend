@Sistema_Ventas_Roncal
Feature: Módulo de Categoria

 @esc001_happy_path_Categoria
  Scenario:CP001,  El usuario ingresa al módulo de Categoria y agrega el nombre
    Given que me encuentro en el Sistema de Ventas Roncal
    When ingreso las credenciales Usuario "Administrador" y Clave "Administrador"
    Then se muestra la pantalla de inicio del sistema
    When ingreso los datos de la categoria: categoria "Electrónico", nombre "Equipo de computo"
    And confirmo
    And guardo la nueva categoria
    Then se muestra la pantalla del Módulo de Categoria

