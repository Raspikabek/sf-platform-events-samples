// Create an instance of the event and store it in the newsEvent variable
Notification__e myEvent = new Notification__e(Message__c = 'Hello world Lauren!!');
// Call method to publish events
Database.SaveResult sr = EventBus.publish(myEvent);
// Inspect publishing result 
if (sr.isSuccess()) {
    System.debug('Successfully published event.');
} else {
    for (Database.Error err : sr.getErrors()) {
        System.debug('Error returned: ' +
                     err.getStatusCode() +
                     ' - ' +
                     err.getMessage());
    }
}