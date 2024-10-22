import { expect } from "@playwright/test";
export default class VentaPage {

    private Elements ={
        saleLbl:"//*[@id='navLateral']/div/nav/ul/li[13]/a/div[2]",
        newSaleLbl:"//*[@id='navLateral']/div/nav/ul/li[13]/ul/li[1]/a/div[2]",
        validateScreenSaleLbl:"//*[@id='pageContent']/div[2]/h1",
        codeBarraInput:"//*[@id='sale-barcode-input']",
        amountInput:"//*[@id='sale_input_1234567890123']",
        clickClienteBtn:"//*[@id='btn_add_client']/i",
        addClienteInput:"//*[@id='input_cliente']",
        browserClientBtn:"//*[@id='modal-js-client']/div[2]/section/p/button",
        aggregateClientBtn:"//*[@id='tabla_clientes']/div/table/tbody/tr/td[2]/button/i",
        yesSaveBtn:"//button[contains(text(),'Si, agregar')]",
        yesReaBtn:"//button[contains(text(),'Si, realizar')]",
        aceptBtn:"//button[contains(text(),'Aceptar')]",
        amountsInput:"//*[@id='venta_abono']",
        saveAmountBtn:"//*[@id='pageContent']/div[3]/div/div[2]/form/p[1]/button",
        addProductBtn:"//*[@id='sale-barcode-form']/div/div[2]/div/a/button",



       


    }

    async selectSale(){
        await global.page.waitForTimeout(400);
        await global.page.click(this.Elements.saleLbl);

    }

    async newSale(){
        await global.page.waitForTimeout(400);
        await global.page.click(this.Elements.newSaleLbl);
    }

    async validateScreenSale(){
        await expect(global.page.locator(this.Elements.validateScreenSaleLbl)).toBeVisible({timeout:200000});
        await global.page.waitForTimeout(400);
    }

    async fillSale(codeBarra:string, amount:string){
        await global.page.waitForTimeout(400); 
        await global.page.fill(this.Elements.codeBarraInput,codeBarra);
        await global.page.waitForTimeout(600); 
        await global.page.click(this.Elements.addProductBtn);
        await global.page.waitForTimeout(1000); 
        await global.page.fill(this.Elements.amountInput,amount);
        await global.page.waitForTimeout(400);

    }

    async fillCliente(cliente:string){
        await global.page.waitForTimeout(400); 
        await global.page.click(this.Elements.clickClienteBtn);
        await global.page.waitForTimeout(400); 
        await global.page.fill(this.Elements.addClienteInput,cliente);
        await global.page.waitForTimeout(400); 
        await global.page.click(this.Elements.browserClientBtn);
         
    }

    async aggregateCliente(){
        await global.page.waitForTimeout(400);
        await global.page.click(this.Elements.aggregateClientBtn);
        await global.page.waitForTimeout(400);
    }

    async confirmAggregateCliente(){
        await global.page.click(this.Elements.yesSaveBtn);
        await global.page.waitForTimeout(400);
        await global.page.click(this.Elements.aceptBtn);
        await global.page.waitForTimeout(1000);
    }

    async amount(amount:string){
        await global.page.waitForTimeout(700);
        await global.page.fill(this.Elements.amountsInput,amount);
        await global.page.waitForTimeout(300);
    }

    async saveAmount(){
        await global.page.waitForTimeout(400);
        await global.page.click(this.Elements.saveAmountBtn);
        await global.page.waitForTimeout(400);
        await global.page.click(this.Elements.yesReaBtn);
        await global.page.click(this.Elements.aceptBtn);
        await global.page.waitForTimeout(1000);

    }


}

