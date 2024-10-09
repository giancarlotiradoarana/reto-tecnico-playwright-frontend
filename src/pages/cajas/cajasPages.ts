import { expect } from "@playwright/test";
export default class CajasPages {

    private Elements ={
       cajasBtn:"//*[@id='navLateral']/div/nav/ul/li[3]/a/div[2]",
       newCajaBtn:"//*[@id='navLateral']/div/nav/ul/li[3]/ul/li[1]/a/div[2]",
       nameCajaInput:"//*[@id='pageContent']/div[3]/form/div/div[1]/div/input",
       numberCajaInput:"//*[@id='pageContent']/div[3]/form/div/div[2]/div/input",
       efectiveCajaInput:"//*[@id='pageContent']/div[3]/form/div/div[3]/div/input",
       saveBtn:"//*[@id='pageContent']/div[3]/form/p[1]/button[2]",
       confirmSaveBtn:"//button[contains(text(),'Si, realizar')]",
       cajasLbl:"//*[@id='pageContent']/div[4]/h1",

    }

    async clickOptionCajas(){
        await global.page.click(this.Elements.cajasBtn);
        await global.page.waitForTimeout(400);
    }

    async clickNewCaja(){
        await global.page.click(this.Elements.newCajaBtn);
        await global.page.waitForTimeout(300);
    }

    async fillFieldsCaja(nameCaja:string, numberCaja:string,efectiveCaja:string){
        await global.page.waitForTimeout(200);
        await global.page.fill(this.Elements.nameCajaInput,nameCaja);
        await global.page.waitForTimeout(200);
        await global.page.fill(this.Elements.numberCajaInput,numberCaja);
        await global.page.waitForTimeout(200);
        await global.page.fill(this.Elements.efectiveCajaInput,efectiveCaja);
        await global.page.waitForTimeout(200);

    }

    async clickBtnSave(){
        await global.page.waitForTimeout(200);
        await global.page.click(this.Elements.saveBtn);
        await global.page.click(this.Elements.confirmSaveBtn);
        await global.page.waitForTimeout(200);

    }
}