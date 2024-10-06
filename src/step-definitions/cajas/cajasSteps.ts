import { Given, Then, When } from "@cucumber/cucumber";

import CajasPages from "../../pages/cajas/cajasPages";

const cajas =new CajasPages();

 When('selecciono la opción Cajas', async function () {
    await cajas.clickOptionCajas();
 });

 When('selecciono la opcion nueva Caja', async function () {
    await cajas.clickNewCaja();
 });

 When('ingreso los campos: Nombre Caja {string}, número de caja {string} , Efectivo en Caja {string}', async function (nameCaja, numberCaja, efectiveCaja) {
    await cajas.fillFieldsCaja(nameCaja,numberCaja,efectiveCaja);
  });

  When('doy click en Guardar', async function() {
    await cajas.clickBtnSave();
  });