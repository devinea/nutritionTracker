/*global sap*/

sap.ui.define(["tm/nutriTracker/myUI5App/controller/BaseController",],
function (Controller) {
    "use strict";

    return Controller.extend("tm.nutriTracker.myUI5App.controller.MainView", {

        onInit() {
            this.getRouter().getRoute("NutriDetailView").attachPatternMatched(this._onRouteMatched, this)
        },

        _onRouteMatched(oEvent){
            //sets the binding context with a double expand => /Meals(...)?$expand=ingredient($expand=ingredient)
            this.getView().byId('details').bindElement(
                {path:"/Meals(650cc22b-06f8-4c67-9847-18131f259a77)", 
                    parameters: {
                        $expand: {"ingredient": {'$expand': 'ingredient'}}
                    }
                })

            
        }
    });
});
