// module.exports = async (srv) => {
//     srv.on('Meal', async (req) => {
//         console.log('hello there')
        

//     })
//     this.before ('READ',`*`, (req)=>{console.log('hello there')})
// }

const cds = require('@sap/cds')
module.exports = function (){
//   this.after ('READ',`Meals`, (req, res)=>{
//       let aIngredients = req[0].ingredient
//       let energy = 0
//       let proteins = 0
//       let carbs = 0
//       let fats = 0
//       let fibers = 0
//       aIngredients.forEach(element => {
//           energy += element.energy
//           proteins += element.proteins
//           carbs += element.carbs
//           fats += element.fats
//           fibers += element.fibers
//       })
//       res.results[0].energy = energy
//       res.results[0].proteins = proteins
//       res.results[0].carbs = carbs
//       res.results[0].fats = fats
//       res.results[0].fibers = fibers
//     })
    //TODO create a Meal with value 0 for the nutrition values

    
    this.after ('CREATE', 'Ingredients', async (req, res) => {
        const { Meals } = cds.entities
        let query = SELECT.from(Meals).where({ID:req.meal[0].meal_ID})
        let meal = await cds.run (query)

        meal.energy += req.energy
        meal.proteins += req.proteins
        meal.carbs += req.carbs
        meal.fats += req.fats
        meal.fibers += req.fibers

        //update database entry
        await UPDATE (Meals) .where('ID =', req.meal[0].meal_ID).set (`energy +=`, req.energy) 
        await UPDATE (Meals) .where('ID =', req.meal[0].meal_ID).set (`proteins +=`, req.proteins) 
        await UPDATE (Meals) .where('ID =', req.meal[0].meal_ID).set (`carbs +=`, req.carbs) 
        await UPDATE (Meals) .where('ID =', req.meal[0].meal_ID).set (`fats +=`, req.fats) 
        await UPDATE (Meals) .where('ID =', req.meal[0].meal_ID).set (`fibers +=`, req.fibers) 

        
    })
}