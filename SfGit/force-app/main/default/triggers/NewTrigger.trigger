trigger NewTrigger on Account (before insert) {
    system.debug('Hello World');

}