using { tm.nutriTracker as nutriTracker } from '../db/schema';

service MainService {
    entity Meals as projection on nutriTracker.Meals;
    entity Ingredients as projection on nutriTracker.Ingredients;
    entity IngredientInMeal as projection on nutriTracker.IngredientInMeal;

}