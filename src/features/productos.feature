@Sistema_Ventas_Roncal
Feature: Módulo de Producto

@esc000_happy_path_login
  Scenario Outline: Registro de Producto, sin cerrar el sistema para volver a registrar nuevamente
    Given que me encuentro en el Sistema de Ventas Roncal
    When ingreso las credenciales Usuario "Administrador" y Clave "Administrador"
    Then se muestra la pantalla de inicio del sistema

 @esc001_happy_path_Producto
  Scenario Outline: - El usuario ingresa al módulo de Producto agrega un Producto todos los campos además de seleccionando los tipos de Documentos
    Given que me encuentro en la pagina Principal de sistema
    When selecion Producto
    And hago click en Nuevo Producto
    Then se muestra la pantalla de Producto
    When ingresos los campos: codigo de barra "<codigoBarra>", nombre "<Nombre>", precio de compra "<precioCompra>", precio de venta "<precioVenta>"
    And stocks "<Stock>",marca "<Marca>", modelo "<Modelo>", presentacion "1 - Unidad", categoria "1 - Electrónico", foto "<nombreFoto>"
    When hago click en Guardar
    Then confirmo el registro del Producto

    @CP001_happy_path_Producto
    Examples: CP001, El empleado ingresa al módulo de Producto y agrega un Producto con todos los campos
    |codigoBarra  |	Nombre	                 |precioCompra |precioVenta	|Stock|	Marca           |Modelo            | nombreFoto     |
    |1234567890123|	Monitor LED 24 pulgadas	 |500 	       |650 	    |835  |  LG	            |24MK600M          | monitor        |
    
    @CP002_happy_path_Producto
    Examples: CP002, El empleado ingresa al módulo de Producto y agrega un Producto con todos los campos
    |codigoBarra  |	Nombre	                 |precioCompra |precioVenta	|Stock|	Marca           |Modelo            | nombreFoto     |
    |9876543210987|	Teclado mecánico RGB	 |120 	       |180 	    |350  |  HyperXAlloy   |FPS Pro           | teclado        |
    
    @CP003_happy_path_Producto
    Examples: CP003, El empleado ingresa al módulo de Producto y agrega un Producto con todos los campos
    |codigoBarra  |	Nombre	                 |precioCompra |precioVenta	|Stock|	Marca           |Modelo            | nombreFoto     |
    |1357913579135|	Disco duro externo 1TB	 |200 	       |270 	    |230  |  Western Digital|WD Elements       | discoduro      |
    
    @CP004_happy_path_Producto
    Examples: CP004, El empleado ingresa al módulo de Producto y agrega un Producto con todos los campos
    |codigoBarra  |	Nombre	                 |precioCompra |precioVenta	|Stock|	Marca           |Modelo            | nombreFoto     |
    |2468024680246|	Laptop Core i5 10ma Gen	 |2500 	       |3200 	    |975  |  Dell	        |Inspiron 3501     | laptop         |
    
    @CP005_happy_path_Producto
    Examples: CP005, El empleado ingresa al módulo de Producto y agrega un Producto con todos los campos
    |codigoBarra  |	Nombre	                 |precioCompra |precioVenta	|Stock|	Marca           |Modelo            | nombreFoto     |
    |1122334455667|	Memoria RAM 16GB DDR4	 |300 	       |400 	    |340  |  Corsair    	|Vengeance LPX     | memoria        |
    
    @CP006_happy_path_Producto
    Examples: CP006, El empleado ingresa al módulo de Producto y agrega un Producto con todos los campos
    |codigoBarra  |	Nombre	                 |precioCompra |precioVenta	|Stock|	Marca           |Modelo            | nombreFoto     |
    |9988776655443|	Mouse inalámbrico	     |50 	       |80          |1200 |  Logitech	    |M185              | mouse          |
    
    @CP007_happy_path_Producto
    Examples: CP007, El empleado ingresa al módulo de Producto y agrega un Producto con todos los campos
    |codigoBarra  |	Nombre	                 |precioCompra |precioVenta	|Stock|	Marca           |Modelo            | nombreFoto     |
    |2233445566778|	Impresora multifuncional |600 	       |750 	    |257  |  HPDeskJet      |2710              | impresora      |
    
    @CP008_happy_path_Producto
    Examples: CP008, El empleado ingresa al módulo de Producto y agrega un Producto con todos los campos
    |codigoBarra  |	Nombre	                 |precioCompra |precioVenta	|Stock|	Marca           |Modelo            | nombreFoto     |
    |3344556677889|	Tarjeta gráfica GTX 1660 |1100 	       |1500 	    |708  |  ASUS	        |TUF Gaming GTX1660| Tarjetagrafica |
    
    @CP009_happy_path_Producto
    Examples: CP009, El empleado ingresa al módulo de Producto y agrega un Producto con todos los campos
    |codigoBarra  |	Nombre	                 |precioCompra |precioVenta	|Stock|	Marca           |Modelo            | nombreFoto     |
    |4455667788991|	SSD 512GB    	         |350 	       |380		    |2000 |  Kingston       |A2000             | ssd            |
    
    @CP010_happy_path_Producto
    Examples: CP010, El empleado ingresa al módulo de Producto y agrega un Producto con todos los campos
    |codigoBarra  |	Nombre	                 |precioCompra |precioVenta	|Stock|	Marca           |Modelo            | nombreFoto     |
    |5566778899002|	Fuente de poder 600W	 |180 	       |250 	    |459  |  EVGA	        |600 W1            | fuente         |