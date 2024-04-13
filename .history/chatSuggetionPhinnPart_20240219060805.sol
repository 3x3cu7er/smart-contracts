pragma solidity ^0.8.0;

contract IdentityManagement {
    // Struct to represent a user's identity
    struct Identity {
        address userAddress;
        string username;
        string email;
        bool isVerified;
        mapping(address => bool) delegateApprovals; // Mapping of delegate addresses to approval status
        uint256 createdAt;
        uint256 updatedAt;
        // Additional identity attributes can be added here
    }

    // Mapping of user addresses to their identities
    mapping(address => Identity) public identities;

    // Event emitted when a new identity is registered
    event IdentityRegistered(address indexed userAddress, string username);

    // Event emitted when an identity is updated
    event IdentityUpdated(address indexed userAddress, string username);

    // Modifier to restrict access to certain functions
    modifier onlyRegistered() {
        require(identities[msg.sender].userAddress != address(0), "Identity not registered");
        _;
    }

    // Modifier to restrict access to identity update function
    modifier onlyOwner() {
        require(msg.sender == identities[msg.sender].userAddress, "Unauthorized");
        _;
    }

    // Function to register a new identity
    function registerIdentity(string memory _username, string memory _email) public {
        require(bytes(_username).length > 0, "Username cannot be empty");
        require(bytes(_email).length > 0, "Email cannot be empty");
        require(identities[msg.sender].userAddress == address(0), "Identity already registered");

        Identity memory newIdentity = Identity({
            userAddress: msg.sender,
            username: _username,
            email: _email,
            isVerified: false,
            delegateApprovals:msg.sender,
            createdAt: block.timestamp,
            updatedAt: block.timestamp
        });

        identities[msg.sender] = newIdentity;
        emit IdentityRegistered(msg.sender, _username);
    }

    // Function to update identity details
    function updateIdentity(string memory _username, string memory _email) public onlyRegistered onlyOwner {
        require(bytes(_username).length > 0, "Username cannot be empty");
        require(bytes(_email).length > 0, "Email cannot be empty");

        identities[msg.sender].username = _username;
        identities[msg.sender].email = _email;
        identities[msg.sender].updatedAt = block.timestamp;

        emit IdentityUpdated(msg.sender, _username);
    }

    // Function to verify identity (only callable by contract owner)
    function verifyIdentity(address _userAddress) public onlyOwner {
        identities[_userAddress].isVerified = true;
    }

    // Function to delegate approval to another address
    function approveDelegate(address _delegate) public onlyRegistered onlyOwner {
        identities[msg.sender].delegateApprovals[_delegate] = true;
    }

    // Function to revoke delegate approval
    function revokeDelegateApproval(address _delegate) public onlyRegistered onlyOwner {
        identities[msg.sender].delegateApprovals[_delegate] = false;
    }

    // Function to check delegate approval status
    function checkDelegateApproval(address _userAddress, address _delegate) public view returns (bool) {
        return identities[_userAddress].delegateApprovals[_delegate];
    }

    // Function to get identity details by user address
    function getIdentity(address _userAddress) public view returns (
        string memory username,
        string memory email,
        bool isVerified,
        uint256 createdAt,
        uint256 updatedAt
    ) {
        Identity memory identity = identities[_userAddress];
        return (
            identity.username,
            identity.email,
            identity.isVerified,
            identity.createdAt,
            identity.updatedAt
        );
    }
}
