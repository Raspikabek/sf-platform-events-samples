# Platform Event Samples

## How to Install:

### New brand Scratch Org

Create a new Scratch Org:

```
sfdx force:org:create -v YOUR_DEVHUB_ALIAS -a platform-events-sample -s -f config/project-scratch-def.json
```

Push the package to the new Scratch Org:

```
sfdx force:org:push
```

### Your own Sandbox or Developer Edition org

Deploy the code into your target org with Source commands:

```
sfdx force:source:deploy -p platform-event-samples
```

## Give you access to the Sample App

Assign to yourself the Permission Set: `PlatformEventSamples`

```
sfdx force:user:permset:assign -n PlatformEventSamples
```

## How the App Works?

-   Any post in Chatter with the topic `#BearAlert` will fire the platform event (you will see the message stored in the Notifications Console app in the utils bar)
-   Press any of the panic buttons (this is a LWC calling an Apex Controller)
-   Any Platform Event will create a sample Account with the Platform Event message content as Name
-   You can use the AnonymousApex script in `scripts/apex/sampleNotification.apex`, running that script from VsCode or the Developer Console.
