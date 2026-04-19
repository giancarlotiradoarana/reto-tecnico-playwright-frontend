import { Page, expect } from '@playwright/test';
export default class CheckoutPage {

    constructor(private page: Page) {}
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
        await this.page.waitForTimeout(500);
        await this.page.click(this.Elements.checkoutBtn);
    }

    async  fillCheckoutInfo(firstName: string, lastName: string, postalCode: string){
        await expect(this.page.locator(this.Elements.yourInformationLbl)).toBeVisible({timeout:6000});
        //Despues de ingresar los datos, de agregado un tiempo ADICIONAL, para que se pueda ver la automatización
        await this.page.fill(this.Elements.firstNameInput, firstName);
        await this.page.waitForTimeout(500);
        await this.page.fill(this.Elements.lastNameInput, lastName);
        await this.page.waitForTimeout(500);
        await this.page.fill(this.Elements.postalCode, postalCode);
        await this.page.waitForTimeout(500);
    }

    async finishPurchase(){
       await this.page.click(this.Elements.continueBtn);
       await expect(this.page.locator(this.Elements.checkoutOverviewLbl)).toBeVisible({timeout:6000});
       //En este for(), hace  Scroll hacia abajo una cierta cantidad, hacia el Boton Finish
       for(let i=0 ; i<10; i++){
        await this.page.keyboard.press("ArrowDown");
       }
        await this.page.click(this.Elements.finishBtn);
    }

    async validateOrderConfirmation(){
        await expect(this.page.locator(this.Elements.thankYouLbl)).toBeVisible({timeout:6000});
        await this.page.waitForTimeout(500);
    }
}

