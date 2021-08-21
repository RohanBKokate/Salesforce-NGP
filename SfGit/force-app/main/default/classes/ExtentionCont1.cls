public class ExtentionCont1 {
    
    private final account acc;

    public ExtentionCont1(ApexPages.StandardController stdController)
    {
        this.acc= (Account)stdController.getRecord();
       
    }
public String getGretting()
{
    return 'Hello World'+acc.name+'  '+acc.Id;
    
}



}