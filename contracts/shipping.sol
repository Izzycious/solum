// SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.4.25 < 0.9.0;

contract shipping {
    enum shippingStatus { Pending, Shipped, Delivered }

    // predefined value for shipping

    shippingStatus private status;

    // save shippingstatus in a variable status

    event LogNewAlert(string description);
    // event to launch when arrived

    constructor() {
        status = shippingStatus.Pending;
    //initializes the contract state
    }

    function Shipped() public {
        status = shippingStatus.Shipped;
        emit LogNewAlert("Your packages just shipped out");
    }
    //function shipped out

    function Delivered() public {
        status = shippingStatus.Delivered;
        emit LogNewAlert("Your package has been delivered");
    }
    //function delivered

    function getStatus(shippingStatus _status) internal pure returns (string memory) {
        if (shippingStatus.Pending == _status) return "Pending";
        if (shippingStatus.Shipped == _status) return "Shipped";
        if (shippingStatus.Delivered == _status) return "Delivered";
    }
    //function to get status of product 

    function Status() public view returns (string memory) {
        shippingStatus _status = status;
        return getStatus(_status);
    }
    //get status of shhipped item
}