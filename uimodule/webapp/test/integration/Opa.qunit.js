sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'tm/nutritracker/uimodule/test/integration/pages/MainListReport' ,
        'tm/nutritracker/uimodule/test/integration/pages/MainObjectPage',
        'tm/nutritracker/uimodule/test/integration/OpaJourney'
    ],
    function(JourneyRunner, MainListReport, MainObjectPage, Journey) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('tm/nutritracker/uimodule') + '/index.html'
        });

        
        JourneyRunner.run(
            {
                pages: { onTheMainPage: MainListReport, onTheDetailPage: MainObjectPage }
            },
            Journey.run
        );
        
    }
);