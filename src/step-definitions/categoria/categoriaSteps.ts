import { Given, Then, When } from "@cucumber/cucumber";

import CategoriaPage from "../../pages/categoria/categoriaPages";

const categoria =new CategoriaPage();

When('ingreso los datos de la categoria: categoria {string}, nombre {string}',async function(category, name) {
    await  categoria.addCategory(category,name);
});

Then('confirmo la nueva categoria', async function () {
    await categoria.confirmCategory();
});