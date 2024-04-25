import { Given, Then, When } from "@cucumber/cucumber";

import UsuarioPages from "../../pages/usuario/usuarioPages";

const usuario =new UsuarioPages();

When('selecciono a la opción usuario', async function () {
    await usuario.selectOptionUser();
});

When('ingreso los datos: nombre {string}, apellidos {string}, Usuario {string}, email {string}, Clave {string}, repite clave {string}, foto {string}, caja de ventas {string}', async function (name, lastName,user,email,password, repeatPassword,image,box) {
    await usuario.addUser(name, lastName,user,email,password, repeatPassword,image,box);
});

When('Guardo', async function () {
    await usuario.saveUser();
});

When('ingreso a la opción Lista de Usuario', async function () {
    await usuario.listUser();
});

When('doy click al detalle del usuario', async function () {
    await usuario.detailsUser(); 
});

When('click en la opción Atrás', async function () {
    await usuario.goBackBtn(); 
});

Then('se muestra la pantalla de usuario', async function () {
    await usuario.validateScreenUser(); 

});