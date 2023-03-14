pragma solidity ^0.8.0;

contract StudentMarks {
    struct Student {
        uint256 marks;
        bool exists;
    }
    
    mapping(string => Student) private students;

    function addStudent(string memory name, uint256 marks) public {
        students[name] = Student(marks, true);
    }

    function getMarks(string memory name) public view returns (uint256) {
        require(students[name].exists, "Student does not exist.");
        return students[name].marks;
    }
}
