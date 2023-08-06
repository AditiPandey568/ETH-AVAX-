// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract HospitalManagement {
    struct Patient {
        uint id;
        string name;
        bool admitted;
    }
    
    mapping(uint => Patient) public patients;
    uint public patientCount;
    
    
    function admitPatient(uint _id, string memory _name) public {
        // require statement
        require(!patients[_id].admitted, "Patient is already admitted");
        
        // assert statement
        assert(bytes(_name).length > 0);
        
        patients[_id] = Patient(_id, _name, true);
        patientCount++;
    }
    
    function dischargePatient(uint _id) public {
        // require statement
        require(patients[_id].admitted, "Patient is not admitted");
        
        patients[_id].admitted = false;
        patientCount--;
    }
    
    function updatePatientName(uint _id, string memory _name) public {
        // revert statement
        if (bytes(_name).length == 0) {
            revert("Name cannot be empty");
        }
        
        patients[_id].name = _name;
    }
}
