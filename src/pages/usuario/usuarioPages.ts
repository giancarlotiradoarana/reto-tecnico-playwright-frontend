import { expect } from "@playwright/test";
export default class UsuarioPages {

    private Elements ={
        userBtn:"//*[@id='navLateral']/div/nav/ul/li[5]/a/div[2]",
        newUserBtn:"//*[@id='navLateral']/div/nav/ul/li[5]/ul/li[1]/a/div[2]",
        nameInput:"//*[@id='pageContent']/div[3]/form/div[1]/div[1]/div/input",
        lastNameInput:"//*[@id='pageContent']/div[3]/form/div[1]/div[2]/div/input",
        userInput:"//*[@id='pageContent']/div[3]/form/div[2]/div[1]/div/input",
        emailInput:"//*[@id='pageContent']/div[3]/form/div[2]/div[2]/div/input",
        passwordInput:"//*[@id='pageContent']/div[3]/form/div[3]/div[1]/div/input",
        repeatPasswordInput:"//*[@id='pageContent']/div[3]/form/div[3]/div[2]/div/input",
        image:"//*[@id='pageContent']/div[3]/form/div[4]/div[1]/div/label/span[1]/span",
        selectBoxCbo:"//*[@id='pageContent']/div[3]/form/div[4]/div[2]/div/select",
        saveUserBtn:"//*[@id='pageContent']/div[3]/form/p[1]/button[2]",
        yesSaveBtn:"//button[contains(text(),'Si, realizar')]",
        aceptBtn:"//button[contains(text(),'Aceptar')]",
        userLbl:"//*[@id='pageContent']/div[2]/h1",
        listUserBtn:"//*[@id='navLateral']/div/nav/ul/li[5]/ul/li[2]/a/div[2]",
        imageDetailLbl:"//tbody/tr[1]/td[5]/a[1]/i[1]",
        goBackBtn:"//*[@id='pageContent']/div[3]/p/a",

    }

    async selectOptionUser(){
        await global.page.waitForTimeout(500);
        await global.page.click(this.Elements.userBtn);
        await global.page.waitForTimeout(500);
        await global.page.click(this.Elements.newUserBtn);
        await global.page.waitForTimeout(500);
    }

    async addUser(name:string, lastName:string,user:string,email:string,password:string, repeatPassword:string,usuario:string,box:string){
        await expect(global.page.locator(this.Elements.userLbl)).toBeVisible({timeout:60000});
        await global.page.waitForTimeout(500);
        await global.page.fill(this.Elements.nameInput,name);
        await global.page.waitForTimeout(500);
        await global.page.fill(this.Elements.lastNameInput,lastName);
        await global.page.waitForTimeout(500);
        await global.page.fill(this.Elements.userInput,user);
        await global.page.waitForTimeout(500);
        await global.page.fill(this.Elements.emailInput,email);
        await global.page.waitForTimeout(500);
        await global.page.fill(this.Elements.passwordInput,password);
        await global.page.waitForTimeout(500);
        await global.page.fill(this.Elements.repeatPasswordInput,repeatPassword);
        await global.page.waitForTimeout(500);
        let image = await global.page.locator(this.Elements.image).setInputFiles("src/files/images/"+usuario+".png");
        await global.page.waitForTimeout(500);
        await global.page.selectOption(this.Elements.selectBoxCbo,box);
        for(let i=0; i<10; i++){
            await global.page.keyboard.press("ArrowDown");

        }
    }

    async saveUser(){
        await global.page.waitForTimeout(700);
        await global.page.click(this.Elements.saveUserBtn);
        await global.page.waitForTimeout(700);
        await global.page.click(this.Elements.yesSaveBtn);
        await global.page.waitForTimeout(700);
        await global.page.click(this.Elements.aceptBtn);
        await global.page.waitForTimeout(700);
    }

    async listUser(){
        await expect(global.page.locator(this.Elements.userBtn)).toBeVisible({timeout:60000});
        await global.page.waitForTimeout(500);
        await global.page.click(this.Elements.userBtn);
        await global.page.waitForTimeout(500);
        await global.page.click(this.Elements.listUserBtn);
        await global.page.waitForTimeout(500);
    }

    async detailsUser(){
        await expect(global.page.locator(this.Elements.userLbl)).toBeVisible({timeout:60000});
        await global.page.click(this.Elements.imageDetailLbl);
        await global.page.waitForTimeout(2000);
    }

    async goBackBtn(){
        await global.page.waitForTimeout(500);
        await global.page.click(this.Elements.goBackBtn);
        await global.page.waitForTimeout(500);
    }
    
    async validateScreenUser(){
        await expect(global.page.locator(this.Elements.userLbl)).toBeVisible({timeout:60000});
        await global.page.waitForTimeout(500);

    }
}