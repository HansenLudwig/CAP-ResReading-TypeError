using main_service as service from '../../srv/service';

annotate service.People with @(UI.LineItem: [
    {
                $Type : 'UI.DataField',
                Label : 'ID',
                Value : ID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'name',
                Value : name,
            },
]);


annotate service.People with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'ID',
                Value : ID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'name',
                Value : name,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
                {
            $Type : 'UI.ReferenceFacet',
            Target: 'bills/@UI.PresentationVariant#PeoplesBill',
        },
    ],
);


annotate service.Bills with @UI.PresentationVariant #PeoplesBill: {
    SortOrder     : [{Property: createdAt, }, ],
    GroupBy       : [],
    Visualizations: ['@UI.LineItem#PeoplesBill', ]
};

annotate service.Bills with @(UI.LineItem #PeoplesBill:[
    {
        $Type: 'UI.DataField',
        Value: ID,
    },
    {
        $Type: 'UI.DataField',
        Value: amount,
    },
    {
        $Type: 'UI.DataField',
        Value: descr,
    }
]);
