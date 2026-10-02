trigger VehicleOrderTrigger on Vehicle_Order__c (
    before insert,
    before update
) {
    if (Trigger.isBefore) {
        if (Trigger.isInsert) {
            VehicleOrderTriggerHandler.beforeInsert(Trigger.new);
        }

        if (Trigger.isUpdate) {
            VehicleOrderTriggerHandler.beforeUpdate(
                Trigger.new,
                Trigger.oldMap
            );
        }
    }
}
