import { expect } from "@playwright/test";

export default class CategoriaPage {

    private Elements ={
        categoryBtn:"//div[contains(text(),'CATEGORIAS')]",
        addCategoryBtn:"//div[contains(text(),'Nueva categoría')]",
        categoryInput:"//body/main[1]/section[2]/div[3]/form[1]/div[1]/div[1]/div[1]/input[1]",
        nameCategoryInput:"//body/main[1]/section[2]/div[3]/form[1]/div[1]/div[2]/div[1]/input[1]",
        saveCategoryBtn:"//body/main[1]/section[2]/div[3]/form[1]/p[1]/button[2]",
        confirmSaveCategoryBtn:"//button[contains(text(),'Si, realizar')]",
        confirmCategory:"//button[contains(text(),'Aceptar')]"
     
    }

    async addCategory(category:string, name:string){
        await global.page.click(this.Elements.categoryBtn);
        await global.page.waitForTimeout(900);
        await global.page.click(this.Elements.addCategoryBtn);
        await global.page.waitForTimeout(900);
        await global.page.type(this.Elements.categoryInput,category);
        await global.page.waitForTimeout(900);
        await global.page.type(this.Elements.nameCategoryInput,name);
        await global.page.waitForTimeout(900);

    }

    async confirmCategory(){
        await global.page.waitForTimeout(500);
        await global.page.click(this.Elements.confirmSaveCategoryBtn);
        await global.page.waitForTimeout(1000);
        await global.page.click(this.Elements.confirmCategory);
        await global.page.waitForTimeout(500);
    }
}
