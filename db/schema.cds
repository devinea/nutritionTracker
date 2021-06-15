namespace tm.nutriTracker;

using { cuid, managed } from '@sap/cds/common';

entity Meal : managed, cuid {
    energy:         Integer;
    protein:        Integer;
    carbs:          Integer;
    fats:           Integer;
    fiber:          Integer
}
