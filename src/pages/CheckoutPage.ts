import { expect } from "@playwright/test";
export default class CheckoutPage {

    private Elements ={
        checkoutBtn:"//*[@id='checkout']",
        yourInformationLbl:"//span[contains(text(),'Checkout: Your Information')]",
        firstNameInput:"//*[@id='first-name']",
        lastNameInput:"//*[@id='last-name']",
        postalCode:"//*[@id='postal-code']",
        continueBtn:"//*[@id='continue']",
        checkoutOverviewLbl:"//span[contains(text(),'Checkout: Overview')]",
        finishBtn:"//*[@id='finish']",
        thankYouLbl:"//*[@id='checkout_complete_container']/h2"
    }

    async startCheckout(){
        await global.page.waitForTimeout(500);
        await global.page.click(this.Elements.checkoutBtn);
    }

    async  fillCheckoutInfo(firstName: string, lastName: string, postalCode: string){
        await expect(global.page.locator(this.Elements.yourInformationLbl)).toBeVisible({timeout:6000});
        //Despues de ingresar los datos, de agregado un tiempo ADICIONAL, para que se pueda ver la automatización
        await global.page.fill(this.Elements.firstNameInput, firstName);
        await global.page.waitForTimeout(500);
        await global.page.fill(this.Elements.lastNameInput, lastName);
        await global.page.waitForTimeout(500);
        await global.page.fill(this.Elements.postalCode, postalCode);
        await global.page.waitForTimeout(500);
    }

    async finishPurchase(){
       await global.page.click(this.Elements.continueBtn);
       await expect(global.page.locator(this.Elements.checkoutOverviewLbl)).toBeVisible({timeout:6000});
       //En este for(), hace  Scroll hacia abajo una cierta cantidad, hacia el Boton Finish
       for(let i=0 ; i<10; i++){
        await global.page.keyboard.press("ArrowDown");
       }
        await global.page.click(this.Elements.finishBtn);
    }

    async validateOrderConfirmation(){
        await expect(global.page.locator(this.Elements.thankYouLbl)).toBeVisible({timeout:6000});
        await global.page.waitForTimeout(500);
    }
}