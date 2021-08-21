import { LightningElement } from 'lwc';

export default class HelloTest extends LightningElement {
    greeting="World";
    changeHandler(event)
    {
        this.greeting=event.target.value;
    }
}