import { LightningElement, track } from 'lwc';
import contactSearch from '@salesforce/apex/SearchContact.contactSearch';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';
export default class SearchContact extends LightningElement {
    @track contactsRecord;
    searchFirstname = '';
    serchLastname = '';

    searchFirstword(event) {
        this.searchFirstname = event.target.value;
        console.log('firstname', this.searchFirstname);
    }
    searchSecondword(event) {
        this.serchLastname = event.target.value;
    }
    handleSearchKeyword() {
        var parameterObject = {
            firstName: this.searchFirstname,
            lastName: this.serchLastname

        };
        console.log('json', parameterObject)
        contactSearch({
                response: JSON.stringify(parameterObject)
            })
            .then(result => {
                console.log('result', result)
                this.contactsRecord = result
                console.log('contactRecord', this.contactsRecord);
            })
            .catch(error => {
                const event = new ShowToastEvent({
                    title: 'Error',
                    variant: 'error',
                    message: error.body.message,
                });
                this.dispatchEvent(event);
                this.contactsRecord = null;
            });

    }
}