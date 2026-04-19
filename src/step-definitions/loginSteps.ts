import { Given, When, Then } from "@cucumber/cucumber";
import LoginPage from "../pages/LoginPage";

Given("el usuario está en la página de inicio de sesion", async function () {
  this.loginPage = new LoginPage(this.page);
  await this.loginPage.navigate();
});

When("el usuario ingresa credenciales válidas", async function () {
  await this.loginPage.enterCredentials();
});

When("el usuario bloqueado intenta iniciar sesión", async function () {
  await this.loginPage.enterLockedCredentials();
});

When("hace clic en el botón de login", async function () {
  await this.loginPage.submit();
});

Then("el usuario debería ver el texto {string} en la parte superior", async function (textProduct: string) {
  await this.loginPage.validateLoginSuccess(textProduct);
});

Then("debería ver un mensaje de error indicando que el usuario está bloqueado", async function () {
  await this.loginPage.validateLoginError();
});