namespace tm.nutriTracker;

using { cuid, managed } from '@sap/cds/common';

entity Meals : managed, cuid {
    name:           String;
    dateEaten:      DateTime;
    energy:         Integer;
    proteins:        Integer;
    carbs:          Integer;
    fats:           Integer;
    fibers:          Integer;
    ingredient:     Composition of  many IngredientInMeal on ingredient.meal=$self;
}

entity Ingredients: managed, cuid {
    //meals:          Composition of many Meal on meals.ID;
    meal:           Composition of  many IngredientInMeal on meal.ingredient=$self;
    name:           String;
    energy:         Integer;
    protein:        Integer;
    carbs:          Integer;
    fats:           Integer;
    fiber:          Integer;

}
entity IngredientInMeal {
    key meal: Composition of Meals;
    key ingredient: Composition of Ingredients;
}