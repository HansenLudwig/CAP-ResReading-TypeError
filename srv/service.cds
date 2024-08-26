using {com.dscgmbh.btp.type_error_demo as db} from '../db/schema';

service main_service {
    entity Bills  as projection on db.Bills;
    entity People as projection on db.People;
};
