@Sistema_Ventas_Roncal
Feature: Módulo de Login
######### MÓDULO DE LOGIN #####################

  @esc001_unhappy_path_login
  Scenario Outline: Caso NO-OK Casos Fallidos por error de usuario y clave, no se puede ingresar al sistema
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
  Scenario: Caso Ok, El usuario ingresa su usuario y password válido
    Given que me encuentro en el Sistema de Ventas Roncal
    When ingreso las credenciales Usuario "Administrador" y Clave "Administrador"
    Then se muestra la pantalla de inicio del sistema
