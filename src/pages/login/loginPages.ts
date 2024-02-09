import { expect } from "@playwright/test";

export default class LoginPage {

    private Elements ={
        userInput:"//body/div[1]/form[1]/div[1]/div[1]/input[1]",
        passInput:"//body/div[1]/form[1]/div[2]/div[1]/input[1]",
        loginBtn:"//button[contains(text(),'LOG IN')]",
        errorMsgLbl:"//body/div[1]/form[1]/article[1]/div[1]",
        textIsVisible:"//div[contains(text(),'Empresa Roncal-Chepén')]"

    }
    async navegativeTheSystem(){
        await global.page.goto(process.env.BASEURL,{timeout:100000});
    }

    async Login(user:string, pass:string){
        await global.page.waitForTimeout(1000);
        await global.page.type(this.Elements.userInput, user),{timeout:90000};
        await global.page.waitForTimeout(1000);
        await global.page.type(this.Elements.passInput, pass),{timeout:90000};
        await global.page.waitForTimeout(1000);
        await global.page.click(this.Elements.loginBtn);
        await global.page.waitForTimeout(1000);
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