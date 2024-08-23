sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'demotypeerror/demotypeerror/test/integration/FirstJourney',
		'demotypeerror/demotypeerror/test/integration/pages/PeopleList',
		'demotypeerror/demotypeerror/test/integration/pages/PeopleObjectPage',
		'demotypeerror/demotypeerror/test/integration/pages/BillsObjectPage'
    ],
    function(JourneyRunner, opaJourney, PeopleList, PeopleObjectPage, BillsObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('demotypeerror/demotypeerror') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onThePeopleList: PeopleList,
					onThePeopleObjectPage: PeopleObjectPage,
					onTheBillsObjectPage: BillsObjectPage
                }
            },
            opaJourney.run
        );
    }
);