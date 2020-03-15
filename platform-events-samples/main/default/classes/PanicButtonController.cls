public without sharing class PanicButtonController {
    @AuraEnabled
    public static Boolean fireEvent(String message) {
        // Create an instance of the event and store it in the newsEvent variable
        Notification__e myEvent = new Notification__e(Message__c = message);
        // Call method to publish events
        Database.SaveResult sr = EventBus.publish(myEvent);
        // Inspect publishing result
        if (sr.isSuccess()) {
            System.debug('Successfully published event.');
        } else {
            for (Database.Error err : sr.getErrors()) {
                System.debug(
                    'Error returned: ' +
                    err.getStatusCode() +
                    ' - ' +
                    err.getMessage()
                );
            }
        }
        return true;
    }
}
