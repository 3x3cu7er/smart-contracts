pragma solidity ^0.8.0;

contract IdentityManagement {
    // Struct to represent a user's identity
    struct Identity {
        address userAddress;
        string username;
        string email;
        // Additional identity attributes can be added here
    }

    // Mapping of user addresses to their identities
    mapping(address => Identity) public identities;

    // Event emitted when a new identity is registered
    event IdentityRegistered(address indexed userAddress, string username);

    // Function to register a new identity
    function registerIdentity(string memory _username, string memory _email) public {
        require(bytes(_username).length > 0, "Username cannot be empty");
        require(bytes(_email).length > 0, "Email cannot be empty");
        require(identities[msg.sender].userAddress == address(0), "Identity already registered");

        identities[msg.sender] = Identity(msg.sender, _username, _email);
        emit IdentityRegistered(msg.sender, _username);
    }

    // Function to get identity details by user address
    function getIdentity(address _userAddress) public view returns (string memory, string memory) {
        return (identities[_userAddress].username, identities[_userAddress].email);
    }

    // Function to update identity details
    function updateIdentity(string memory _username, string memory _email) public {
        require(bytes(_username).length > 0, "Username cannot be empty");
        require(bytes(_email).length > 0, "Email cannot be empty");
        require(identities[msg.sender].userAddress != address(0), "Identity not registered");

        identities[msg.sender].username = _username;
        identities[msg.sender].email = _email;
    }
}
