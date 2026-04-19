import { Given, When, Then } from '@cucumber/cucumber';
import ProductsPage from "../pages/ProductsPage";
import CartPage from "../pages/CartPage";

When('agrega el producto {string} al carrito', async function (product: string) {
  this.productsPage = new ProductsPage(this.page);
  await this.productsPage.addProductToCart(product);
});

Then('el carrito debería mostrar {string} artículo', async function (count: string) {
  await this.productsPage.validateCartCount(count);
});

When('navega al carrito de compras', async function () {
  await this.productsPage.goToCart();
});

Then('debería ver el producto {string} listado en el carrito', async function (product: string) {
  this.cartPage = new CartPage(this.page);
  await this.cartPage.validateProductInCart(product);
});