import { expect } from "@playwright/test";
export default class ClientePage {

    private Elements ={
        lblClientsLbl:"//h1[contains(text(),'Clientes')]",
        clientLbl:"//div[contains(text(),'CLIENTES')]",
        addClienteLbl:"//div[contains(text(),'Nuevo cliente')]",
        typeDocumentCbo:"//body/main[1]/section[2]/div[3]/form[1]/div[1]/div[1]/div[1]/div[1]/select[1]",
        numberDocumentInput:"//body/main[1]/section[2]/div[3]/form[1]/div[1]/div[2]/div[1]/input[1]",
        nameClienteInput:"//body/main[1]/section[2]/div[3]/form[1]/div[2]/div[1]/div[1]/input[1]",
        lastNameInput:"//body/main[1]/section[2]/div[3]/form[1]/div[2]/div[2]/div[1]/input[1]",
        departmentInput:"//body/main[1]/section[2]/div[3]/form[1]/div[3]/div[1]/div[1]/input[1]",
        cityInput:"//body/main[1]/section[2]/div[3]/form[1]/div[3]/div[2]/div[1]/input[1]",
        addressInput:"//body/main[1]/section[2]/div[3]/form[1]/div[3]/div[3]/div[1]/input[1]",
        phoneInput:"//body/main[1]/section[2]/div[3]/form[1]/div[4]/div[1]/div[1]/input[1]",
        emailInput:"//body/main[1]/section[2]/div[3]/form[1]/div[4]/div[2]/div[1]/input[1]",
        saveClienteBtn:"//body/main[1]/section[2]/div[3]/form[1]/p[1]/button[2]",
        confirmSaveClienteBtn:"//button[contains(text(),'Si, realizar')]",
        confirmClient:"//button[contains(text(),'Aceptar')]"
     
    }

    async addClient(typoDoc:string, numberDoc:string, nombre:string, apellido:string, departamento:string, ciudad:string, direccion:string, telefono:string, email:string){
        await global.page.click(this.Elements.clientLbl);
        await global.page.waitForTimeout(370);
        await global.page.click(this.Elements.addClienteLbl);
        await global.page.waitForTimeout(370);
        await expect(global.page.locator(this.Elements.lblClientsLbl)).toBeVisible();
        if (typoDoc.toUpperCase() == "DNI") {
            await global.page.selectOption(this.Elements.typeDocumentCbo,typoDoc);
        }
          else{
            await global.page.selectOption(this.Elements.typeDocumentCbo,typoDoc);
        }
        await global.page.waitForTimeout(370);
        await global.page.type(this.Elements.numberDocumentInput,numberDoc);
        await global.page.waitForTimeout(370);
        await global.page.type(this.Elements.nameClienteInput,nombre);
        await global.page.waitForTimeout(370);
        await global.page.type(this.Elements.lastNameInput,apellido);
        await global.page.waitForTimeout(370);
        await global.page.type(this.Elements.departmentInput,departamento);
        await global.page.waitForTimeout(370);
        await global.page.type(this.Elements.cityInput,ciudad);
        await global.page.waitForTimeout(370);
        await global.page.type(this.Elements.addressInput,direccion);
        await global.page.waitForTimeout(370);
        await global.page.type(this.Elements.phoneInput,telefono);
        await global.page.waitForTimeout(370);
        await global.page.type(this.Elements.emailInput,email);
        await global.page.waitForTimeout(200);
        
    }

    async save(){
        await global.page.waitForTimeout(500);
        await global.page.click(this.Elements.saveClienteBtn);
        await global.page.waitForTimeout(500);
    }

    async confirmClient(){
        await global.page.waitForTimeout(500);
        await global.page.click(this.Elements.confirmSaveClienteBtn);
        await global.page.waitForTimeout(1000);
        await global.page.click(this.Elements.confirmClient);
        await global.page.waitForTimeout(500);
    }
    
}