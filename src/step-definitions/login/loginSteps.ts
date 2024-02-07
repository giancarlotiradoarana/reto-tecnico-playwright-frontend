import { Given, Then, When } from "@cucumber/cucumber";

import LoginPage from "../../pages/login/loginPages";

const login =new LoginPage();

Given('que me encuentro en el Sistema de Ventas Roncal',async function() {
    await login.navegativeTheSystem(); 
     
});

 When('ingreso las credenciales Usuario {string} y Clave {string}',async function (user,pass) {
    await login.Login(user,pass);
    
 });

 Then('se muestra la pantalla de inicio del sistema',async function () {
    await login.isVisiblePageHome();

 });

 Then('se muestra el siguente error {string}',async function (errorMsg) {
     await login.msgErrorLogin(errorMsg);
    
 });




