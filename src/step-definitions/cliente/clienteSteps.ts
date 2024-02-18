import { Given, Then, When } from "@cucumber/cucumber";

import ClientePage from "../../pages/cliente/clientePages";

const cliente =new ClientePage();


  When('ingreso los datos del cliente: tipoDoc {string}, numDoc {string}, nombre {string}, Apellido {string}, Depart.{string}, Ciudad {string}, Direcc. {string}, Telef. {string}, Email {string}', async function (typoDoc, numberDoc, nombre, apellido, departamento, ciudad, direccion, telefono,email) {
      await cliente.addClient(typoDoc, numberDoc, nombre, apellido, departamento, ciudad, direccion, telefono,email);
});

  When('guardo', async function () {
       await cliente.save();
  });

  Then('confirmo al nuevo cliente', async function () {
        await cliente.confirmClient();
  });

