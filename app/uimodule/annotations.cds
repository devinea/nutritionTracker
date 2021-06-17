using MainService as service from '../../srv/main-service';

annotate service.Meals with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Value : name,
            ![@UI.Importance] : #High,
        },
        {
            $Type : 'UI.DataField',
            Value : dateEaten,
            ![@UI.Importance] : #High,
        },
        {
            $Type : 'UI.DataField',
            Value : energy,
            ![@UI.Importance] : #High,
        },
        {
            $Type : 'UI.DataField',
            Value : proteins,
            ![@UI.Importance] : #High,
        },
        {
            $Type : 'UI.DataField',
            Value : fats,
            ![@UI.Importance] : #High,
        },
        {
            $Type : 'UI.DataField',
            Value : carbs,
            ![@UI.Importance] : #High,
        },
        {
            $Type : 'UI.DataField',
            Value : fibers,
            ![@UI.Importance] : #High,
        },
    ]
);
