using {Employeeservice} from './cat-service';

annotate Employeeservice.Designation with @(Capabilities: {
    InsertRestrictions: {
        $Type     : 'Capabilities.InsertRestrictionsType',
        Insertable: false
    },
    UpdateRestrictions: {
        $Type    : 'Capabilities.UpdateRestrictionsType',
        Updatable: false
    },
    DeleteRestrictions: {
        $Type    : 'Capabilities.DeleteRestrictionsType',
        Deletable: false
    },
    ReadRestrictions  : {
        $Type   : 'Capabilities.ReadRestrictionsType',
        Readable: true
    },
});