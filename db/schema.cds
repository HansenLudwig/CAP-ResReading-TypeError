using {managed} from '@sap/cds/common';

namespace com.dscgmbh.btp.type_error_demo;

entity Bills : managed {
    key ID     : Integer;
        payer  : Association to one People;
        descr  : localized String(111);
        amount : Decimal;
};

entity People : managed {
    key ID    : Integer;
        name  : String(111);
        bills : Association to many Bills
                    on bills.payer = $self;
};
