using my.employeedetails as my from '../db/data-model';
@path: '/EmployeeSRV'


service Employeeservice {
     entity Employee as projection on my.Employee;

        entity Address as projection on my.Address;
    
}


