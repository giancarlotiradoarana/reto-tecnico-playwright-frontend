import { Given, Then, When } from "@cucumber/cucumber";


import ClientePage from "../../pages/cliente/clientePages";

const cliente =new ClientePage();

Given('que me encuentro en el Sistema de Ventas Roncal',async function() {
    await cliente.navegativeTheSystem(); 
     
});

 When('ingreso las credenciales Usuario {string} y Clave {string}',async function (user,pass) {
    await cliente.Login(user,pass);
    
 });

 Then('se muestra la pantalla de inicio del sistema',async function () {
    await cliente.isVisiblePageHome();

 });
When ('agrego nuevo cliente con los siguentes campos: Tipo Doc {string} ,Número de Doc {string}, Nombre {string}, Apellido {string},Departamento {string}, Provincia {string}, Distrito {string}, Dirección {string}, Telefono ,{string} Email {string}',async function (tipoDoc,numeroDocumento,nombre,apellido,departamento,provincia,distrito,direccion,telefono,email) {
await cliente.addClient();
    
});

