const cds = require('@sap/cds')
module.exports = function (){

    this.before('CREATE', 'Meals', async (req) => {
        //update nutrition values if not provided or valued as null
        if (! req.data.carbs || req.data.carbs == null)
            req.data.carbs = 0
        if (! req.data.fats || req.data.fats == null)
            req.data.fats = 0
        if (! req.data.proteins || req.data.proteins == null)
            req.data.proteins = 0
        if (! req.data.fibers || req.data.fibers == null)
            req.data.fibers = 0
        if (! req.data.energy || req.data.energy == null)
            req.data.energy = 0

        //update date
        if (! req.data.dateEaten || req.data.dateEaten == null)
            req.data.dateEaten = new Date().toISOString()
    })
    
    this.after ('CREATE', 'Ingredients', async (req, res) => {
        const { Meals } = cds.entities
        let mealID = req.meal[0].meal_ID
        let query = SELECT.from(Meals).where({ID:mealID})
        let meal = await cds.run (query)

        //update database entry
        await UPDATE (Meals) .where('ID =', mealID).set (`energy +=`, req.energy) 
        await UPDATE (Meals) .where('ID =', mealID).set (`proteins +=`, req.proteins) 
        await UPDATE (Meals) .where('ID =', mealID).set (`carbs +=`, req.carbs) 
        await UPDATE (Meals) .where('ID =', mealID).set (`fats +=`, req.fats) 
        await UPDATE (Meals) .where('ID =', mealID).set (`fibers +=`, req.fibers) 

        
    })
}