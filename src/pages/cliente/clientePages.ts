import { expect } from "@playwright/test";
import LoginPage from "../../pages/login/loginPages";
export default class ClientePage {

    private Elements ={
       clienteLbl : "//div[contains(text(),'CLIENTES')]",
       addClientLbl : "//div[contains(text(),'Nuevo cliente')]",
       typeDocumentCbo : "//body/main[1]/section[2]/div[3]/form[1]/div[1]/div[1]/div[1]/div[1]/select[1]",
       numberDocumentInput : "//body/main[1]/section[2]/div[3]/form[1]/div[1]/div[2]/div[1]/input[1]",
       nameInput: "//body/main[1]/section[2]/div[3]/form[1]/div[2]/div[1]/div[1]/input[1]",
       lastNameInput : "//body/main[1]/section[2]/div[3]/form[1]/div[2]/div[2]/div[1]/input[1]",
       departmentInput : "//body/main[1]/section[2]/div[3]/form[1]/div[3]/div[1]/div[1]/input[1]",
       cityInput : "//body/main[1]/section[2]/div[3]/form[1]/div[3]/div[2]/div[1]/input[1]",
       addressInput : "//body/main[1]/section[2]/div[3]/form[1]/div[3]/div[3]/div[1]/input[1]",
       phoneInput : "//body/main[1]/section[2]/div[3]/form[1]/div[4]/div[1]/div[1]/input[1]",
       GmailInpunt : "//body/main[1]/section[2]/div[3]/form[1]/div[4]/div[2]/div[1]/input[1]"

        
    }
  async addClient(){  
    await global.page.waitForTimeout(1000);
    await global.page.click(this.Elements.clienteLbl);

  }  

    }