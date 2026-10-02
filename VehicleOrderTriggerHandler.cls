public with sharing class VehicleOrderTriggerHandler {

    public static void beforeInsert(List<Vehicle_Order__c> orders) {

        for (Vehicle_Order__c order : orders) {

            if (order.Order_Status__c == null) {
                order.Order_Status__c = 'Pending';
            }

            if (order.Order_Date__c == null) {
                order.Order_Date__c = Date.today();
            }
        }
    }
}
