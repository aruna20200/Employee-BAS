using my.employeedetails as my from '../db/data-model';

@path: '/EmployeeSRV'


service Employeeservice {
      @restrict: [{
        grant: '*',
        to   : 'Admin'
    }]
    entity Employee    as projection on my.Employee;
    entity Address     as projection on my.Address;
    entity Salary      as projection on my.Salary;
    entity Department  as projection on my.Department;
    entity Designation as projection on my.Designation;

}
