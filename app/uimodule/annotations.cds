using MainService as service from '../../srv/main-service';

annotate service.Meals with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Value : name,
            Label : 'Name',
            ![@UI.Importance] : #High,
        },
        {
            $Type : 'UI.DataField',
            Value : dateEaten,
            Label : 'Date',
            ![@UI.Importance] : #High,
        },
        {
            $Type : 'UI.DataField',
            Value : energy,
            Label : 'Energy',
            ![@UI.Importance] : #High,
        },
        {
            $Type : 'UI.DataField',
            Value : proteins,
            Label : 'Proteins',
            ![@UI.Importance] : #High,
        },
        {
            $Type : 'UI.DataField',
            Value : fats,
            Label : 'Fats',
            ![@UI.Importance] : #High,
        },
        {
            $Type : 'UI.DataField',
            Value : carbs,
            Label : 'Carbs',
            ![@UI.Importance] : #High,
        },
        {
            $Type : 'UI.DataField',
            Value : fibers,
            Label : 'Fibers',
            ![@UI.Importance] : #High,
        },
    ]
);
