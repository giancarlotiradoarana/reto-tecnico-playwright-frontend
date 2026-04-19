import { When, Then } from '@cucumber/cucumber';
import CheckoutPage from '../pages/CheckoutPage';

When('inicia el proceso de checkout', async function () {
  this.checkoutPage = new CheckoutPage(this.page);
  await this.checkoutPage.startCheckout();
});

When(
  'completa sus datos: nombre {string}, apellido {string}, código postal {string}',
  async function (firstName: string, lastName: string, postalCode: string) {
    await this.checkoutPage.fillCheckoutInfo(firstName, lastName, postalCode);
  }
);

When('finaliza la compra', async function () {
  await this.checkoutPage.finishPurchase();
});

Then('debería ver un mensaje de confirmación de compra', async function () {
  await this.checkoutPage.validateOrderConfirmation();
});