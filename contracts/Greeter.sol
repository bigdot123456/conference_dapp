pragma solidity ^0.4.4;

contract Greeter         
{
    address creator;     
    string greeting;     

    function Greeter(string _greeting) public   
    {
        creator = msg.sender;
        greeting = _greeting;
    }

    function greet() constant returns (string)          
    {
        return greeting;
    }

    function setGreeting(string _newgreeting) 
    {
        greeting = _newgreeting;
    }

     /**********
     Standard kill() function to recover funds 
     **********/

    function kill()
    { 
        if (msg.sender == creator)
            suicide(creator);  // kills this contract and sends remaining funds back to creator
    }

}
