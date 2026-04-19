import { Page, expect } from '@playwright/test';
export default class CartPage {

    constructor(private page: Page) {}
    private Elements ={
        productInCartLbl:"//div[@class='inventory_item_name' and text()='{productInCart}']",
    }

    async validateProductInCart(product: string){
       const locator = this.page.locator(this.Elements.productInCartLbl.replace("{productInCart}", product));
       const text = await locator.textContent();
       await expect(locator).toHaveText(product);
       await this.page.waitForTimeout(300);
    }
}
