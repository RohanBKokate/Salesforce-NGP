public with sharing class StudentController1 {
    
    Public String student{get;set;}
Public List<String> studentList {get;set;}


public StudentController1()
{
    studentList = new List<String>();
    studentList.add('a');
    studentList.add('b');
    student='abc';
}

public void fetchStudent()
{
    student='pqr';
    studentList.add('c');
    
}


}