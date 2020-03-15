trigger NotificationsTrigger on Notification__e(after insert) {
    // Do whatever you need each time a Notification__e platform event is called. I.E. here we create an Account
    List<Account> accounts = new List<Account>();

    for (Notification__e n : Trigger.new) {
        accounts.add(
            new Account(
                Name = n.Message__c,
                Description = 'Account from Platform Event'
            )
        );
    }

    insert accounts;
}
