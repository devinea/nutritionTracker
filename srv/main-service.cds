using { tm.nutriTracker as nutriTracker } from '../db/schema';

service MainService {
    entity Meal as projection on nutriTracker.Meal;

}