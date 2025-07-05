@Compra_Sauce_Demo @R1
Feature: Compra de productos en Sauce Demo
  Como un cliente de Sauce Demo,
  Quiero poder iniciar sesión, agregar productos al carrito y completar una compra,
  Para poder adquirir los productos que necesito.

  Background: Navegar al sitio de Sauce Demo
    Given el usuario está en la página de inicio de sesion

   @esc001_happy_path_login @R1
   Scenario: Inicio de sesión exitoso con credenciales válidas
    When el usuario ingresa el usuario y la contraseña
    And hace clic en el botón de login
    Then el usuario debería ver el texto "Products" en la parte superior

   @esc002_unhappy_path_login @R1
   Scenario: Inicio de sesión fallido con credenciales inválidas
    When el usuario bloqueado  intenta iniciar sesión con las credenciales
    And hace clic en el botón de login
    Then debería ver un mensaje de error indicando que el usuario está bloqueado

  # @esc003_happy_path_agregar_producto @R1
  # Scenario: Agregar un producto al carrito
  #   Given el usuario ingresa el usuario y la contraseña
  #   When agrega el producto "Sauce Labs Backpack" al carrito
  #   Then el carrito debería mostrar "1" artículo

  # @esc004_happy_path_ver_carrito @R1
  # Scenario: Visualizar el carrito con productos agregados
  #   Given el usuario ingresa el usuario y la contraseña
  #   And ha agregado el producto "Sauce Labs Backpack" al carrito
  #   When navega al carrito de compras
  #   Then debería ver el producto "Sauce Labs Backpack" listado en el carrito

  # @esc005_happy_path_completar_compra @R1
  # Scenario: Completar el proceso de compra
  #   Given el usuario ingresa el usuario y la contraseña
  #   And ha agregado el producto "Sauce Labs Backpack" al carrito
  #   When navega al carrito de compras
  #   And inicia el proceso de checkout
  #   And completa sus datos: nombre "Juan", apellido "Pérez", código postal "12345"
  #   And finaliza la compra
  #   Then debería ver un mensaje de confirmación de compra