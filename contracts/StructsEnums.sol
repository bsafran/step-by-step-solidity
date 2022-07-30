// SPDX-License-Identifier: Unlicensed
pragma solidity ^0.8.2;

contract StructsEnums {

    enum Status {
        Taken,
        Preparing,
        Boxed,
        Shipped
    }

    struct Order {
        address customer;
        string zipCode;
        uint256[] products;
        Status status;
    }

    Order[] public orders;
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    function createOrder(string memory _zipCode, uint256[] memory _products) external returns(uint256){
        require(_products.length > 0, "No products");

        Order memory order;
        order.customer = msg.sender;
        order.zipCode = _zipCode;
        order.products = _products;
        order.status = Status.Taken;
        orders.push(order);

        // orders.push(
        //     Order({
        //         customer: msg.sender,
        //         zipCode: _zipCode,
        //         products: _products,
        //         status: Status.Taken
        //     })
        // );

        //orders.push(Order(msg.sender, _zipCode, _products, Status.Taken));

        return orders.length - 1;
    }

    function advanceOrder(uint256 _orderId) external {
        require(msg.sender == owner, "You're not authorized.");
        require(_orderId < orders.length, "Not a valid order id");

        Order storage order = orders[_orderId];
        require(order.status != Status.Shipped, "Order is already shipped.");

        if(order.status == Status.Taken) {
            order.status = Status.Preparing;
        } else if(order.status == Status.Preparing){
            order.status = Status.Boxed;
        } else if(order.status == Status.Boxed){
            order.status = Status.Shipped;
        }
    }

   function updateZip(uint256 _orderId, string memory _zip) external {
       require(_orderId <= orders.length, "Not a valid order id");
       require(orders[_orderId].customer == msg.sender, "You are not the owner of the order");

       orders[_orderId].zipCode = _zip;
   } 

    
}