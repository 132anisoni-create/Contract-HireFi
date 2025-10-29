// SPDX-License-Identifier: MIT

//ma solidity ^0.8.20;

contract EmployeeRegistry {
    // Owner (admin) of the contract
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    // Only the owner can perform certain actions
    modifier onlyOwner() {
        require(msg.sender == owner, "Only owner can call this function");
        _;
    }

    // Structs for storing applicant and employee information
    struct Applicant {
        string name;
        string email;
        string skills;
        bool exists;
    }

    struct Employee {
        string name;
        string position;
        uint256 startDate;
        bool exists;
    }

    // Mappings to store records
    mapping(address => Applicant) public applicants;
    mapping(address => Employee) public employees;

    // Events for logging actions
    event ApplicantRegistered(address indexed applicant, string name);
    event ApplicantHired(address indexed applicant, string position);
    event EmployeeRemoved(address indexed employee);

    // Register as an applicant
    function registerApplicant(string memory _name, string memory _email, string memory _skills) public {
        require(!applicants[msg.sender].exists, "Already registered as applicant");
        applicants[msg.sender] = Applicant(_name, _email, _skills, true);
        emit ApplicantRegistered(msg.sender, _name);
    }

    // Owner hires an applicant (moves them to employees)
    function hireApplicant(address _applicantAddr, string memory _position) public onlyOwner {
        require(applicants[_applicantAddr].exists, "Applicant not found");
        require(!employees[_applicantAddr].exists, "Already an employee");

        employees[_applicantAddr] = Employee(
            applicants[_applicantAddr].name,
            _position,
            block.timestamp,
            true
        );

        delete applicants[_applicantAddr]; // Remove from applicants
        emit ApplicantHired(_applicantAddr, _position);
    }

    // Owner can remove an employee
    function removeEmployee(address _employeeAddr) public onlyOwner {
        require(employees[_employeeAddr].exists, "Employee not found");
        delete employees[_employeeAddr];
        emit EmployeeRemoved(_employeeAddr);
    }

    // View functions
    function getApplicant(address _addr) public view returns (string memory, string memory, string memory) {
        require(applicants[_addr].exists, "Applicant not found");
        Applicant memory a = applicants[_addr];
        return (a.name, a.email, a.skills);
    }

    function getEmployee(address _addr) public view returns (string memory, string memory, uint256) {
        require(employees[_addr].exists, "Employee not found");
        Employee memory e = employees[_addr];
        return (e.name, e.position, e.startDate);
    }
}

