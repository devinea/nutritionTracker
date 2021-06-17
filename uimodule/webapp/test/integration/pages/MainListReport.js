sap.ui.define(['sap/fe/test/ListReport'], function(ListReport) {
    'use strict';

    var AdditionalCustomListReportDefinition = {
        actions: {},
        assertions: {}
    };

    return new ListReport(
        {
            appId: 'tm.nutritracker.uimodule',
            componentId: 'MealsList',
            entitySet: 'Meals'
        },
        AdditionalCustomListReportDefinition
    );
});