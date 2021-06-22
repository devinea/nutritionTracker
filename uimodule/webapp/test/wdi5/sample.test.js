describe("Test", () => {
    it("da kommt was", () => {
        const allocationTable = browser.asControl({
            id: 'mealsList'
        })
       
        expect(allocationTable.getVisible()).toBeTruthy()
    })
})