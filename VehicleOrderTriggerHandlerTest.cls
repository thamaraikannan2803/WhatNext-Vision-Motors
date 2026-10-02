@IsTest
private class VehicleOrderTriggerHandlerTest {

    @IsTest
    static void testBeforeInsert() {

        Vehicle_Order__c order = new Vehicle_Order__c(
            Name = 'Test Order'
        );

        Test.startTest();
        insert order;
        Test.stopTest();

        Vehicle_Order__c result = [
            SELECT Order_Status__c, Order_Date__c
            FROM Vehicle_Order__c
            WHERE Id = :order.Id
        ];

        System.assertEquals('Pending', result.Order_Status__c);
        System.assertEquals(Date.today(), result.Order_Date__c);
    }
}
