import { Given, Then, When } from "@cucumber/cucumber";


import CategoriaPage from "../../pages/categoria/categoriaPages";

const categoria =new CategoriaPage();

When('ingreso los datos de la categoria: categoria {string}, nombre {string}',async function(category, name) {
    await  categoria.addCategory(category,name);
});

When('confirmo', async function () {
    await categoria.confirmCategory();
});

When('guardo la nueva categoria', async function () {
    await categoria.saveCategory();
});

Then('se muestra la pantalla del Módulo de Categoria', async function () {
    await categoria.validateScreenCategory();
});