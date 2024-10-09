import { expect } from "@playwright/test";

export default class LoginPage {

    private Elements ={
        userInput:"//body/div[1]/form[1]/div[1]/div[1]/input[1]",
        passInput:"//body/div[1]/form[1]/div[2]/div[1]/input[1]",
        loginBtn:"//button[contains(text(),'LOG IN')]",
        errorMsgLbl:"//body/div[1]/form[1]/article[1]/div[1]",
        textIsVisible:"//div[contains(text(),'Empresa Roncal-Chepén')]",
        textViewLbl:"//h5[contains(text(),'Inicia sesión con tu cuenta')]",
        ventasLbl:"//*[@id='navLateral']/div/div[2]",
        homeLbl:"//*[@id='pageContent']/div[2]/h1",

    }
    async navegativeTheSystem(){
        await global.page.goto(process.env.BASEURL,{timeout:100000});
        await expect(global.page.locator(this.Elements.textViewLbl)).toBeVisible({timeout:200000});
    
    }

    async navegativeTheSystem2(){
       if( await global.page.locator(this.Elements.ventasLbl).isVisible() || await global.page.locator(this.Elements.homeLbl).isVisible()){
        await global.page.waitForTimeout(500);
       }
       
    }

    async Login(user:string, pass:string){
        await global.page.waitForTimeout(500);
        await global.page.type(this.Elements.userInput, user);
        await global.page.waitForTimeout(500);
        await global.page.type(this.Elements.passInput, pass);
        await global.page.waitForTimeout(500);
        await global.page.click(this.Elements.loginBtn);
        await global.page.waitForTimeout(500);
    }

    async isVisiblePageHome(){
        await global.page.waitForTimeout(1000);
        await expect(global.page.locator(this.Elements.textIsVisible)).toBeVisible({timeout:90000});
    }

    async msgErrorLogin(errorMsg:string){
        await global.page.waitForTimeout(1000);
        await expect(global.page.locator(this.Elements.errorMsgLbl,errorMsg)).toBeVisible({timeout:90000});
    }

}