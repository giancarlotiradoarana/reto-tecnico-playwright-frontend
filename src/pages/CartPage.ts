import { expect } from "@playwright/test";
export default class CartPage {

    private Elements ={
        productInCartLbl:"//div[@class='inventory_item_name' and text()='{productInCart}']",
    }

    async validateProductInCart(product: string){
       const locator = global.page.locator(this.Elements.productInCartLbl.replace("{productInCart}", product));
       const text = await locator.textContent();
       await expect(locator).toHaveText(product);
       await global.page.waitForTimeout(300);
    }

}