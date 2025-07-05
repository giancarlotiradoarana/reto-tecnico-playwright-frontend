import { Given, When, Then } from '@cucumber/cucumber';
import  ProductsPage  from "../pages/ProductsPage";
import  CartPage  from "../pages/CartPage";
import  LoginPage  from "../pages/LoginPage";

const loginPage = new LoginPage();
const productsPage = new ProductsPage();
const cartPage = new CartPage();

// Given('el usuario ingresa el usuario y la contraseña', async function () {
//   await loginPage.navigate();
//    await loginPage.enterCredentials();
// });

When('agrega el producto {string} al carrito', async function (product: string) {
  await productsPage.addProductToCart(product);
});

Then('el carrito debería mostrar {string} artículo', async function (count: string) {
  await productsPage.validateCartCount(count);
});

When('navega al carrito de compras', async function ()  {
  await productsPage.goToCart();
});

Then('debería ver el producto {string} listado en el carrito', async function (product: string) {
  await cartPage.validateProductInCart(product);
});
