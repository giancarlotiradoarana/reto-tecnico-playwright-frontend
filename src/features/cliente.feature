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
Examples: CP001, El usuario ingresa al módulo de Cliente y agrega un cliente con todos los campos, seleccionando el Tipo documento "Dni".

| tipoDoc | numDoc   | nombre    | Apellido         | Depart.     | Ciudad    | Direcc.                  | Telef.     | Email                         |
| DNI     | 75938412 | Carlos    | Perez Garcia     | La Libertad | Trujillo  | Av. Ejemplo #372         | 974837465  | carlos.perez1@correo.com      |

@CP002_happy_path_Cliente
    Examples: CP002, El usuario ingresa al módulo de Cliente y agrega un cliente con todos los campos, seleccionando el Tipo documento "Dni".

| tipoDoc | numDoc   | nombre    | Apellido         | Depart.     | Ciudad    | Direcc.                  | Telef.     | Email                         |
| DNI     | 89357239 | Maria     | Torres Lopez     | La Libertad | Pacasmayo | Calle Principal #418     | 912384759  | maria.torres2@correo.com      |

@CP003_happy_path_Cliente
    Examples: CP003, El usuario ingresa al módulo de Cliente y agrega un cliente con todos los campos, seleccionando el Tipo documento "Dni".

| tipoDoc | numDoc   | nombre    | Apellido         | Depart.     | Ciudad    | Direcc.                  | Telef.     | Email                         |
| DNI     | 38573948 | Luis      | Garcia Morales   | La Libertad | Chepen    | Jr. Los Olivos #217      | 945267381  | luis.garcia3@correo.com       |

@CP004_happy_path_Cliente
    Examples: CP004, El usuario ingresa al módulo de Cliente y agrega un cliente con todos los campos, seleccionando el Tipo documento "Dni".

| tipoDoc | numDoc   | nombre    | Apellido         | Depart.     | Ciudad    | Direcc.                  | Telef.     | Email                         |
| DNI     | 64839275 | Ana       | Flores Rodriguez | La Libertad | Ascope    | Psj. Rosales #603        | 968237594  | ana.flores4@correo.com        |

@CP005_happy_path_Cliente
    Examples: CP005, El usuario ingresa al módulo de Cliente y agrega un cliente con todos los campos, seleccionando el Tipo documento "Dni".

| tipoDoc | numDoc   | nombre    | Apellido         | Depart.     | Ciudad    | Direcc.                  | Telef.     | Email                         |
| DNI     | 48759302 | Pedro     | Rodriguez Gomez  | La Libertad | Virú      | Av. Libertad #520        | 979485231  | pedro.rodriguez5@correo.com   |

@CP006_happy_path_Cliente
    Examples: CP006, El usuario ingresa al módulo de Cliente y agrega un cliente con todos los campos, seleccionando el Tipo documento "Dni".

| tipoDoc | numDoc   | nombre    | Apellido           | Depart.     | Ciudad     | Direcc.                   | Telef.     | Email                          |
| DNI     | 76583920 | Jose      | Gomez Castro       | La Libertad | Guadalupe  | Calle Falsa #125          | 981237564  | jose.gomez6@correo.com         |

@CP007_happy_path_Cliente
    Examples: CP007, El usuario ingresa al módulo de Cliente y agrega un cliente con todos los campos, seleccionando el Tipo documento "Dni".

| tipoDoc | numDoc   | nombre    | Apellido           | Depart.     | Ciudad     | Direcc.                   | Telef.     | Email                          |
| DNI     | 34958247 | Gabriela  | Lopez Martinez     | La Libertad | Trujillo   | Jr. Las Flores #245       | 965827341  | gabriela.lopez7@correo.com     |

@CP008_happy_path_Cliente
    Examples: CP008, El usuario ingresa al módulo de Cliente y agrega un cliente con todos los campos, seleccionando el Tipo documento "Dni".

| tipoDoc | numDoc   | nombre    | Apellido           | Depart.     | Ciudad     | Direcc.                   | Telef.     | Email                          |
| DNI     | 48392058 | Jorge     | Castro Diaz        | La Libertad | Pacasmayo  | Av. Del Sol #369          | 923847120  | jorge.castro8@correo.com       |

@CP009_happy_path_Cliente
    Examples: CP009, El usuario ingresa al módulo de Cliente y agrega un cliente con todos los campos, seleccionando el Tipo documento "Dni".

| tipoDoc | numDoc   | nombre    | Apellido           | Depart.     | Ciudad     | Direcc.                   | Telef.     | Email                          |
| DNI     | 59483729 | Silvia    | Martinez Morales   | La Libertad | Chepen     | Calle Ejemplo #298        | 945738291  | silvia.martinez9@correo.com    |

@CP010_happy_path_Cliente
    Examples: CP010, El usuario ingresa al módulo de Cliente y agrega un cliente con todos los campos, seleccionando el Tipo documento "Dni".

| tipoDoc | numDoc   | nombre    | Apellido           | Depart.     | Ciudad     | Direcc.                   | Telef.     | Email                          |
| DNI     | 38294756 | Diana     | Diaz Gutierrez     | La Libertad | Ascope     | Jr. Ejemplo #482          | 974839102  | diana.diaz10@correo.com        |

@CP011_happy_path_Cliente
    Examples: CP011, El usuario ingresa al módulo de Cliente y agrega un cliente con todos los campos, seleccionando el Tipo documento "Dni".

| tipoDoc | numDoc   | nombre    | Apellido           | Depart.     | Ciudad     | Direcc.                   | Telef.     | Email                          |
| DNI     | 93847563 | Pablo     | Morales Chavez     | La Libertad | Virú       | Psj. Falsa #514           | 983745618  | pablo.morales11@correo.com     |

@CP012_happy_path_Cliente
    Examples: CP012, El usuario ingresa al módulo de Cliente y agrega un cliente con todos los campos, seleccionando el Tipo documento "Dni".

| tipoDoc | numDoc   | nombre    | Apellido           | Depart.     | Ciudad     | Direcc.                   | Telef.     | Email                          |
| DNI     | 48739562 | Elena     | Gutierrez Ramos    | La Libertad | Guadalupe  | Av. Flores #213           | 945637284  | elena.gutierrez12@correo.com   |

@CP013_happy_path_Cliente
    Examples: CP013, El usuario ingresa al módulo de Cliente y agrega un cliente con todos los campos, seleccionando el Tipo documento "Dni".

| tipoDoc | numDoc   | nombre    | Apellido           | Depart.     | Ciudad     | Direcc.                   | Telef.     | Email                          |
| DNI     | 39284756 | Rafael    | Chavez Salazar     | La Libertad | Trujillo   | Jr. Rosales #874          | 983472051  | rafael.chavez13@correo.com     |

@CP014_happy_path_Cliente
    Examples: CP014, El usuario ingresa al módulo de Cliente y agrega un cliente con todos los campos, seleccionando el Tipo documento "Dni".

| tipoDoc | numDoc   | nombre    | Apellido           | Depart.     | Ciudad     | Direcc.                   | Telef.     | Email                          |
| DNI     | 74682930 | Rosa      | Ramos Ortega       | La Libertad | Pacasmayo  | Calle Sol #102            | 972384512  | rosa.ramos14@correo.com        |

@CP015_happy_path_Cliente
    Examples: CP015, El usuario ingresa al módulo de Cliente y agrega un cliente con todos los campos, seleccionando el Tipo documento "Dni".

| tipoDoc | numDoc   | nombre    | Apellido           | Depart.     | Ciudad     | Direcc.                   | Telef.     | Email                          |
| DNI     | 89327465 | Fernando  | Salazar Sanchez    | La Libertad | Chepen     | Av. Ejemplo #839          | 982736591  | fernando.salazar15@correo.com  |

@CP016_happy_path_Cliente
    Examples: CP016, El usuario ingresa al módulo de Cliente y agrega un cliente con todos los campos, seleccionando el Tipo documento "Dni".

| tipoDoc | numDoc   | nombre    | Apellido           | Depart.     | Ciudad     | Direcc.                   | Telef.     | Email                          |
| DNI     | 58392047 | Carmen    | Ortega Vasquez     | La Libertad | Ascope     | Psj. Principal #194       | 971284635  | carmen.ortega16@correo.com     |

@CP017_happy_path_Cliente
    Examples: CP017, El usuario ingresa al módulo de Cliente y agrega un cliente con todos los campos, seleccionando el Tipo documento "Dni".

| tipoDoc | numDoc   | nombre    | Apellido           | Depart.     | Ciudad     | Direcc.                   | Telef.     | Email                          |
| DNI     | 47382950 | Daniel    | Sanchez Reyes      | La Libertad | Virú       | Jr. Flores #564           | 961872395  | daniel.sanchez17@correo.com    |

@CP018_happy_path_Cliente
    Examples: CP018, El usuario ingresa al módulo de Cliente y agrega un cliente con todos los campos, seleccionando el Tipo documento "Dni".

| tipoDoc | numDoc   | nombre    | Apellido           | Depart.     | Ciudad     | Direcc.                   | Telef.     | Email                          |
| DNI     | 39824756 | Patricia  | Vasquez Nunez      | La Libertad | Guadalupe  | Av. Falsa #481            | 982134657  | patricia.vasquez18@correo.com  |

@CP019_happy_path_Cliente
    Examples: CP019, El usuario ingresa al módulo de Cliente y agrega un cliente con todos los campos, seleccionando el Tipo documento "Dni".

| tipoDoc | numDoc   | nombre    | Apellido           | Depart.     | Ciudad     | Direcc.                   | Telef.     | Email                          |
| DNI     | 29475683 | Miguel    | Reyes Perez        | La Libertad | Trujillo   | Calle Olivos #320         | 956734281  | miguel.reyes19@correo.com      |

@CP020_happy_path_Cliente
    Examples: CP020, El usuario ingresa al módulo de Cliente y agrega un cliente con todos los campos, seleccionando el Tipo documento "Dni".

| tipoDoc | numDoc   | nombre    | Apellido           | Depart.     | Ciudad     | Direcc.                   | Telef.     | Email                          |
| DNI     | 19384750 | Veronica  | Nunez Garcia       | La Libertad | Pacasmayo  | Psj. Ejemplo #761         | 937285641  | veronica.nunez20@correo.com    |

@CP021_happy_path_Cliente
    Examples: CP021, El usuario ingresa al módulo de Cliente y agrega un cliente con todos los campos, seleccionando el Tipo documento "Dni".

| tipoDoc | numDoc   | nombre    | Apellido           | Depart.     | Ciudad     | Direcc.                   | Telef.     | Email                          |
| DNI     | 84937521 | Carla     | Perez Lopez        | La Libertad | Chepen     | Jr. Rosales #149          | 945827361  | carla.perez21@correo.com       |

@CP022_happy_path_Cliente
    Examples: CP022, El usuario ingresa al módulo de Cliente y agrega un cliente con todos los campos, seleccionando el Tipo documento "Dni".

| tipoDoc | numDoc   | nombre    | Apellido           | Depart.     | Ciudad     | Direcc.                   | Telef.     | Email                          |
| DNI     | 39284776 | Rafaela    | Chavez Quispe     | La Libertad | Trujillo   | Jr. Rosa #74              | 983478051  | rafaela.chavez13@correo.com     |

@CP023_happy_path_Cliente
    Examples: CP023, El usuario ingresa al módulo de Cliente y agrega un cliente con todos los campos, seleccionando el Tipo documento "Dni".

| tipoDoc | numDoc   | nombre    | Apellido           | Depart.     | Ciudad     | Direcc.                   | Telef.     | Email                          |
| DNI     | 74583921 | Andres    | Gomez Chavez       | La Libertad | Virú       | Calle Las Lomas #543      | 983726591  | andres.gomez23@correo.com      |

@CP024_happy_path_Cliente
    Examples: CP024, El usuario ingresa al módulo de Cliente y agrega un cliente con todos los campos, seleccionando el Tipo documento "Dni".

| tipoDoc | numDoc   | nombre    | Apellido           | Depart.     | Ciudad     | Direcc.                   | Telef.     | Email                          |
| DNI     | 34857236 | Alicia    | Rios Mendoza       | La Libertad | Ascope     | Av. Principal #109        | 971834265  | alicia.rios24@correo.com       |

@CP025_happy_path_Cliente
    Examples: CP025, El usuario ingresa al módulo de Cliente y agrega un cliente con todos los campos, seleccionando el Tipo documento "Dni".

| tipoDoc | numDoc   | nombre    | Apellido           | Depart.     | Ciudad     | Direcc.                   | Telef.     | Email                          |
| DNI     | 92847560 | Mario     | Mendoza Flores     | La Libertad | Pacasmayo  | Psj. Falsa #346           | 956728341  | mario.mendoza25@correo.com     |

@CP026_happy_path_Cliente
    Examples: CP026, El usuario ingresa al módulo de Cliente y agrega un cliente con todos los campos, seleccionando el Tipo documento "Dni".

| tipoDoc | numDoc   | nombre    | Apellido           | Depart.     | Ciudad     | Direcc.                   | Telef.     | Email                          |
| DNI     | 83749162 | Carla     | Flores Romero      | La Libertad | Guadalupe  | Jr. Ejemplo #203          | 987362481  | carla.flores26@correo.com      |

@CP027_happy_path_Cliente
    Examples: CP027, El usuario ingresa al módulo de Cliente y agrega un cliente con todos los campos, seleccionando el Tipo documento "Dni".

| tipoDoc | numDoc   | nombre    | Apellido           | Depart.     | Ciudad     | Direcc.                   | Telef.     | Email                          |
| DNI     | 94738251 | Josefa    | Romero Paredes     | La Libertad | Trujillo   | Av. Las Torres #582       | 965728431  | josefa.romero27@correo.com     |

@CP028_happy_path_Cliente
    Examples: CP028, El usuario ingresa al módulo de Cliente y agrega un cliente con todos los campos, seleccionando el Tipo documento "Dni".

| tipoDoc | numDoc   | nombre    | Apellido           | Depart.     | Ciudad     | Direcc.                   | Telef.     | Email                          |
| DNI     | 47582390 | Cesar     | Paredes Torres     | La Libertad | Virú       | Calle Ejemplo #392        | 948375210  | cesar.paredes28@correo.com     |

@CP029_happy_path_Cliente
    Examples: CP029, El usuario ingresa al módulo de Cliente y agrega un cliente con todos los campos, seleccionando el Tipo documento "Dni".

| tipoDoc | numDoc   | nombre    | Apellido           | Depart.     | Ciudad     | Direcc.                   | Telef.     | Email                          |
| DNI     | 38495726 | Teresa    | Torres Gonzales    | La Libertad | Chepen     | Psj. Rosales #264         | 973645289  | teresa.torres29@correo.com     |

@CP030_happy_path_Cliente
    Examples: CP030, El usuario ingresa al módulo de Cliente y agrega un cliente con todos los campos, seleccionando el Tipo documento "Dni".

| tipoDoc | numDoc   | nombre    | Apellido           | Depart.     | Ciudad     | Direcc.                   | Telef.     | Email                          |
| DNI     | 59382471 | Raul      | Gonzales Vega      | La Libertad | Pacasmayo  | Av. Principal #165        | 984726315  | raul.gonzales30@correo.com     |

@CP031_happy_path_Cliente
    Examples: CP031, El usuario ingresa al módulo de Cliente y agrega un cliente con todos los campos, seleccionando el Tipo documento "Dni".

| tipoDoc | numDoc   | nombre    | Apellido           | Depart.     | Ciudad     | Direcc.                   | Telef.     | Email                          |
| DNI     | 64839572 | Paula     | Vega Villanueva    | La Libertad | Trujillo   | Jr. Ejemplo #478          | 961738245  | paula.vega31@correo.com        |

@CP032_happy_path_Cliente
    Examples: CP032, El usuario ingresa al módulo de Cliente y agrega un cliente con todos los campos, seleccionando el Tipo documento "Dni".

| tipoDoc | numDoc   | nombre    | Apellido           | Depart.     | Ciudad     | Direcc.                   | Telef.     | Email                          |
| DNI     | 83719265 | Juan      | Villanueva Lopez   | La Libertad | Ascope     | Psj. Libertad #872        | 952846371  | juan.villanueva32@correo.com   |

@CP033_happy_path_Cliente
    Examples: CP033, El usuario ingresa al módulo de Cliente y agrega un cliente con todos los campos, seleccionando el Tipo documento "Dni".

| tipoDoc | numDoc   | nombre    | Apellido           | Depart.     | Ciudad     | Direcc.                   | Telef.     | Email                          |
| DNI     | 49582731 | Rosa      | Lopez Salas        | La Libertad | Virú       | Calle Principal #381      | 976438291  | rosa.lopez33@correo.com        |

@CP034_happy_path_Cliente
    Examples: CP034, El usuario ingresa al módulo de Cliente y agrega un cliente con todos los campos, seleccionando el Tipo documento "Dni".

| tipoDoc | numDoc   | nombre    | Apellido           | Depart.     | Ciudad     | Direcc.                   | Telef.     | Email                          |
| DNI     | 59387241 | Roberto   | Salas Ortiz        | La Libertad | Guadalupe  | Jr. Ejemplo #591          | 984732641  | roberto.salas34@correo.com     |

@CP035_happy_path_Cliente
    Examples: CP035, El usuario ingresa al módulo de Cliente y agrega un cliente con todos los campos, seleccionando el Tipo documento "Dni".

| tipoDoc | numDoc   | nombre    | Apellido           | Depart.     | Ciudad     | Direcc.                   | Telef.     | Email                          |
| DNI     | 38947216 | Maria     | Ortiz Gonzales     | La Libertad | Trujillo   | Av. Los Alamos #582       | 957283614  | maria.ortiz35@correo.com       |

@CP036_happy_path_Cliente
    Examples: CP036, El usuario ingresa al módulo de Cliente y agrega un cliente con todos los campos, seleccionando el Tipo documento "Dni".

| tipoDoc | numDoc   | nombre    | Apellido           | Depart.     | Ciudad     | Direcc.                   | Telef.     | Email                          |
| DNI     | 49682753 | Jorge     | Gonzales Romero    | La Libertad | Chepen     | Calle Las Flores #482     | 982736451  | jorge.gonzales36@correo.com    |

@CP037_happy_path_Cliente
    Examples: CP037, El usuario ingresa al módulo de Cliente y agrega un cliente con todos los campos, seleccionando el Tipo documento "Dni".

| tipoDoc | numDoc   | nombre    | Apellido           | Depart.     | Ciudad     | Direcc.                   | Telef.     | Email                          |
| DNI     | 38594712 | Carmen    | Romero Paredes     | La Libertad | Ascope     | Psj. Principal #601       | 965734291  | carmen.romero37@correo.com     |

@CP038_happy_path_Cliente
    Examples: CP038, El usuario ingresa al módulo de Cliente y agrega un cliente con todos los campos, seleccionando el Tipo documento "Dni".

| tipoDoc | numDoc   | nombre    | Apellido           | Depart.     | Ciudad     | Direcc.                   | Telef.     | Email                          |
| DNI     | 58472693 | Luis      | Paredes Ramos      | La Libertad | Pacasmayo  | Jr. Rosales #297          | 948362751  | luis.paredes38@correo.com      |

@CP039_happy_path_Cliente
    Examples: CP039, El usuario ingresa al módulo de Cliente y agrega un cliente con todos los campos, seleccionando el Tipo documento "Dni".

| tipoDoc | numDoc   | nombre    | Apellido           | Depart.     | Ciudad     | Direcc.                   | Telef.     | Email                          |
| DNI     | 18894712 | Carmela   | Tirado Paredes     | La Libertad | Ascope     | Psj. Principal #901       | 965709291  | carmela.romero37@correo.com     |

@CP040_happy_path_Cliente
    Examples: CP040, El usuario ingresa al módulo de Cliente y agrega un cliente con todos los campos, seleccionando el Tipo documento "Dni".

| tipoDoc | numDoc   | nombre    | Apellido           | Depart.     | Ciudad     | Direcc.                    | Telef.     | Email                           |
| DNI     | 75839412 | Sergio    | Ramos Fernandez    | La Libertad | Trujillo   | Calle La Unión #123        | 964823751  | sergio.ramos40@correo.com       |

@CP041_happy_path_Cliente
    Examples: CP041, El usuario ingresa al módulo de Cliente y agrega un cliente con todos los campos, seleccionando el Tipo documento "Dni".

| tipoDoc | numDoc   | nombre    | Apellido           | Depart.     | Ciudad     | Direcc.                    | Telef.     | Email                           |
| DNI     | 59283467 | Alicia    | Fernandez Torres   | La Libertad | Guadalupe  | Av. Las Brisas #561        | 978263145  | alicia.fernandez41@correo.com   |

@CP042_happy_path_Cliente
    Examples: CP042, El usuario ingresa al módulo de Cliente y agrega un cliente con todos los campos, seleccionando el Tipo documento "Dni".

| tipoDoc | numDoc   | nombre    | Apellido           | Depart.     | Ciudad     | Direcc.                    | Telef.     | Email                           |
| DNI     | 46392578 | Martin    | Torres Valdez      | La Libertad | Virú       | Psj. Los Pinos #420        | 947285134  | martin.torres42@correo.com      |

@CP043_happy_path_Cliente
    Examples: CP043, El usuario ingresa al módulo de Cliente y agrega un cliente con todos los campos, seleccionando el Tipo documento "Dni".

| tipoDoc | numDoc   | nombre    | Apellido           | Depart.     | Ciudad     | Direcc.                    | Telef.     | Email                           |
| DNI     | 73849125 | Rosa      | Valdez Mendoza     | La Libertad | Ascope     | Jr. Las Palmas #302        | 986471235  | rosa.valdez43@correo.com        |

@CP044_happy_path_Cliente
    Examples: CP044, El usuario ingresa al módulo de Cliente y agrega un cliente con todos los campos, seleccionando el Tipo documento "Dni".

| tipoDoc | numDoc   | nombre    | Apellido           | Depart.     | Ciudad     | Direcc.                    | Telef.     | Email                           |
| DNI     | 29574618 | Carlos    | Mendoza Rivera     | La Libertad | Chepen     | Calle Nueva #678           | 973624815  | carlos.mendoza44@correo.com     |

@CP045_happy_path_Cliente
    Examples: CP045, El usuario ingresa al módulo de Cliente y agrega un cliente con todos los campos, seleccionando el Tipo documento "Dni".

| tipoDoc | numDoc   | nombre    | Apellido           | Depart.     | Ciudad     | Direcc.                    | Telef.     | Email                           |
| DNI     | 84726359 | Carmen    | Rivera Vega        | La Libertad | Pacasmayo  | Av. Las Flores #215        | 954682137  | carmen.rivera45@correo.com      |

@CP046_happy_path_Cliente
    Examples: CP046, El usuario ingresa al módulo de Cliente y agrega un cliente con todos los campos, seleccionando el Tipo documento "Dni".

| tipoDoc | numDoc   | nombre    | Apellido           | Depart.     | Ciudad     | Direcc.                    | Telef.     | Email                           |
| DNI     | 12659487 | Julio     | Vega Lopez         | La Libertad | Trujillo   | Psj. Central #910          | 968573124  | julio.vega46@correo.com         |

@CP047_happy_path_Cliente
    Examples: CP047, El usuario ingresa al módulo de Cliente y agrega un cliente con todos los campos, seleccionando el Tipo documento "Dni".

| tipoDoc | numDoc   | nombre    | Apellido           | Depart.     | Ciudad     | Direcc.                    | Telef.     | Email                           |
| DNI     | 63847295 | Beatriz   | Lopez Herrera      | La Libertad | Virú       | Calle Principal #576       | 952874361  | beatriz.lopez47@correo.com      |

@CP048_happy_path_Cliente
    Examples: CP048, El usuario ingresa al módulo de Cliente y agrega un cliente con todos los campos, seleccionando el Tipo documento "Dni".

| tipoDoc | numDoc   | nombre    | Apellido           | Depart.     | Ciudad     | Direcc.                    | Telef.     | Email                           |
| DNI     | 49283716 | Oscar     | Herrera Silva      | La Libertad | Ascope     | Jr. Ejemplo #674           | 984672135  | oscar.herrera48@correo.com      |

@CP049_happy_path_Cliente
    Examples: CP049, El usuario ingresa al módulo de Cliente y agrega un cliente con todos los campos, seleccionando el Tipo documento "Dni".

| tipoDoc | numDoc   | nombre    | Apellido           | Depart.     | Ciudad     | Direcc.                    | Telef.     | Email                           |
| DNI     | 29587432 | Elena     | Silva Ortiz        | La Libertad | Guadalupe  | Psj. Ejemplo #247          | 965483712  | elena.silva49@correo.com        |

@CP050_happy_path_Cliente
    Examples: CP050, El usuario ingresa al módulo de Cliente y agrega un cliente con todos los campos, seleccionando el Tipo documento "Dni".

| tipoDoc | numDoc   | nombre    | Apellido           | Depart.     | Ciudad     | Direcc.                    | Telef.     | Email                           |
| DNI     | 74926138 | Pablo     | Ortiz Rojas        | La Libertad | Chepen     | Av. Central #428           | 947285436  | pablo.ortiz50@correo.com        |

@CP051_happy_path_Cliente
    Examples: CP051, El usuario ingresa al módulo de Cliente y agrega un cliente con todos los campos, seleccionando el Tipo documento "Dni".

| tipoDoc | numDoc   | nombre    | Apellido           | Depart.     | Ciudad     | Direcc.                    | Telef.     | Email                           |
| DNI     | 52739648 | Daniela   | Rojas Salazar      | La Libertad | Pacasmayo  | Jr. Ejemplo #905           | 986473521  | daniela.rojas51@correo.com      |

@CP052_happy_path_Cliente
    Examples: CP052, El usuario ingresa al módulo de Cliente y agrega un cliente con todos los campos, seleccionando el Tipo documento "Dni".

| tipoDoc | numDoc   | nombre    | Apellido           | Depart.     | Ciudad     | Direcc.                    | Telef.     | Email                           |
| DNI     | 39845127 | Mario     | Salazar Gonzales   | La Libertad | Trujillo   | Psj. Las Rosas #753        | 953274681  | mario.salazar52@correo.com      |

@CP053_happy_path_Cliente
    Examples: CP053, El usuario ingresa al módulo de Cliente y agrega un cliente con todos los campos, seleccionando el Tipo documento "Dni".

| tipoDoc | numDoc   | nombre    | Apellido           | Depart.     | Ciudad     | Direcc.                    | Telef.     | Email                           |
| DNI     | 61782945 | Marta     | Gonzales Castro    | La Libertad | Virú       | Av. Las Lomas #621         | 978341256  | marta.gonzales53@correo.com     |

@CP054_happy_path_Cliente
    Examples: CP054, El usuario ingresa al módulo de Cliente y agrega un cliente con todos los campos, seleccionando el Tipo documento "Dni".

| tipoDoc | numDoc   | nombre    | Apellido           | Depart.     | Ciudad     | Direcc.                    | Telef.     | Email                           |
| DNI     | 39758412 | Felipe    | Castro Mendez      | La Libertad | Ascope     | Jr. Las Palmas #238        | 957428361  | felipe.castro54@correo.com      |

@CP055_happy_path_Cliente
    Examples: CP055, El usuario ingresa al módulo de Cliente y agrega un cliente con todos los campos, seleccionando el Tipo documento "Dni".

| tipoDoc | numDoc   | nombre    | Apellido           | Depart.     | Ciudad     | Direcc.                    | Telef.     | Email                           |
| DNI     | 48273915 | Susana    | Mendez Jimenez     | La Libertad | Guadalupe  | Calle Principal #753       | 964825137  | susana.mendez55@correo.com      |

@CP056_happy_path_Cliente
    Examples: CP056, El usuario ingresa al módulo de Cliente y agrega un cliente con todos los campos, seleccionando el Tipo documento "Dni".

| tipoDoc | numDoc   | nombre    | Apellido           | Depart.     | Ciudad     | Direcc.                    | Telef.     | Email                           |
| DNI     | 39157428 | Andres    | Jimenez Flores     | La Libertad | Chepen     | Psj. Las Brisas #432       | 947285642  | andres.jimenez56@correo.com     |

@CP057_happy_path_Cliente
    Examples: CP057, El usuario ingresa al módulo de Cliente y agrega un cliente con todos los campos, seleccionando el Tipo documento "Dni".

| tipoDoc | numDoc   | nombre    | Apellido           | Depart.     | Ciudad     | Direcc.                    | Telef.     | Email                           |
| DNI     | 29584731 | Paula     | Flores Rivas       | La Libertad | Pacasmayo  | Av. Ejemplo #643           | 986471238  | paula.flores57@correo.com       |

@CP058_happy_path_Cliente
    Examples: CP058, El usuario ingresa al módulo de Cliente y agrega un cliente con todos los campos, seleccionando el Tipo documento "Dni".

| tipoDoc | numDoc   | nombre    | Apellido           | Depart.     | Ciudad     | Direcc.                    | Telef.     | Email                           |
| DNI     | 63952784 | Jorge     | Rivas Sanchez      | La Libertad | Trujillo   | Jr. Ejemplo #847           | 973285416  | jorge.rivas58@correo.com        |

@CP059_happy_path_Cliente
    Examples: CP059, El usuario ingresa al módulo de Cliente y agrega un cliente con todos los campos, seleccionando el Tipo documento "Dni".

| tipoDoc | numDoc   | nombre    | Apellido           | Depart.     | Ciudad     | Direcc.                    | Telef.     | Email                           |
| DNI     | 47263819 | Sandra    | Sanchez Vargas     | La Libertad | Virú       | Psj. Central #365          | 965473182  | sandra.sanchez59@correo.com     |

@CP060_happy_path_Cliente
    Examples: CP060, El usuario ingresa al módulo de Cliente y agrega un cliente con todos los campos, seleccionando el Tipo documento "Dni".

| tipoDoc | numDoc   | nombre    | Apellido          | Depart.     | Ciudad     | Direcc.                     | Telef.     | Email                            |
| DNI     | 47382590 | Carlos    | Muñoz Alarcón     | La Libertad | Trujillo   | Av. Ejemplo #563            | 963825470  | carlos.munoz60@correo.com        |

@CP061_happy_path_Cliente
    Examples: CP061, El usuario ingresa al módulo de Cliente y agrega un cliente con todos los campos, seleccionando el Tipo documento "Dni".

| tipoDoc | numDoc   | nombre    | Apellido          | Depart.     | Ciudad     | Direcc.                     | Telef.     | Email                            |
| DNI     | 39284761 | Lucía     | Alarcón Villanueva| La Libertad | Virú       | Jr. Las Palmeras #123       | 984736512  | lucia.alarcon61@correo.com       |

@CP062_happy_path_Cliente
    Examples: CP062, El usuario ingresa al módulo de Cliente y agrega un cliente con todos los campos, seleccionando el Tipo documento "Dni".

| tipoDoc | numDoc   | nombre    | Apellido          | Depart.     | Ciudad     | Direcc.                     | Telef.     | Email                            |
| DNI     | 52938461 | Fernando  | Villanueva Gutiérrez| La Libertad | Ascope   | Calle Los Pinos #421        | 987461235  | fernando.villanueva62@correo.com |

@CP063_happy_path_Cliente
    Examples: CP063, El usuario ingresa al módulo de Cliente y agrega un cliente con todos los campos, seleccionando el Tipo documento "Dni".

| tipoDoc | numDoc   | nombre    | Apellido          | Depart.     | Ciudad     | Direcc.                     | Telef.     | Email                            |
| DNI     | 39475126 | Gloria    | Gutiérrez Salinas | La Libertad | Guadalupe  | Psj. Las Rosas #634         | 954823671  | gloria.gutierrez63@correo.com    |

@CP064_happy_path_Cliente
    Examples: CP064, El usuario ingresa al módulo de Cliente y agrega un cliente con todos los campos, seleccionando el Tipo documento "Dni".

| tipoDoc | numDoc   | nombre    | Apellido          | Depart.     | Ciudad     | Direcc.                     | Telef.     | Email                            |
| DNI     | 75629438 | Mario     | Salinas Castillo  | La Libertad | Chepen     | Av. Los Jardines #457       | 968452173  | mario.salinas64@correo.com       |

@CP065_happy_path_Cliente
    Examples: CP065, El usuario ingresa al módulo de Cliente y agrega un cliente con todos los campos, seleccionando el Tipo documento "Dni".

| tipoDoc | numDoc   | nombre    | Apellido          | Depart.     | Ciudad     | Direcc.                     | Telef.     | Email                            |
| DNI     | 52943716 | Andrea    | Castillo Paredes  | La Libertad | Pacasmayo  | Jr. Los Olivos #853         | 973584612  | andrea.castillo65@correo.com     |

@CP066_happy_path_Cliente
    Examples: CP066, El usuario ingresa al módulo de Cliente y agrega un cliente con todos los campos, seleccionando el Tipo documento "Dni".

| tipoDoc | numDoc   | nombre    | Apellido          | Depart.     | Ciudad     | Direcc.                     | Telef.     | Email                            |
| DNI     | 81739524 | Roberto   | Paredes Lopez     | La Libertad | Trujillo   | Psj. La Libertad #129       | 964825193  | roberto.paredes66@correo.com     |

@CP067_happy_path_Cliente
    Examples: CP067, El usuario ingresa al módulo de Cliente y agrega un cliente con todos los campos, seleccionando el Tipo documento "Dni".

| tipoDoc | numDoc   | nombre    | Apellido          | Depart.     | Ciudad     | Direcc.                     | Telef.     | Email                            |
| DNI     | 39756128 | Patricia  | Lopez Herrera     | La Libertad | Virú       | Calle Las Palmeras #985     | 958674213  | patricia.lopez67@correo.com      |

@CP068_happy_path_Cliente
    Examples: CP068, El usuario ingresa al módulo de Cliente y agrega un cliente con todos los campos, seleccionando el Tipo documento "Dni".

| tipoDoc | numDoc   | nombre    | Apellido          | Depart.     | Ciudad     | Direcc.                     | Telef.     | Email                            |
| DNI     | 94765132 | Emilio    | Herrera Morales   | La Libertad | Ascope     | Av. Los Almendros #321      | 952873461  | emilio.herrera68@correo.com      |

@CP069_happy_path_Cliente
    Examples: CP069, El usuario ingresa al módulo de Cliente y agrega un cliente con todos los campos, seleccionando el Tipo documento "Dni".

| tipoDoc | numDoc   | nombre    | Apellido          | Depart.     | Ciudad     | Direcc.                     | Telef.     | Email                            |
| DNI     | 26539471 | Rosa      | Morales Quispe    | La Libertad | Guadalupe  | Psj. Las Flores #274        | 963487521  | rosa.morales69@correo.com        |

@CP070_happy_path_Cliente
    Examples: CP070, El usuario ingresa al módulo de Cliente y agrega un cliente con todos los campos, seleccionando el Tipo documento "Dni".

| tipoDoc | numDoc   | nombre    | Apellido          | Depart.     | Ciudad     | Direcc.                     | Telef.     | Email                            |
| DNI     | 81739256 | Alejandro | Quispe Vargas     | La Libertad | Chepen     | Jr. Ejemplo #467            | 984513728  | alejandro.quispe70@correo.com    |

@CP071_happy_path_Cliente
    Examples: CP071, El usuario ingresa al módulo de Cliente y agrega un cliente con todos los campos, seleccionando el Tipo documento "Dni".

| tipoDoc | numDoc   | nombre    | Apellido          | Depart.     | Ciudad     | Direcc.                     | Telef.     | Email                            |
| DNI     | 29384756 | Gabriela  | Vargas Cruz       | La Libertad | Pacasmayo  | Psj. Central #671           | 968374512  | gabriela.vargas71@correo.com     |

@CP072_happy_path_Cliente
    Examples: CP072, El usuario ingresa al módulo de Cliente y agrega un cliente con todos los campos, seleccionando el Tipo documento "Dni".

| tipoDoc | numDoc   | nombre    | Apellido          | Depart.     | Ciudad     | Direcc.                     | Telef.     | Email                            |
| DNI     | 59718436 | Luis      | Cruz Morales      | La Libertad | Trujillo   | Calle Las Rosas #854        | 952847361  | luis.cruz72@correo.com           |

@CP073_happy_path_Cliente
    Examples: CP073, El usuario ingresa al módulo de Cliente y agrega un cliente con todos los campos, seleccionando el Tipo documento "Dni".

| tipoDoc | numDoc   | nombre    | Apellido          | Depart.     | Ciudad     | Direcc.                     | Telef.     | Email                            |
| DNI     | 83746295 | Ana       | Morales Diaz      | La Libertad | Virú       | Av. La Libertad #219        | 954712683  | ana.morales73@correo.com         |

@CP074_happy_path_Cliente
    Examples: CP074, El usuario ingresa al módulo de Cliente y agrega un cliente con todos los campos, seleccionando el Tipo documento "Dni".

| tipoDoc | numDoc   | nombre    | Apellido          | Depart.     | Ciudad     | Direcc.                     | Telef.     | Email                            |
| DNI     | 39827156 | Jorge     | Diaz Salinas      | La Libertad | Ascope     | Jr. Ejemplo #974            | 963851274  | jorge.diaz74@correo.com          |

@CP075_happy_path_Cliente
    Examples: CP075, El usuario ingresa al módulo de Cliente y agrega un cliente con todos los campos, seleccionando el Tipo documento "Dni".

| tipoDoc | numDoc   | nombre    | Apellido          | Depart.     | Ciudad     | Direcc.                     | Telef.     | Email                            |
| DNI     | 67592814 | Paola     | Salinas Lopez     | La Libertad | Guadalupe  | Psj. Las Brisas #564        | 984573126  | paola.salinas75@correo.com       |

