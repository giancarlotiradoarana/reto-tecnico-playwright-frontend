import { Given, Then, When } from "@cucumber/cucumber";

import VentaPage from "../../pages/ventas/ventasPages";
const venta = new VentaPage();

When('seleciono Ventas', async function () {
    await venta.selectSale();

});

When('hago click en Nueva Venta', async function () {
    await venta.newSale();

});

Then('se muestra la pantalla de Ventas', async function () {
    await venta.validateScreenSale()

});

When('ingreso los datos: Codigo de Barras {string}, cantidad {string}', async function (codeBarra, amount) {
    await venta.fillSale(codeBarra, amount);

});

When('ingreso el nombre del cliente {string}', async function (cliente) {
    await venta.fillCliente(cliente);

});

When('agrego el cliente', async function () {
    await venta.aggregateCliente();

});

When('confirmo para agregar al cliente', async function () {
    await venta.confirmAggregateCliente();

});

 When('agrego el monto que va a pagar el cliente, que es mayor al monto de la compra {string}', async function (amount) {
    await venta.amount(amount);

 });

 When('guardo la venta', async function () {
    await venta.saveAmount();

 });

 When('se muestra el tipo Documento {string}', async function (typeDocSale) {
    await venta.clickTypeDocSale(typeDocSale);
 });
