import { expect } from "@playwright/test";
export default class ProductoPage {

    private Elements ={

        productLbl:"//*[@id='navLateral']/div/nav/ul/li[11]/a/div[2]",
        newProductLbl:"//*[@id='navLateral']/div/nav/ul/li[11]/ul/li[1]/a/div[2]",
        validateProductLbl:"//*[@id='pageContent']/div[2]/h1",
        codeBarraInput:"//*[@id='pageContent']/div[3]/form/div[1]/div[1]/div/input",
        nameProductInput:"//*[@id='pageContent']/div[3]/form/div[1]/div[2]/div/input",
        priceCompraInput:"//*[@id='pageContent']/div[3]/form/div[2]/div[1]/div/input",
        priceVentaInput:"//*[@id='pageContent']/div[3]/form/div[2]/div[2]/div/input",
        stockInput:"//*[@id='pageContent']/div[3]/form/div[2]/div[3]/div/input",
        marcaInput:"//*[@id='pageContent']/div[3]/form/div[3]/div[1]/div/input",
        modelInput:"//*[@id='pageContent']/div[3]/form/div[3]/div[2]/div/input",
        presentationCbo:"//*[@id='pageContent']/div[3]/form/div[3]/div[3]/div/div/select",
        categoryCbo:"//*[@id='pageContent']/div[3]/form/div[3]/div[4]/div/select",
        imageProductImg:"//*[@id='pageContent']/div[3]/form/div[4]/div/input",
        saveBtn:"//*[@id='pageContent']/div[3]/form/p[1]/button[2]",
        confirmSaveProductBtn:"//button[contains(text(),'Si, realizar')]",
        aceptBtn:"//button[contains(text(),'Aceptar')]",


    }

    async selectProduct(){
        await global.page.waitForTimeout(400);
        await global.page.click(this.Elements.productLbl);
    }

    async clickNewProduct(){
        await global.page.waitForTimeout(400);
        await global.page.click(this.Elements.newProductLbl);
    }
    
    async validateScreenProduct(){
        await expect(global.page.locator(this.Elements.validateProductLbl)).toBeVisible({timeout:200000});
        await global.page.waitForTimeout(400);

    }

    async fillProduct1(codeBarra:string, name:string,priceCompra:string, priceVenta:string){
        await global.page.waitForTimeout(400);
        await global.page.fill(this.Elements.codeBarraInput,codeBarra);
        await global.page.waitForTimeout(400);
        await global.page.fill(this.Elements.nameProductInput,name);
        await global.page.waitForTimeout(400);
        await global.page.fill(this.Elements.priceCompraInput,priceCompra);
        await global.page.waitForTimeout(400);
        await global.page.fill(this.Elements.priceVentaInput,priceVenta);
        await global.page.waitForTimeout(400);
    }

    async fillProduct2(stock:string,marca:string, model:string, presentation:string, category:string, image:string){
        await global.page.waitForTimeout(400);
        await global.page.fill(this.Elements.stockInput,stock);
        await global.page.waitForTimeout(400);
        await global.page.fill(this.Elements.marcaInput,marca);
        await global.page.waitForTimeout(400);
        await global.page.fill(this.Elements.modelInput,model);
        await global.page.waitForTimeout(400);
        await global.page.selectOption(this.Elements.presentationCbo,presentation);
        await global.page.waitForTimeout(400);
        await global.page.selectOption(this.Elements.categoryCbo,category);
        await global.page.waitForTimeout(400);
        await global.page.locator(this.Elements.imageProductImg).setInputFiles("src/files/productos/"+image+".png");
        await global.page.waitForTimeout(400);
    }

    async clickSave(){
        await global.page.waitForTimeout(400);
        await global.page.click(this.Elements.saveBtn);
    }

    async confirmProduct(){
        await global.page.waitForTimeout(500);
        await global.page.click(this.Elements.confirmSaveProductBtn);
        await global.page.waitForTimeout(1000);
        await global.page.click(this.Elements.aceptBtn);
    }

}
