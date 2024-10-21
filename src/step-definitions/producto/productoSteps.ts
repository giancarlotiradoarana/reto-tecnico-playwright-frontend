import { Given, Then, When } from "@cucumber/cucumber";

import ProductoPage from "../../pages/producto/productoPages";
const producto =new ProductoPage();

When('selecion Producto', async function () {
    await producto.selectProduct();

});

When('hago click en Nuevo Producto', async function () {
    await producto.clickNewProduct();

});

Then('se muestra la pantalla de Producto', async function () {
    await producto.validateScreenProduct();

});

When('ingresos los campos: codigo de barra {string}, nombre {string}, precio de compra {string}, precio de venta {string}', async function (codeBarra, name,priceCompra, priceVenta) {
    await producto.fillProduct1(codeBarra, name,priceCompra, priceVenta);

});

When('stocks {string},marca {string}, modelo {string}, presentacion {string}, categoria {string}, foto {string}', async function (stock,marca, model, presentation, category, image) {
    await producto.fillProduct2(stock,marca, model, presentation, category, image);

})

When('hago click en Guardar', async function () {
    await producto.clickSave();

});

Then('confirmo el registro del Producto', async function () {
    await producto.confirmProduct();

});
