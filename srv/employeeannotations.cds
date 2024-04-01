using {Employeeservice} from './cat-service';


annotate Employeeservice.Employee with {
    fName  @title: '{i18n>FName}';
    lName  @title: '{i18n>LName}';
    DOB    @title: '{i18n>DOB}';
    email  @title: '{i18n>Email}';
    gender @title: '{i18n>Gender}';
};