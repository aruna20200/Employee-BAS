namespace my.employeedetails;

using {reusable.types as types} from './ReusableTypes';
using {
  cuid,
  managed
} from '@sap/cds/common';

@assert.unique: {
  email: [email],
  phone: [phone]
}

entity Employee : cuid, managed,types.PersonDetails{

  // fName           : String;
  // lName           : String;
  gender          : String;
  DOB             : Date;
  contractStarted : Date;
  email           : types.Email not null; //This Email has to follow the Format and should not be null
  phone           : types.phoneNumber not null;
  address         : Composition of Address; //<Association or Composition name>_<key name>/address_ID will be generated once we add the Association

}

entity Address {
  key ID       : UUID;
      city     : String not null;
      address  : String not null;
      pincode  : Integer not null;
      street   : String;
      landmark : String;


}

/**
 * Composition: Tight Coupling
 * Association: Loose
 * Employee
 * EmployeeAddress
 * EmployeeSalary
 * Department
 */


// employee.details.EmployeeDetails-Address.csv
// context EmployeeDetails {
//   entity Address : cuid, managed {
//     city     : String not null;
//     address  : String not null;
//     pincode  : Integer not null;
//     street   : String;
//     landmark : String;
//   }
// }
