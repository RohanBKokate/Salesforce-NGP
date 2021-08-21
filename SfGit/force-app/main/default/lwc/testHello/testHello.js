import { LightningElement } from 'lwc';

export default class TestHello extends LightningElement {
    greeting="World";
    changeHandler(event)
    {
        this.greeting=event.target.value;
    }
}