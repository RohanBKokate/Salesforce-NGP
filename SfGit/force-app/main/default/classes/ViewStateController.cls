public with sharing class ViewStateController {
    public integer a {get; set;}
    private integer b {get;set;}
    Transient integer c {get;set;}
    private integer d {get;set;}
    public Opportunity opp {get;set;}
    
    public ViewStateController()
    {
        a=20;
        b=30;
        c=40;
        opp= new Opportunity(name='Test', StageName='Test');
    }
    
    public void changeData()
    {
        if(a==20)
        {
            a=2;
        }
        if(b==30)
        {
            b=3;
        }
        if(c==40)
        {
            d=4;
        }
        else
        {
            d=40;
        }
    }

}