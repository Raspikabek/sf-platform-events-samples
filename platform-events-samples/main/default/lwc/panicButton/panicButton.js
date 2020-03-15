import { LightningElement, wire } from "lwc";
import fireEvent from "@salesforce/apex/PanicButtonController.fireEvent";

export default class PanicButton extends LightningElement {
    handlerSuccessButton() {
        fireEvent({ message: "All success!" })
            .then((result) => {
                // do something
            })
            .catch((error) => {
                console.log(error);
            });
    }

    handleWarningButton() {
        fireEvent({ message: "Watch out! Something weird is happening!" })
            .then((result) => {
                // do something
            })
            .catch((error) => {
                console.log(error);
            });
    }

    handlerErrorButton() {
        fireEvent({ message: "Wifi network is down again!" })
            .then((result) => {
                // do something
            })
            .catch((error) => {
                console.log(error);
            });
    }
}
