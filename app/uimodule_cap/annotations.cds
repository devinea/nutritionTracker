using MainService as service from '../../srv/main-service';


annotate service.Meals with @(UI : {
 LineItem                             : [
    {
        $Type                     : 'UI.DataField',
        Value                     : name,
    },
    {
        $Type                     : 'UI.DataField',
        Value                     : dateEaten,
    }
],
    SelectionFields                      : [
    createdBy,
    dateEaten,
    name
    ],
     //	Information for the header area of an entity representation
    HeaderInfo                           : {
        TypeName       : '{i18n>Meal}',
        TypeNamePlural : '{i18n>Meals}',
        TypeImageUrl   : 'sap-icon://alert',
        Title          : {Value : name }
    },
    //Facets for additional object header information (shown in the Object Page header)
    HeaderFacets                         : [{
        $Type  : 'UI.ReferenceFacet',
        Target : '@UI.FieldGroup#HeaderGeneralInformation'
    },
        ],
        //Group of fields with an optional label
    //https://github.com/SAP/odata-vocabularies/blob/master/vocabularies/UI.md#FieldGroupType
    FieldGroup #HeaderGeneralInformation : {Data : [
    {Value : name},
    {Value : proteins}
    ]},
    FieldGroup #MealDetails          : {Data : [
    {
        $Type : 'UI.DataField',
        Value : name
    },
    {
        $Type : 'UI.DataField',
        Value : carbs
    },
    ]},
    //Object Page content area is organized by facets referring to e.g. fieldgroup and lineItem annotations
    //https://github.com/SAP/odata-vocabularies/blob/master/vocabularies/UI.md#Facet
    Facets                               : [
    {
        $Type  : 'UI.CollectionFacet',
        Label  : '{i18n>MealOverview}',
        ID     : 'IncidentOverviewFacet',
        Facets : [
            // {
            //     $Type  : 'UI.ReferenceFacet',
            //     Label  : '{i18n>GeneralInformation}',
            //     ID     : 'GeneralInformationFacet',
            //     Target : '@UI.FieldGroup#GeneralInformation'
            // },
            {
                $Type  : 'UI.ReferenceFacet',
                Label  : '{i18n>IncidentDetails}',
                ID     : 'IncidentDetailsFacet',
                Target : '@UI.FieldGroup#MealDetails'
            }
        ]
    },
    ]
});